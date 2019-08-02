//
// Created by will on 02.08.19.
//

#ifndef BREAKOUT_LOGGER_H
#define BREAKOUT_LOGGER_H

#include <string>

namespace logger {
    void info(std::string message);
    void warn(std::string message);
    void error(std::string message);
}


#endif //BREAKOUT_LOGGER_H
