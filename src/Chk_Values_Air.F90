program chk_values_air

!THIS PROGRAM PROVIDES AN EASY WAY FOR THE USER TO COMPARE RESULTS FROM THE AIR ROUTINES
!RUN LOCALLY WITH THE CHECK VALUES PROVIDED IN THE VARIOUS ROUTINES

!THIS PROGRAM REQUIRES
!     CONSTANTS_0, FILE CONSTANTS_0.F90
!     CONVERT_0,   FILE CONVERT_0.F90
!     MATHS_0,     FILE MATHS_0.F90
!     AIR_1,       FILE AIR_1.F90
!     AIR_2,       FILE AIR_2.F90
!     AIR_3a,      FILE AIR_3a.F90
!     AIR_3b,      FILE AIR_3b.F90
!     AIR_3c,      FILE AIR_3c.F90
!     AIR_5,       FILE AIR_5.F90

!use constants_0
!use convert_0
!use maths_0
!use air_1
!use air_2
!use air_3a
!use air_3b
!use air_3c
!use air_5
use values_air

implicit none 
!character*11, private :: version = '31 Jan 2012'

call air_chk_values

end program
