cmake_minimum_required(VERSION 2.8)

# Make PROJECT_SOURCE_DIR, PROJECT_BINARY_DIR, and PROJECT_NAME available
set(PROJECT_NAME MyProject)
project(${PROJECT_NAME})

#set(COMMON_INCLUDES ${PROJECT_SOURCE_DIR}/include) if you want your own include/ directory
# then you can do include_directories(${COMMON_INCLUDES}) in other cmakelists.txt files

################################
# Normal files
################################
add_executable(project1 project1.cpp)

################################
# GTest
################################
# This adds another subdirectory, which has project(gtest)
add_subdirectory(lib/gtest-1.6.0)

enable_testing()

# Include the gtest library
# gtest_SOURCE_DIR is available due to project(gtest) above
include_directories(${gtest_SOURCE_DIR}/include ${gtest_SOURCE_DIR})

################################
# Unit Tests
################################
add_executable(runUnitTests test_project1.cpp)
target_link_libraries(runUnitTests gtest gtest_main)
add_test(NAME runUnitTests COMMAND runUnitTests)