# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /tmp/tmp.BCTwdOK21V

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/tmp.BCTwdOK21V/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/cetty.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/cetty.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cetty.dir/flags.make

CMakeFiles/cetty.dir/main.cpp.o: CMakeFiles/cetty.dir/flags.make
CMakeFiles/cetty.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.BCTwdOK21V/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cetty.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cetty.dir/main.cpp.o -c /tmp/tmp.BCTwdOK21V/main.cpp

CMakeFiles/cetty.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cetty.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.BCTwdOK21V/main.cpp > CMakeFiles/cetty.dir/main.cpp.i

CMakeFiles/cetty.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cetty.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.BCTwdOK21V/main.cpp -o CMakeFiles/cetty.dir/main.cpp.s

CMakeFiles/cetty.dir/src/EventLoop.cpp.o: CMakeFiles/cetty.dir/flags.make
CMakeFiles/cetty.dir/src/EventLoop.cpp.o: ../src/EventLoop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.BCTwdOK21V/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/cetty.dir/src/EventLoop.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cetty.dir/src/EventLoop.cpp.o -c /tmp/tmp.BCTwdOK21V/src/EventLoop.cpp

CMakeFiles/cetty.dir/src/EventLoop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cetty.dir/src/EventLoop.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.BCTwdOK21V/src/EventLoop.cpp > CMakeFiles/cetty.dir/src/EventLoop.cpp.i

CMakeFiles/cetty.dir/src/EventLoop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cetty.dir/src/EventLoop.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.BCTwdOK21V/src/EventLoop.cpp -o CMakeFiles/cetty.dir/src/EventLoop.cpp.s

CMakeFiles/cetty.dir/src/Poller.cpp.o: CMakeFiles/cetty.dir/flags.make
CMakeFiles/cetty.dir/src/Poller.cpp.o: ../src/Poller.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.BCTwdOK21V/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/cetty.dir/src/Poller.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cetty.dir/src/Poller.cpp.o -c /tmp/tmp.BCTwdOK21V/src/Poller.cpp

CMakeFiles/cetty.dir/src/Poller.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cetty.dir/src/Poller.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.BCTwdOK21V/src/Poller.cpp > CMakeFiles/cetty.dir/src/Poller.cpp.i

CMakeFiles/cetty.dir/src/Poller.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cetty.dir/src/Poller.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.BCTwdOK21V/src/Poller.cpp -o CMakeFiles/cetty.dir/src/Poller.cpp.s

CMakeFiles/cetty.dir/src/Channel.cpp.o: CMakeFiles/cetty.dir/flags.make
CMakeFiles/cetty.dir/src/Channel.cpp.o: ../src/Channel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.BCTwdOK21V/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/cetty.dir/src/Channel.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cetty.dir/src/Channel.cpp.o -c /tmp/tmp.BCTwdOK21V/src/Channel.cpp

CMakeFiles/cetty.dir/src/Channel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cetty.dir/src/Channel.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.BCTwdOK21V/src/Channel.cpp > CMakeFiles/cetty.dir/src/Channel.cpp.i

CMakeFiles/cetty.dir/src/Channel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cetty.dir/src/Channel.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.BCTwdOK21V/src/Channel.cpp -o CMakeFiles/cetty.dir/src/Channel.cpp.s

CMakeFiles/cetty.dir/src/Acceptor.cpp.o: CMakeFiles/cetty.dir/flags.make
CMakeFiles/cetty.dir/src/Acceptor.cpp.o: ../src/Acceptor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.BCTwdOK21V/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/cetty.dir/src/Acceptor.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cetty.dir/src/Acceptor.cpp.o -c /tmp/tmp.BCTwdOK21V/src/Acceptor.cpp

CMakeFiles/cetty.dir/src/Acceptor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cetty.dir/src/Acceptor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.BCTwdOK21V/src/Acceptor.cpp > CMakeFiles/cetty.dir/src/Acceptor.cpp.i

CMakeFiles/cetty.dir/src/Acceptor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cetty.dir/src/Acceptor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.BCTwdOK21V/src/Acceptor.cpp -o CMakeFiles/cetty.dir/src/Acceptor.cpp.s

CMakeFiles/cetty.dir/src/Connection.cpp.o: CMakeFiles/cetty.dir/flags.make
CMakeFiles/cetty.dir/src/Connection.cpp.o: ../src/Connection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.BCTwdOK21V/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/cetty.dir/src/Connection.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cetty.dir/src/Connection.cpp.o -c /tmp/tmp.BCTwdOK21V/src/Connection.cpp

