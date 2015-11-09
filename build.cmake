cmake_minimum_required(VERSION 2.8)

set(build_dir ${CMAKE_CURRENT_LIST_DIR}/build)

if(NOT EXISTS ${build_dir})
  file(MAKE_DIRECTORY ${build_dir})
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} .. -Dtest=ON
  WORKING_DIRECTORY ${build_dir}
)

execute_process(
  COMMAND make
  WORKING_DIRECTORY ${build_dir}
)


execute_process(
  COMMAND make
  WORKING_DIRECTORY ${build_dir}
)

option(test_run "Run all tests." OFF) # Makes boolean 'test' available.

if(test_run)
  execute_process(
    COMMAND make test
    WORKING_DIRECTORY ${build_dir}
  )
endif()