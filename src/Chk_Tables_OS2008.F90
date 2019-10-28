program chk_tables_os2008

! #define interactive

!=========================================================================

!THIS PROGRAM REQUIRES
!     CONSTANTS_0,     FILE CONSTANTS_0.F90
!     FLU_1,           FILE FLU_1.F90
!     FLU_2,           FILE FLU_2.F90
!     FLU_3A,          FILE FLU_3A.F90
!     LIQ_VAP_4,       FILE LIQ_VAP_4.F90
!     ICE_1,           FILE ICE_1.F90
!     SAL_1,           FILE SAL_1.F90
!     SAL_2,           FILE SAL_2.F90
!     OS2008_5,        FILE OS2008_5.F90

!=========================================================================

!THIS PROGRAM PRODUCES COMPARISON TABLES WITH THE CHECK VALUES PUBLISHED IN
!R. FEISTEL, D.G. WRIGHT, K. MIYAGAWA, A.H. HARVEY, J. HRUBY, D.R. JACKETT, T.J. MCDOUGALL, W.WAGNER
!MUTUALLY CONSISTENT THERMODYNAMIC POTENTIALS FOR FLUID WATER, ICE AND SEAWATER:
!A NEW STANDARD FOR OCEANOGRAPHY. OCEAN SCI., 4, 275-291, 2008
!WWW.OCEAN-SCI.NET/4/275/2008/
!WITH THE IMPLEMENTATION IN THIS LIBRARY.

!==========================================================================
!IMPLEMENTATION IN FORTRAN BY D.G. WRIGHT
!FOR PUBLICATION IN OCEAN SCIENCE, AS DESCRIBED IN THE PAPERS

!FEISTEL, R., WRIGHT, D.G., JACKETT, D.R., MIYAGAWA, K., REISSMANN, J.H.,
!WAGNER, W., OVERHOFF, U., GUDER, C., FEISTEL, A., MARION, G.M.:
!NUMERICAL IMPLEMENTATION AND OCEANOGRAPHIC APPLICATION OF THE THERMODYNAMIC
!POTENTIALS OF WATER, VAPOUR, ICE, SEAWATER AND AIR. PART I: BACKGROUND AND EQUATIONS. 
!OCEAN SCIENCES, 2009, IN PREPARATION.

!WRIGHT, D.G., FEISTEL, R., JACKETT, D.R., MIYAGAWA, K., REISSMANN, J.H., 
!WAGNER, W., OVERHOFF, U., GUDER, C., FEISTEL, A., MARION, G.M.:
!NUMERICAL IMPLEMENTATION AND OCEANOGRAPHIC APPLICATION OF THE THERMODYNAMIC
!POTENTIALS OF WATER, VAPOUR, ICE, SEAWATER AND AIR. PART II: THE LIBRARY ROUTINES, 
!OCEAN SCIENCES., 2009, IN PREPARATION.

!FEISTEL, R., KRETZSCHMAR, H.-J., SPAN, R., HAGEN, E., !WRIGHT, D.G., JACKETT, D.R.:
!THERMODYNAMIC PROPERTIES OF SEA AIR. OCEAN SCIENCES, 2009, IN PREPARATION.
!==========================================================================

use constants_0
use flu_1
use flu_2
use flu_3a
use liq_vap_4
use ice_1
use sal_1
use sal_2
use os2008_5

implicit none 
!character*11, private :: version = '31 Jan 2012'

character*(2) table_number
integer number

#ifdef interactive
999 continue
write(*,*)' '
write(*,*)'enter the table number to check in quotes: choices are 2, 3, A1-8, 0 will exit'
read(*,*)table_number
call chk_os2008_table(table_number)
go to 999

#else

call chk_os2008_table("2")
call chk_os2008_table("3") 
call chk_os2008_table("A1") 
call chk_os2008_table("A2")
call chk_os2008_table("A3")
call chk_os2008_table("A4")  
call chk_os2008_table("A5") 
call chk_os2008_table("A6")
call chk_os2008_table("A7")
call chk_os2008_table("A8")  

#endif

end program
