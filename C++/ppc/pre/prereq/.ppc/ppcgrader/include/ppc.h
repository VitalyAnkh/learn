#ifndef PPC_PPC_H
#define PPC_PPC_H

#include <algorithm>
#include <cassert>
#include <chrono>
#include <cstdint>
#include <cstdlib>
#include <cstring>
#include <fstream>
#include <iostream>
#include <limits>
#include <memory>
#include <optional>
#include <random>
#include <sstream>
#include <sys/resource.h>
#include <sys/time.h>
#include <type_traits>
#include <unistd.h>
#ifdef __NVCC__
#include <cuda_runtime.h>
#endif

#include "perf.h"

// utility macros used in the testers
#define CHECK_READ(x)     \
    do {                  \
        if (!(x)) {       \
            std::exit(1); \
        }                 \
    } while (false)

#define CHECK_END(x)      \
    do {                  \
        std::string _tmp; \
        if (x >> _tmp) {  \
            std::exit(1); \
        }                 \
    } while (false)

#ifdef __clang__
typedef long double pfloat;
#else
typedef __float128 pfloat;
#endif

namespace ppc {
class timer {
  public:
    using time_point = decltype(std::chrono::high_resolution_clock::now());

    timer() {
        start = std::chrono::high_resolution_clock::now();
    }

    void stop() {
        end = std::chrono::high_resolution_clock::now();
    }

    double seconds() const {
        return (end - start).count() / double(1E9);
    }

  private:
    time_point start;
    time_point end;
};

class random {
  public:
    random() {}
    random(int seed) {
        rng = std::mt19937(seed);
    }
    float get_float() {
        static_assert(std::numeric_limits<float>::radix == 2, "Floating point numbers must be in radix 2");
        static_assert(std::numeric_limits<float>::digits == 24, "Floating point numbers exactly 24 bits in mantissa");
        uint32_t bits = rng() >> (32 - std::numeric_limits<float>::digits);
        return float(bits) * (1.f / 16777216.f /* 2^24 */);
    }

    double get_double() {
        static_assert(std::numeric_limits<double>::radix == 2, "Floating point numbers must be in radix 2");
        static_assert(std::numeric_limits<double>::digits == 53, "Double-precision floating point numbers exactly 53 bits in mantissa");
        uint64_t bits = get_uint64(0, std::numeric_limits<uint64_t>::max()) >> (64 - std::numeric_limits<double>::digits);
        return double(bits) * (1. / 9007199254740992. /* 2^53 */);
    }

    float get_float(float a, float b) {
        return a + get_float() * (b - a);
    }

    double get_double(double a, double b) {
        return a + get_double() * (b - a);
    }

    float get_float_normal() {
        if (float_normal_available) {
            float_normal_available = false;
            return next_float_normal;
        }
        float u1 = get_float();
        float u2 = get_float();
        float r = sqrtf(-2. * logf(u1));
        if (!std::isfinite(r))
            r = 6; // ~sqrt(-2*log(1/2^24))
        next_float_normal = r * sinf(2 * M_PI * u2);
        float_normal_available = true;
        return r * cosf(2. * M_PI * u2);
    }

    double get_double_normal() {
        if (double_normal_available) {
            double_normal_available = false;
            return next_double_normal;
        }
        double u1 = get_double();
        double u2 = get_double();
        double r = sqrt(-2. * log(u1));
        if (!std::isfinite(r))
            r = 9; // ~sqrt(-2*log(1/2^53))
        next_double_normal = r * sin(2 * M_PI * u2);
        double_normal_available = true;
        return r * cos(2. * M_PI * u2);
    }

    uint64_t get_uint64(uint64_t a, uint64_t b) {
        assert(a <= b);
        if (a == 0 && b == std::numeric_limits<uint64_t>::max()) {
            return ((uint64_t)rng() << 32) | (uint64_t)rng();
        }

        uint64_t length = b - a + 1;
        while (true) {
            uint64_t bits = ((uint64_t)rng() << 32) | (uint64_t)rng();
            uint64_t n = bits / length;
            uint64_t begin = n * length;

            if (begin <= begin + (length - 1)) {
                return a + (bits % length);
            }
        }
    }