CMakeFiles/cetty.dir/src/Connection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cetty.dir/src/Connection.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.BCTwdOK21V/src/Connection.cpp > CMakeFiles/cetty.dir/src/Connection.cpp.i

CMakeFiles/cetty.dir/src/Connection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cetty.dir/src/Connection.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.BCTwdOK21V/src/Connection.cpp -o CMakeFiles/cetty.dir/src/Connection.cpp.s

CMakeFiles/cetty.dir/src/Buffer.cpp.o: CMakeFiles/cetty.dir/flags.make
CMakeFiles/cetty.dir/src/Buffer.cpp.o: ../src/Buffer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.BCTwdOK21V/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/cetty.dir/src/Buffer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cetty.dir/src/Buffer.cpp.o -c /tmp/tmp.BCTwdOK21V/src/Buffer.cpp

CMakeFiles/cetty.dir/src/Buffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cetty.dir/src/Buffer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.BCTwdOK21V/src/Buffer.cpp > CMakeFiles/cetty.dir/src/Buffer.cpp.i

CMakeFiles/cetty.dir/src/Buffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cetty.dir/src/Buffer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.BCTwdOK21V/src/Buffer.cpp -o CMakeFiles/cetty.dir/src/Buffer.cpp.s

CMakeFiles/cetty.dir/src/Server.cpp.o: CMakeFiles/cetty.dir/flags.make
CMakeFiles/cetty.dir/src/Server.cpp.o: ../src/Server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.BCTwdOK21V/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/cetty.dir/src/Server.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cetty.dir/src/Server.cpp.o -c /tmp/tmp.BCTwdOK21V/src/Server.cpp

CMakeFiles/cetty.dir/src/Server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cetty.dir/src/Server.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.BCTwdOK21V/src/Server.cpp > CMakeFiles/cetty.dir/src/Server.cpp.i

CMakeFiles/cetty.dir/src/Server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cetty.dir/src/Server.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.BCTwdOK21V/src/Server.cpp -o CMakeFiles/cetty.dir/src/Server.cpp.s

# Object files for target cetty
cetty_OBJECTS = \
"CMakeFiles/cetty.dir/main.cpp.o" \
"CMakeFiles/cetty.dir/src/EventLoop.cpp.o" \
"CMakeFiles/cetty.dir/src/Poller.cpp.o" \
"CMakeFiles/cetty.dir/src/Channel.cpp.o" \
"CMakeFiles/cetty.dir/src/Acceptor.cpp.o" \
"CMakeFiles/cetty.dir/src/Connection.cpp.o" \
"CMakeFiles/cetty.dir/src/Buffer.cpp.o" \
"CMakeFiles/cetty.dir/src/Server.cpp.o"

# External object files for target cetty
cetty_EXTERNAL_OBJECTS =

libcetty.a: CMakeFiles/cetty.dir/main.cpp.o
libcetty.a: CMakeFiles/cetty.dir/src/EventLoop.cpp.o
libcetty.a: CMakeFiles/cetty.dir/src/Poller.cpp.o
libcetty.a: CMakeFiles/cetty.dir/src/Channel.cpp.o
libcetty.a: CMakeFiles/cetty.dir/src/Acceptor.cpp.o
libcetty.a: CMakeFiles/cetty.dir/src/Connection.cpp.o
libcetty.a: CMakeFiles/cetty.dir/src/Buffer.cpp.o
libcetty.a: CMakeFiles/cetty.dir/src/Server.cpp.o
libcetty.a: CMakeFiles/cetty.dir/build.make
libcetty.a: CMakeFiles/cetty.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.BCTwdOK21V/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX static library libcetty.a"
	$(CMAKE_COMMAND) -P CMakeFiles/cetty.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cetty.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cetty.dir/build: libcetty.a
.PHONY : CMakeFiles/cetty.dir/build

CMakeFiles/cetty.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cetty.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cetty.dir/clean

CMakeFiles/cetty.dir/depend:
	cd /tmp/tmp.BCTwdOK21V/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.BCTwdOK21V /tmp/tmp.BCTwdOK21V /tmp/tmp.BCTwdOK21V/cmake-build-debug /tmp/tmp.BCTwdOK21V/cmake-build-debug /tmp/tmp.BCTwdOK21V/cmake-build-debug/CMakeFiles/cetty.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cetty.dir/depend

