[![Circle CI](https://circleci.com/gh/yutakakinjyo/gtest-cmake-example.svg?style=svg)](https://circleci.com/gh/yutakakinjyo/gtest-cmake-example)

# What is this?

This is an example setup of cmake with google test on CircleCI with Docker. 
Hopefully it'll help someone get set up with C++ and google test on CI service.

# Where are things?
`build/` is where code is built - like where executables are.  
`lib/` includes gtest-1.7.0.  

Rest of code in root:  
- `CMakeLists.txt` must be in each subdirectory of the project  
- `main.cpp` is just a driver file - the common place to run the normal
application  
- `project1.cpp` and `project1.h` have code for the class 'Project1'  
- `test_project1.cpp` has code to test Project1  

CI files:  
- `Dockerfile` has buid info to CentOS6 image. That image is used by CircleCI  
- `circle.yml` is CircleCI config file. Contants is about building container and running test.

# What do I do?

## Use cmake and make
If you want to test it all out through the common gtest procedure, first
**delete build/** (if present). Then...

In the project root:

    mkdir build
    cd build
    cmake ..

By now Makefiles should be created.
Then, to build executables and do all that linking stuff,

    make

To prepare all your tests, run this:

    cmake -Dtest=ON ..

To run all tests easily,

    make test

## Use Docker image
if you want run test on Docker image ( CentOS )

```
sudo docker pull yutakakinjyo/gtest-cmake-example:master
sudo docker run --rm=true yutakakinjyo/gtest-cmake-example:master /bin/sh -c 'cd build; make test'
```


## Run executables
Then you can do ./myexecutable for the generated executable, e.g.:

    ./project1

and if you did cmake with test=ON:

    ./runUnitTests

# Details

## Command things
`cmake -Dtest=ON` turns on the variable 'test', which is specified in the root
CMakeLists.txt file. This is handy if you want to build in certain ways. Clear
description
[here](http://stackoverflow.com/questions/5998186/cmake-adding-command-line-options).
