# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/will/clion-2019.1.4/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/will/clion-2019.1.4/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/will/CLionProjects/breakout

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/will/CLionProjects/breakout/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/breakout.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/breakout.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/breakout.dir/flags.make

CMakeFiles/breakout.dir/src/main.cpp.o: CMakeFiles/breakout.dir/flags.make
CMakeFiles/breakout.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/will/CLionProjects/breakout/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/breakout.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/breakout.dir/src/main.cpp.o -c /home/will/CLionProjects/breakout/src/main.cpp

CMakeFiles/breakout.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/breakout.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/will/CLionProjects/breakout/src/main.cpp > CMakeFiles/breakout.dir/src/main.cpp.i

CMakeFiles/breakout.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/breakout.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/will/CLionProjects/breakout/src/main.cpp -o CMakeFiles/breakout.dir/src/main.cpp.s

CMakeFiles/breakout.dir/src/config/Config.cpp.o: CMakeFiles/breakout.dir/flags.make
CMakeFiles/breakout.dir/src/config/Config.cpp.o: ../src/config/Config.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/will/CLionProjects/breakout/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/breakout.dir/src/config/Config.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/breakout.dir/src/config/Config.cpp.o -c /home/will/CLionProjects/breakout/src/config/Config.cpp

CMakeFiles/breakout.dir/src/config/Config.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/breakout.dir/src/config/Config.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/will/CLionProjects/breakout/src/config/Config.cpp > CMakeFiles/breakout.dir/src/config/Config.cpp.i

CMakeFiles/breakout.dir/src/config/Config.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/breakout.dir/src/config/Config.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/will/CLionProjects/breakout/src/config/Config.cpp -o CMakeFiles/breakout.dir/src/config/Config.cpp.s

CMakeFiles/breakout.dir/src/logger/logger.cpp.o: CMakeFiles/breakout.dir/flags.make
CMakeFiles/breakout.dir/src/logger/logger.cpp.o: ../src/logger/logger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/will/CLionProjects/breakout/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/breakout.dir/src/logger/logger.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/breakout.dir/src/logger/logger.cpp.o -c /home/will/CLionProjects/breakout/src/logger/logger.cpp

CMakeFiles/breakout.dir/src/logger/logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/breakout.dir/src/logger/logger.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/will/CLionProjects/breakout/src/logger/logger.cpp > CMakeFiles/breakout.dir/src/logger/logger.cpp.i

CMakeFiles/breakout.dir/src/logger/logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/breakout.dir/src/logger/logger.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/will/CLionProjects/breakout/src/logger/logger.cpp -o CMakeFiles/breakout.dir/src/logger/logger.cpp.s

# Object files for target breakout
breakout_OBJECTS = \
"CMakeFiles/breakout.dir/src/main.cpp.o" \
"CMakeFiles/breakout.dir/src/config/Config.cpp.o" \
"CMakeFiles/breakout.dir/src/logger/logger.cpp.o"

# External object files for target breakout
breakout_EXTERNAL_OBJECTS =

breakout: CMakeFiles/breakout.dir/src/main.cpp.o
breakout: CMakeFiles/breakout.dir/src/config/Config.cpp.o
breakout: CMakeFiles/breakout.dir/src/logger/logger.cpp.o
breakout: CMakeFiles/breakout.dir/build.make
breakout: CMakeFiles/breakout.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/will/CLionProjects/breakout/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable breakout"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/breakout.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/breakout.dir/build: breakout

.PHONY : CMakeFiles/breakout.dir/build

CMakeFiles/breakout.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/breakout.dir/cmake_clean.cmake
.PHONY : CMakeFiles/breakout.dir/clean

CMakeFiles/breakout.dir/depend:
	cd /home/will/CLionProjects/breakout/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/will/CLionProjects/breakout /home/will/CLionProjects/breakout /home/will/CLionProjects/breakout/cmake-build-debug /home/will/CLionProjects/breakout/cmake-build-debug /home/will/CLionProjects/breakout/cmake-build-debug/CMakeFiles/breakout.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/breakout.dir/depend
