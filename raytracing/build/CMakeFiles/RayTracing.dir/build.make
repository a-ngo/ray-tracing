# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

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
CMAKE_COMMAND = /usr/local/cmake/3.12.3/bin/cmake

# The command to remove a file.
RM = /usr/local/cmake/3.12.3/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /lhome/ngothan/workspace/sensor_simulation/lidar/raytracing

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /lhome/ngothan/workspace/sensor_simulation/lidar/raytracing/build

# Include any dependencies generated for this target.
include CMakeFiles/RayTracing.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/RayTracing.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RayTracing.dir/flags.make

CMakeFiles/RayTracing.dir/src/main.cpp.o: CMakeFiles/RayTracing.dir/flags.make
CMakeFiles/RayTracing.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/lhome/ngothan/workspace/sensor_simulation/lidar/raytracing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/RayTracing.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/RayTracing.dir/src/main.cpp.o -c /lhome/ngothan/workspace/sensor_simulation/lidar/raytracing/src/main.cpp

CMakeFiles/RayTracing.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/RayTracing.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /lhome/ngothan/workspace/sensor_simulation/lidar/raytracing/src/main.cpp > CMakeFiles/RayTracing.dir/src/main.cpp.i

CMakeFiles/RayTracing.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/RayTracing.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /lhome/ngothan/workspace/sensor_simulation/lidar/raytracing/src/main.cpp -o CMakeFiles/RayTracing.dir/src/main.cpp.s

# Object files for target RayTracing
RayTracing_OBJECTS = \
"CMakeFiles/RayTracing.dir/src/main.cpp.o"

# External object files for target RayTracing
RayTracing_EXTERNAL_OBJECTS =

RayTracing: CMakeFiles/RayTracing.dir/src/main.cpp.o
RayTracing: CMakeFiles/RayTracing.dir/build.make
RayTracing: CMakeFiles/RayTracing.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/lhome/ngothan/workspace/sensor_simulation/lidar/raytracing/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable RayTracing"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RayTracing.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RayTracing.dir/build: RayTracing

.PHONY : CMakeFiles/RayTracing.dir/build

CMakeFiles/RayTracing.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RayTracing.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RayTracing.dir/clean

CMakeFiles/RayTracing.dir/depend:
	cd /lhome/ngothan/workspace/sensor_simulation/lidar/raytracing/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /lhome/ngothan/workspace/sensor_simulation/lidar/raytracing /lhome/ngothan/workspace/sensor_simulation/lidar/raytracing /lhome/ngothan/workspace/sensor_simulation/lidar/raytracing/build /lhome/ngothan/workspace/sensor_simulation/lidar/raytracing/build /lhome/ngothan/workspace/sensor_simulation/lidar/raytracing/build/CMakeFiles/RayTracing.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RayTracing.dir/depend

