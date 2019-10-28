program chk_values_cnv

!THIS PROGRAM PROVIDES AN EASY WAY FOR THE USER TO COMPARE RESULTS FROM 
!THE CONVERT ROUTINES RUN LOCALLY WITH THE CHECK VALUES PROVIDED IN 
!THE VARIOUS ROUTINES

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
! Note that the file GSW_Data_v3_0.dat must be present for the salinity conversion comparisons
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!


!THIS PROGRAM REQUIRES
!     CONSTANTS_0,   FILE CONSTANTS_0.F90
!     CONVERT_0,     FILE CONVERT_0.F90
!     CONVERT_5,     FILE CONVERT_5.F90

use values_cnv

implicit none 
!character*11, private :: version = '31 Jan 2012'

call cnv_chk_values

end program
