#include <iostream>

#include "logger.h"

namespace logger {
    void info(const std::string message) {
        std::cout << "[INFO] " << message << std::endl;
    }

    void warn(const std::string message) {
        std::cout << "[WARN] " << message << std::endl;
    }

    void error(const std::string message) {
        std::cerr << "[ERROR] " << message << std::endl;
    }
}