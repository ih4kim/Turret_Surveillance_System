# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\opt\python27amd64\Lib\site-packages\cmake\data\bin\cmake.exe

# The command to remove a file.
RM = C:\opt\python27amd64\Lib\site-packages\cmake\data\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\opt\Turret_Surveillance_System\src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\opt\Turret_Surveillance_System\build

# Utility rule file for sensor_msgs_generate_messages_cpp.

# Include the progress variables for this target.
include motion_detection\CMakeFiles\sensor_msgs_generate_messages_cpp.dir\progress.make

sensor_msgs_generate_messages_cpp: motion_detection\CMakeFiles\sensor_msgs_generate_messages_cpp.dir\build.make

.PHONY : sensor_msgs_generate_messages_cpp

# Rule to build all files generated by this target.
motion_detection\CMakeFiles\sensor_msgs_generate_messages_cpp.dir\build: sensor_msgs_generate_messages_cpp

.PHONY : motion_detection\CMakeFiles\sensor_msgs_generate_messages_cpp.dir\build

motion_detection\CMakeFiles\sensor_msgs_generate_messages_cpp.dir\clean:
	cd C:\opt\Turret_Surveillance_System\build\motion_detection
	$(CMAKE_COMMAND) -P CMakeFiles\sensor_msgs_generate_messages_cpp.dir\cmake_clean.cmake
	cd C:\opt\Turret_Surveillance_System\build
.PHONY : motion_detection\CMakeFiles\sensor_msgs_generate_messages_cpp.dir\clean

motion_detection\CMakeFiles\sensor_msgs_generate_messages_cpp.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\opt\Turret_Surveillance_System\src C:\opt\Turret_Surveillance_System\src\motion_detection C:\opt\Turret_Surveillance_System\build C:\opt\Turret_Surveillance_System\build\motion_detection C:\opt\Turret_Surveillance_System\build\motion_detection\CMakeFiles\sensor_msgs_generate_messages_cpp.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : motion_detection\CMakeFiles\sensor_msgs_generate_messages_cpp.dir\depend

