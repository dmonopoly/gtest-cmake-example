# What is this?
This is an example setup of cmake with google test. I got it working after
consulting the google test primer, among other things. Hopefully it'll help
someone get set up with C++ and google test.

# Where are things?
`build/` is where code is built - like where executables are.  
`lib/` includes gtest-1.6.0.  
Rest of code in root:  
-`CMakeLists.txt` must be in each subdirectory of the project  
-`main.cpp` is just a driver file - the common place to run the normal
application  
-`project1.cpp` and `project1.h` have code for the class 'Project1'  
-`test_project1.cpp` has code to test Project1  

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

## My experience
I spent a lot of time figuring out how I wanted to reference the gtest library.  

[On StackOverflow](http://stackoverflow.com/questions/9689183/cmake-googletest)
there are ways to download the svn repo when you cmake, but that's internet
connection dependent. There is also a way to set a variable for where gtest is
installed on your system, but that got a bit tedious.  

In the end I opted to just have a copy of gtest locally in whatever application
I have that uses gtest.  
[This user's edited
solution](http://stackoverflow.com/questions/8507723/how-to-start-working-with-gtest-and-cmake)
and [my own question's
response](http://stackoverflow.com/questions/14148145/gtest-detects-method-only-when-the-method-is-implemented-in-h-not-in-cpp-cma/14157405#14157405)
helped me out.

