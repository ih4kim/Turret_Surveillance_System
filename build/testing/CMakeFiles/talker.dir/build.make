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

# Include any dependencies generated for this target.
include testing\CMakeFiles\talker.dir\depend.make

# Include the progress variables for this target.
include testing\CMakeFiles\talker.dir\progress.make

# Include the compile flags for this target's objects.
include testing\CMakeFiles\talker.dir\flags.make

testing\CMakeFiles\talker.dir\src\talker.cpp.obj: testing\CMakeFiles\talker.dir\flags.make
testing\CMakeFiles\talker.dir\src\talker.cpp.obj: C:\opt\Turret_Surveillance_System\src\testing\src\talker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\opt\Turret_Surveillance_System\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object testing/CMakeFiles/talker.dir/src/talker.cpp.obj"
	cd C:\opt\Turret_Surveillance_System\build\testing
	C:\PROGRA~2\MICROS~3\2019\COMMUN~1\VC\Tools\MSVC\1426~1.288\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\talker.dir\src\talker.cpp.obj /FdCMakeFiles\talker.dir\ /FS -c C:\opt\Turret_Surveillance_System\src\testing\src\talker.cpp
<<
	cd C:\opt\Turret_Surveillance_System\build

testing\CMakeFiles\talker.dir\src\talker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/talker.dir/src/talker.cpp.i"
	cd C:\opt\Turret_Surveillance_System\build\testing
	C:\PROGRA~2\MICROS~3\2019\COMMUN~1\VC\Tools\MSVC\1426~1.288\bin\Hostx64\x64\cl.exe > CMakeFiles\talker.dir\src\talker.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\opt\Turret_Surveillance_System\src\testing\src\talker.cpp
<<
	cd C:\opt\Turret_Surveillance_System\build

testing\CMakeFiles\talker.dir\src\talker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/talker.dir/src/talker.cpp.s"
	cd C:\opt\Turret_Surveillance_System\build\testing
	C:\PROGRA~2\MICROS~3\2019\COMMUN~1\VC\Tools\MSVC\1426~1.288\bin\Hostx64\x64\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\talker.dir\src\talker.cpp.s /c C:\opt\Turret_Surveillance_System\src\testing\src\talker.cpp
<<
	cd C:\opt\Turret_Surveillance_System\build

# Object files for target talker
talker_OBJECTS = \
"CMakeFiles\talker.dir\src\talker.cpp.obj"

# External object files for target talker
talker_EXTERNAL_OBJECTS =

C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe: testing\CMakeFiles\talker.dir\src\talker.cpp.obj
C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe: testing\CMakeFiles\talker.dir\build.make
C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe: C:\opt\ros\melodic\x64\lib\roscpp.lib
C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe: C:\opt\rosdeps\x64\lib\boost_filesystem-vc141-mt-x64-1_66.lib
C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe: C:\opt\ros\melodic\x64\lib\rosconsole.lib
C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe: C:\opt\ros\melodic\x64\lib\rosconsole_log4cxx.lib
C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe: C:\opt\ros\melodic\x64\lib\rosconsole_backend_interface.lib
C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe: C:\opt\rosdeps\x64\lib\log4cxx.lib
C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe: C:\opt\rosdeps\x64\lib\boost_regex-vc141-mt-x64-1_66.lib
C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe: C:\opt\ros\melodic\x64\lib\xmlrpcpp.lib
C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe: C:\opt\ros\melodic\x64\lib\roscpp_serialization.lib
C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe: C:\opt\ros\melodic\x64\lib\rostime.lib
C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe: C:\opt\ros\melodic\x64\lib\cpp_common.lib
C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe: C:\opt\rosdeps\x64\lib\boost_system-vc141-mt-x64-1_66.lib
C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe: C:\opt\rosdeps\x64\lib\boost_thread-vc141-mt-x64-1_66.lib
C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe: C:\opt\rosdeps\x64\lib\boost_chrono-vc141-mt-x64-1_66.lib
C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe: C:\opt\rosdeps\x64\lib\boost_date_time-vc141-mt-x64-1_66.lib
C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe: C:\opt\rosdeps\x64\lib\boost_atomic-vc141-mt-x64-1_66.lib
C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe: C:\opt\rosdeps\x64\lib\console_bridge.lib
C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe: testing\CMakeFiles\talker.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\opt\Turret_Surveillance_System\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe"
	cd C:\opt\Turret_Surveillance_System\build\testing
	C:\opt\python27amd64\Lib\site-packages\cmake\data\bin\cmake.exe -E vs_link_exe --intdir=CMakeFiles\talker.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x64\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100183~1.0\x64\mt.exe --manifests  -- C:\PROGRA~2\MICROS~3\2019\COMMUN~1\VC\Tools\MSVC\1426~1.288\bin\Hostx64\x64\link.exe /nologo @CMakeFiles\talker.dir\objects1.rsp @<<
 /out:C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe /implib:C:\opt\Turret_Surveillance_System\devel\lib\talker.lib /pdb:C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.pdb /version:0.0  /machine:x64 /debug /INCREMENTAL /subsystem:console  C:\opt\ros\melodic\x64\lib\roscpp.lib C:\opt\rosdeps\x64\lib\boost_filesystem-vc141-mt-x64-1_66.lib C:\opt\ros\melodic\x64\lib\rosconsole.lib C:\opt\ros\melodic\x64\lib\rosconsole_log4cxx.lib C:\opt\ros\melodic\x64\lib\rosconsole_backend_interface.lib C:\opt\rosdeps\x64\lib\log4cxx.lib C:\opt\rosdeps\x64\lib\boost_regex-vc141-mt-x64-1_66.lib C:\opt\ros\melodic\x64\lib\xmlrpcpp.lib C:\opt\ros\melodic\x64\lib\roscpp_serialization.lib C:\opt\ros\melodic\x64\lib\rostime.lib C:\opt\ros\melodic\x64\lib\cpp_common.lib C:\opt\rosdeps\x64\lib\boost_system-vc141-mt-x64-1_66.lib C:\opt\rosdeps\x64\lib\boost_thread-vc141-mt-x64-1_66.lib C:\opt\rosdeps\x64\lib\boost_chrono-vc141-mt-x64-1_66.lib C:\opt\rosdeps\x64\lib\boost_date_time-vc141-mt-x64-1_66.lib C:\opt\rosdeps\x64\lib\boost_atomic-vc141-mt-x64-1_66.lib C:\opt\rosdeps\x64\lib\console_bridge.lib kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<
	cd C:\opt\Turret_Surveillance_System\build

# Rule to build all files generated by this target.
testing\CMakeFiles\talker.dir\build: C:\opt\Turret_Surveillance_System\devel\lib\testing\talker.exe

.PHONY : testing\CMakeFiles\talker.dir\build

testing\CMakeFiles\talker.dir\clean:
	cd C:\opt\Turret_Surveillance_System\build\testing
	$(CMAKE_COMMAND) -P CMakeFiles\talker.dir\cmake_clean.cmake
	cd C:\opt\Turret_Surveillance_System\build
.PHONY : testing\CMakeFiles\talker.dir\clean

testing\CMakeFiles\talker.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\opt\Turret_Surveillance_System\src C:\opt\Turret_Surveillance_System\src\testing C:\opt\Turret_Surveillance_System\build C:\opt\Turret_Surveillance_System\build\testing C:\opt\Turret_Surveillance_System\build\testing\CMakeFiles\talker.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : testing\CMakeFiles\talker.dir\depend

