cmake_minimum_required(VERSION 3.14)
project(breakout)

set(CMAKE_CXX_STANDARD 17)

add_executable(breakout src/main.cpp src/config/Config.h src/config/Config.cpp src/logger/logger.cpp src/logger/logger.h)

target_link_libraries(breakout  "-lsfml-graphics -lsfml-window -lsfml-system -lpthread -lX11")