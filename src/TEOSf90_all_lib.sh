#!/bin/bash

if [ ! -f "TEOSmake_all" ]
then
./TEOSf90.sh All.F90
fi 

make -f Makefile_All
#rm Makefile_All