    int64_t get_int64(int64_t a, int64_t b) {
        assert(a <= b);
        // Convert to unsigned values and offset them such that their order is preserved.
        const uint64_t ua = a;
        const uint64_t ub = b;
        constexpr uint64_t offset = uint64_t(std::numeric_limits<int64_t>::max()) + 1;
        // Check that the offset is correct
        static_assert(uint64_t(std::numeric_limits<int64_t>::min()) + offset < uint64_t(std::numeric_limits<int64_t>::max()) + offset);
        const uint64_t c = get_uint64(ua + offset, ub + offset);
        const int64_t res = c - offset;
        assert(a <= res);
        assert(res <= b);
        return res;
    }

    uint32_t get_uint32(uint32_t a, uint32_t b) {
        return get_uint64(a, b);
    }

    int32_t get_int32(int32_t a, int32_t b) {
        return get_int64(a, b);
    }

  private:
    std::mt19937 rng;
    double next_double_normal;
    double next_float_normal;
    bool double_normal_available = false;
    bool float_normal_available = false;
};

class fdostreambuf : public std::basic_streambuf<char> {
  public:
    fdostreambuf(int fd) {
        file = fdopen(fd, "w");
    }

    ~fdostreambuf() {
        fclose(file);
        file = nullptr;
    }

  protected:
    virtual std::streamsize xsputn(const char_type *s, std::streamsize count) {
        return fwrite(s, 1, count, file);
    }
    virtual int_type overflow(int_type ch) {
        if (!std::char_traits<char>::eq_int_type(ch, std::char_traits<char>::eof())) {
            char c = ch;
            assert(fwrite(&c, 1, 1, file) == 1);
        }
        return ch;
    }

  private:
    std::FILE *file;
};

class fdostream : public std::basic_ostream<char> {
  public:
    fdostream(std::unique_ptr<fdostreambuf> buf) : std::basic_ostream<char>(buf.get()), buf(std::move(buf)) {
    }
    fdostream(int fd) : fdostream(std::make_unique<fdostreambuf>(fd)) {
    }

  private:
    std::unique_ptr<fdostreambuf> buf;
};

inline std::ostream &operator<<(std::ostream &out, const ppc::timer &timer) {
    std::ios_base::fmtflags oldf = out.flags(std::ios::right | std::ios::fixed);
    std::streamsize oldp = out.precision(3);
    out << timer.seconds();
    out.flags(oldf);
    out.precision(oldp);
    out.copyfmt(std::ios(NULL));
    return out;
}

template <typename T>
inline void print_matrix(int ny, int nx, T *data, std::unique_ptr<ppc::fdostream> &stream) {
    // https://stackoverflow.com/a/25942843
    std::ios old_format(nullptr);
    old_format.copyfmt(*stream);

    if constexpr (std::is_floating_point_v<T>) {
        *stream << std::scientific;
    }

    *stream << "[";
    for (int i = 0; i < ny; ++i) {
        for (int j = 0; j < nx; ++j) {
            // The plus operator ensures that chars are also printed as numbers
            *stream << " " << +data[j + i * nx];
        }
        if (i != ny - 1) {
            *stream << ";";
        }
    }

    *stream << " ]";
    stream->copyfmt(old_format);
}

#ifdef __NVCC__
inline void setup_cuda_device() {
    cudaError_t err = cudaFree(0); // Documentation promises a no-op
    if (err != cudaSuccess) {
        std::cerr << "Failed to setup cuda device:" << cudaGetErrorString(err) << std::endl;
        std::exit(EXIT_FAILURE);
    }
}

inline void reset_cuda_device() {
    cudaError_t err = cudaDeviceReset();
    if (err != cudaSuccess) {
        std::cerr << "Failed to reset cuda device:" << cudaGetErrorString(err) << std::endl;
        std::exit(EXIT_FAILURE);
    }
}
inline void cuda_check(cudaError_t err, const char *file, int line, const char *message) {
    if (err != cudaSuccess) {
        std::cerr << file << ":" << line << ":\n"
                  << message << ": "
                  << cudaGetErrorString(err) << std::endl;
        std::exit(EXIT_FAILURE);
    }
}
#define PPC_CUDA_CHECK(status, message) ppc::cuda_check(status, __FILE__, __LINE__, message)
#else
inline void setup_cuda_device() {
    // Nothing to do without cuda
}

inline void reset_cuda_device() {
    // Nothing to do without cuda
}
#define PPC_CUDA_CHECK(status, message)
#endif
} // namespace ppc

#endif // PPC_H
