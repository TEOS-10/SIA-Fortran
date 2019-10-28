program chk_values_sea

!THIS PROGRAM PROVIDES AN EASY WAY FOR THE USER TO COMPARE RESULTS FROM THE SEAWATER ROUTINES
!RUN LOCALLY WITH THE CHECK VALUES PROVIDED IN THE VARIOUS ROUTINES

!THIS PROGRAM REQUIRES
!     CONSTANTS_0, FILE CONSTANTS_0.F90
!     CONVERT_0,   FILE CONVERT_0.F90
!     SAL_1,       FILE SAL_1.F90
!     SAL_2,       FILE SAL_2.F90
!     FLU_1,       FILE FLU_1.F90
!     FLU_2,       FILE FLU_2.F90
!     FLU_3A,      FILE FLU_3A.F90
!     SEA_3A,      FILE SEA_3A.F90
!     SEA_3B,      FILE SEA_3B.F90
!     SEA_3C,      FILE SEA_3C.F90
!     SEA_3D,      FILE SEA_3D.F90

use values_sea

implicit none 
!character*11, private :: version = '31 Jan 2012'

call sea_chk_values

end program
