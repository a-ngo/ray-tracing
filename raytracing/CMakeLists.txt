# Minimum version of CMake required to build this project
cmake_minimum_required(VERSION 3.0)

# Name of the project
project(RayTracing)

# Add all the source files needed to build the executable
add_executable(RayTracing 
	src/main.cpp
)

# Include the directory where MyLibrary project is. Otherwise, we can't use the
# library
include_directories(include)
# add_subdirectory(libraries/MyLibrary)


# Link the executable and the library together
target_link_libraries(RayTracing)
# target_link_libraries(RayTracing MyLibrary)
