#!/bin/bash

# This routine compiles the requested file locally taking advantage of makefiles
# First it creates a makefile using fmkmf with a path (-p) that includes the library
# Then it executes the make file locally
# Note that up to date files are not remade, but the makefile itself is

# Edit this line to provide the address of your TEOS library directory
# libdir=/home101/dwright/IAPWS/TEOS10-0.0.4/SIA_library
libdir=/home/Paul/SIA_11may17

if [ ! -f "$1" ]
then
echo " "
echo "You may have forgotten to provide the file name to be compiled"
echo "Just enter its name (including .F90) after TEOSf90.sh"
echo " "
fi 

${libdir}/fmkmf.sh -tag F90 -p .:${libdir} $1 > Makefile_$(basename $1 .F90)

make -f Makefile_$(basename $1 .F90)
#rm Makefile_$(basename $1 .F90)
