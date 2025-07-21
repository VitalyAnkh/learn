#ifndef ERROR_H
#define ERROR_H

#include <iostream>
#include <string>

namespace ppc {
[[noreturn]] inline void error(const std::string &msg);
[[noreturn]] inline void error(const char *filename, const std::string &msg);
} // namespace ppc

[[noreturn]] void ppc::error(const std::string &msg) {
    std::cerr << msg;
    if (!msg.empty() && msg.back() != '\n') {
        std::cerr << '\n';
    }
    std::cerr << std::flush;
    std::exit(EXIT_FAILURE);
}

[[noreturn]] void ppc::error(const char *filename, const std::string &msg) {
    error(std::string(filename) + ": " + msg);
}

#endif
