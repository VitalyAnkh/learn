#ifndef PPC_MOOC_EVENT_FD_H
#define PPC_MOOC_EVENT_FD_H

#include <string>
#include <system_error>
#include <unistd.h>
#include <variant>

namespace ppc::detail {
/// Structure used for reading from the file descriptors provided by perf_event_open
struct read_format {
    long long value;        /* The value of the event */
    long long time_enabled; /* if PERF_FORMAT_TOTAL_TIME_ENABLED */
    long long time_running; /* if PERF_FORMAT_TOTAL_TIME_RUNNING */
};

static_assert(std::is_standard_layout_v<read_format>, "Something went wrong, layout of read_format is not guaranteed to be what the kernel will supply.");

class EventFileDescriptor {
  public:
    explicit EventFileDescriptor(int d = -1, bool leader = false) : m_FD(d), m_Leader(leader){};

    ~EventFileDescriptor() noexcept { close(); }

    // NOLINTNEXTLINE(readability-make-member-function-const)
    [[nodiscard]] int get() { return m_FD; }
    [[nodiscard]] bool is_leader() const { return m_Leader; }
    [[nodiscard]] bool is_valid() const noexcept { return m_FD != -1; }

    // move operations
    EventFileDescriptor(EventFileDescriptor &&other) noexcept : m_FD(other.m_FD), m_Leader(other.m_Leader) {
        other.m_FD = {-1};
    }

    EventFileDescriptor &operator=(EventFileDescriptor &&other) noexcept {
        close();
        m_FD = other.m_FD;
        m_Leader = other.m_Leader;
        other.m_FD = {-1};
        return *this;
    }

    // disallow copying
    EventFileDescriptor &operator=(const EventFileDescriptor &other) = delete;
    EventFileDescriptor(const EventFileDescriptor &other) = delete;

    struct NotCollected {};
    using CounterValue = std::variant<long long, read_format, NotCollected>;

    /// Reads the value of the performance counter. If the file descriptor is invalid, this will fail by throwing
    /// a `logic_error`. If the reading call itself failed, a `system_error` is thrown.
    /// For the leader, the return value will contain the entire `read_format` struct, whereas all other events will
    /// just return the 64-bit integer of the counter.
    CounterValue read_value() {
        read_format buf; // NOLINT
        if (!is_valid()) {
            throw std::logic_error("Trying to read from an invalid file descriptor.");
        }
        long expect = is_leader() ? 24 : 8;
        long error = ::read(get(), &buf, expect);

        if (error == expect) {
            // successful read
            if (is_leader()) {
                return buf;
            } else {
                return buf.value;
            }
        } else if (error == 0) {
            // eof. This happens if the counter could not be placed on the CPU
            return NotCollected{};
        } else if (error < 0) {
            throw std::system_error(errno, std::generic_category());
        } else {
            throw std::runtime_error("Could not read the expected number of bytes");
        }
    }

  private:
    int m_FD;
    bool m_Leader;

    /// closes the associated file descriptor. If the FileDescriptor is not set, this function does nothing.
    void close() noexcept {
        if (is_valid()) {
            ::close(get());
        }
    }
};

} // namespace ppc::detail

#endif // PPC_MOOC_EVENT_FD_H