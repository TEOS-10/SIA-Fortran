program chk_values_all

!THIS PROGRAM REQUIRES
!     CONSTANTS_0,   FILE CONSTANTS_0.F90
!     CONVERT_0,     FILE CONVERT_0.F90
!     CONVERT_5,     FILE CONVERT_5.F90
!     MATHS_0,       FILE MATHS_0.F90
!     AIR_1,         FILE AIR_1.F90
!     AIR_2,         FILE AIR_2.F90
!     FLU_1,         FILE FLU_1.F90
!     ICE_1,         FILE ICE_1.F90
!     SAL_1,         FILE SAL_1.F90
!     FLU_2,         FILE FLU_2.F90
!     ICE_2,         FILE ICE_2.F90
!     SAL_2,         FILE SAL_2.F90
!     AIR_3a,        FILE AIR_3a.F90
!     AIR_3b,        FILE AIR_3b.F90
!     AIR_3c,        FILE AIR_3c.F90
!     FLU_3A,        FILE FLU_3A.F90
!     FLU_3B,        FILE FLU_3B.F90
!     SEA_3A,        FILE SEA_3A.F90
!     SEA_3B,        FILE SEA_3B.F90
!     SEA_3C,        FILE SEA_3C.F90
!     SEA_3D,        FILE SEA_3D.F90
!     ICE_LIQ_4,     FILE ICE_LIQ_4.F90
!     ICE_VAP_4,     FILE ICE_VAP_4.F90
!     LIQ_VAP_4,     FILE LIQ_VAP_4.F90
!     LIQ_ICE_AIR_4, FILE LIQ_ICE_AIR_4.F90
!     SEA_AIR_4,     FILE SEA_AIR_4.F90
!     SEA_ICE_4,     FILE SEA_ICE_4.F90
!     SEA_ICE_VAP_4, FILE SEA_ICE_VAP_4.F90
!     SEA_LIQ_4,     FILE SEA_LIQ_4.F90
!     SEA_VAP_4,     FILE SEA_VAP_4.F90
!     ICE_AIR_4A,    FILE ICE_AIR_4A.F90
!     ICE_AIR_4B,    FILE ICE_AIR_4B.F90
!     ICE_AIR_4C,    FILE ICE_AIR_4C.F90
!     LIQ_AIR_4A,    FILE LIQ_AIR_4A.F90
!     LIQ_AIR_4B,    FILE LIQ_AIR_4B.F90
!     LIQ_AIR_4C,    FILE LIQ_AIR_4B.F90
!     AIR_5,         FILE AIR_5.F90
!     GSW_LIBRARY_5, FILE GSW_LIBRARY_5
!     ICE_FLU_5,     FILE FIT_ICE_FLU_5.F90
!     LIQ_F03_5,     FILE LIQ_F03_5

use values_air
use values_cnv
use values_flu
use values_gsw
use values_ice
use values_mix
use values_sal
use values_sea

implicit none 
!character*11, private :: version = '31 Jan 2012'

!THIS PROGRAM PROVIDES AN EASY WAY FOR THE USER TO COMPARE RESULTS FROM THE VARIOUS ROUTINES
!RUN LOCALLY WITH THE CHECK VALUES PROVIDED IN THE VARIOUS ROUTINES

call air_chk_values

call cnv_chk_values

call flu_chk_values

call gsw_chk_values

call ice_chk_values

call mix_chk_values

call sal_chk_values

call sea_chk_values

end program
