# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.20

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\Common7\IDE\CommonExtensions\Microsoft\CMake\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\mathi\Documents\GitHub\DirectoryCompare

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\mathi\Documents\GitHub\DirectoryCompare\build

# Include any dependencies generated for this target.
include CMakeFiles/DirChecksum.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/DirChecksum.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/DirChecksum.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DirChecksum.dir/flags.make

CMakeFiles/DirChecksum.dir/dirchecksum/dirchecksum.cpp.obj: CMakeFiles/DirChecksum.dir/flags.make
CMakeFiles/DirChecksum.dir/dirchecksum/dirchecksum.cpp.obj: CMakeFiles/DirChecksum.dir/includes_CXX.rsp
CMakeFiles/DirChecksum.dir/dirchecksum/dirchecksum.cpp.obj: ../dirchecksum/dirchecksum.cpp
CMakeFiles/DirChecksum.dir/dirchecksum/dirchecksum.cpp.obj: CMakeFiles/DirChecksum.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mathi\Documents\GitHub\DirectoryCompare\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DirChecksum.dir/dirchecksum/dirchecksum.cpp.obj"
	C:\msys64\mingw64\bin\x86_64-w64-mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DirChecksum.dir/dirchecksum/dirchecksum.cpp.obj -MF CMakeFiles\DirChecksum.dir\dirchecksum\dirchecksum.cpp.obj.d -o CMakeFiles\DirChecksum.dir\dirchecksum\dirchecksum.cpp.obj -c C:\Users\mathi\Documents\GitHub\DirectoryCompare\dirchecksum\dirchecksum.cpp

CMakeFiles/DirChecksum.dir/dirchecksum/dirchecksum.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DirChecksum.dir/dirchecksum/dirchecksum.cpp.i"
	C:\msys64\mingw64\bin\x86_64-w64-mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\mathi\Documents\GitHub\DirectoryCompare\dirchecksum\dirchecksum.cpp > CMakeFiles\DirChecksum.dir\dirchecksum\dirchecksum.cpp.i

CMakeFiles/DirChecksum.dir/dirchecksum/dirchecksum.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DirChecksum.dir/dirchecksum/dirchecksum.cpp.s"
	C:\msys64\mingw64\bin\x86_64-w64-mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\mathi\Documents\GitHub\DirectoryCompare\dirchecksum\dirchecksum.cpp -o CMakeFiles\DirChecksum.dir\dirchecksum\dirchecksum.cpp.s

CMakeFiles/DirChecksum.dir/dirchecksum/shaf.cpp.obj: CMakeFiles/DirChecksum.dir/flags.make
CMakeFiles/DirChecksum.dir/dirchecksum/shaf.cpp.obj: CMakeFiles/DirChecksum.dir/includes_CXX.rsp
CMakeFiles/DirChecksum.dir/dirchecksum/shaf.cpp.obj: ../dirchecksum/shaf.cpp
CMakeFiles/DirChecksum.dir/dirchecksum/shaf.cpp.obj: CMakeFiles/DirChecksum.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\mathi\Documents\GitHub\DirectoryCompare\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/DirChecksum.dir/dirchecksum/shaf.cpp.obj"
	C:\msys64\mingw64\bin\x86_64-w64-mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DirChecksum.dir/dirchecksum/shaf.cpp.obj -MF CMakeFiles\DirChecksum.dir\dirchecksum\shaf.cpp.obj.d -o CMakeFiles\DirChecksum.dir\dirchecksum\shaf.cpp.obj -c C:\Users\mathi\Documents\GitHub\DirectoryCompare\dirchecksum\shaf.cpp

CMakeFiles/DirChecksum.dir/dirchecksum/shaf.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DirChecksum.dir/dirchecksum/shaf.cpp.i"
	C:\msys64\mingw64\bin\x86_64-w64-mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\mathi\Documents\GitHub\DirectoryCompare\dirchecksum\shaf.cpp > CMakeFiles\DirChecksum.dir\dirchecksum\shaf.cpp.i

CMakeFiles/DirChecksum.dir/dirchecksum/shaf.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DirChecksum.dir/dirchecksum/shaf.cpp.s"
	C:\msys64\mingw64\bin\x86_64-w64-mingw32-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\mathi\Documents\GitHub\DirectoryCompare\dirchecksum\shaf.cpp -o CMakeFiles\DirChecksum.dir\dirchecksum\shaf.cpp.s

# Object files for target DirChecksum
DirChecksum_OBJECTS = \
"CMakeFiles/DirChecksum.dir/dirchecksum/dirchecksum.cpp.obj" \
"CMakeFiles/DirChecksum.dir/dirchecksum/shaf.cpp.obj"

# External object files for target DirChecksum
DirChecksum_EXTERNAL_OBJECTS =

DirChecksum.exe: CMakeFiles/DirChecksum.dir/dirchecksum/dirchecksum.cpp.obj
DirChecksum.exe: CMakeFiles/DirChecksum.dir/dirchecksum/shaf.cpp.obj
DirChecksum.exe: CMakeFiles/DirChecksum.dir/build.make
DirChecksum.exe: CMakeFiles/DirChecksum.dir/linklibs.rsp
DirChecksum.exe: CMakeFiles/DirChecksum.dir/objects1.rsp
DirChecksum.exe: CMakeFiles/DirChecksum.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\mathi\Documents\GitHub\DirectoryCompare\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable DirChecksum.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\DirChecksum.dir\link.txt --verbose=$(VERBOSE)
	C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -noprofile -executionpolicy Bypass -file E:/src/vcpkg/scripts/buildsystems/msbuild/applocal.ps1 -targetBinary C:/Users/mathi/Documents/GitHub/DirectoryCompare/build/DirChecksum.exe -installedDir E:/src/vcpkg/installed/x64-windows/debug/bin -OutVariable out

# Rule to build all files generated by this target.
CMakeFiles/DirChecksum.dir/build: DirChecksum.exe
.PHONY : CMakeFiles/DirChecksum.dir/build

CMakeFiles/DirChecksum.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\DirChecksum.dir\cmake_clean.cmake
.PHONY : CMakeFiles/DirChecksum.dir/clean

CMakeFiles/DirChecksum.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\mathi\Documents\GitHub\DirectoryCompare C:\Users\mathi\Documents\GitHub\DirectoryCompare C:\Users\mathi\Documents\GitHub\DirectoryCompare\build C:\Users\mathi\Documents\GitHub\DirectoryCompare\build C:\Users\mathi\Documents\GitHub\DirectoryCompare\build\CMakeFiles\DirChecksum.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DirChecksum.dir/depend

