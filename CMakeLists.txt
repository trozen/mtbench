cmake_minimum_required(VERSION 3.10)

project(mtbench)

set(CMAKE_CXX_STANDARD 17)

add_executable(raytrace src/raytrace/main.cc)
target_link_libraries(raytrace pthread)
