# SIA-Fortran

## Compilation

The SIA library can be compiled using provided Makefile snippets and shell scripts (in the src/ folder) - or using CMake.

Using CMake makes it much easier to compile on Windows - but can also be used on systems using Make - Mac and Linux.

This README only provides the basic steps, for further information on CMake please go [here](cmake.org)

Note - a Fortran compiler supporting Fortran95 is a prerequisite for both Make and CMake based compilation.

## CMake build

CMake advocates for out of source builds - i.e. the compilation is done outside the source code itself.

### Command line configuration: 

Using a terminal and it works on Windows, Max and Linux
```
cd <sia_source_code_folder>
mkdir _build
cd _build
cmake ../
```

Further options can be provided to CMake. Two will be mentioned here:
  - -DCMAKE\_Fortran\_COMPILER="full path to a working Fortran compiler"
  - -DCMAKE\_INSTALL\_PREFIX="target installation folder"

If a Fortran compiler is not picked up by CMake this is the way to specify one. On Windows VisualStudio must be configured with Fortran support.

A user might not always have write access to the default installation folder - the default can be overwritten using the variable given above.

The CMake configuration contains the following targets:
  - static and shared libraries - named teos10\_siaf with platform specific library naming schemes applied.
  - an example executable that can be used to calculate different variables - sia\_Example\_Calculations.
  - a series of test programs
  - installation 

The static and shared libraries and the example executable are installed - but the test programs are not.

Note - graphical user interfaces exists for CMake on all platforms.

### Building and installing

On Mac, Linux:
```
make install
make all_checks
```

On Windows:
The configuration process has created a file called _sia-sln_ - open this file in VisualStudio. The top-left corner shows a Window called 'Solution Explorer' expand CMakePredefinedTargets -> RightClick on 'Install' and select 'Build'.

To carry out all the various checks RightClick on 'all\_checks' and select 'Build'. The results of the checks are in a folder similar to '..\tests\Testing\Temporary\LastTest.log' - the exact PATH might differ.

Note - the above is done with Visual Studio Community 2017 - slight differences with other versions are expected.

### Using SIA in your own code

After installation the SIA libraries can be used both via CMake based systems - and via normal compilation methods.

In both examples below the SIA installation folde is - _$HOME/local_ and the main Fortran file is called sia_test.F90
```
program sia_test
use constants_0
use sea_3a
write(*,*) sea_g_si(0,0,0,0.035d0,300d0,1d5)
end program
```

#### CMake example:

Eample CMakeLists.txt file:

```
cmake_minimum_required(VERSION 3.0)
project(sia_test VERSION 0.1.0 LANGUAGES Fortran)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "/home/kb/local/cmake")
find_package(sia REQUIRED)
add_executable(sia_test sia_test.F90)
target_link_libraries(sia_test PUBLIC sia_static)
#target_link_libraries(sia_test PUBLIC sia_shared)
```
#### Make example:

Command line example:
```
gfortran-8 sia_test.F90 -I$HOME/local/include/teos10_sia -L$HOME/local/lib -lteos10_siaf
```

