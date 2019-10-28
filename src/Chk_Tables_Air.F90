program chk_tables_air

! #define interactive

!THIS PROGRAM PROVIDES EASY COMPARISON OF SELECTED RESULTS WITH THOSE APPEARING IN:

!LEMMON, E.W., JACOBSEN, R.T., PENONCELLO, S.G., FRIEND, D.G.
!THERMODYNAMIC PROPERTIES OF AIR AND MIXTURES OF NITROGEN, ARGON AND OXYGEN
!FROM 60 TO 2000 K AT PRESSURES TO 2000 MPA.
!J. PHYS. CHEM. REF. DATA 29(2000)331-362.

!AND 

!GUIDELINE ON AN EQUATION OF STATE FOR HUMID AIR IN CONTACT WITH SEAWATER AND ICE,
!CONSISTENT WITH THE IAPWS FORMULATION 2008 FOR THE THERMODYNAMIC PROPERTIES OF SEAWATER
!THE INTERNATIONAL ASSOCIATION FOR THE PROPERTIES OF WATER AND STEAM
!NIAGARA FALLS, CANADA, SEPTEMBER 2010 IN PREPARATION

!THIS PROGRAM REQUIRES
!     CONSTANTS_0, FILE CONSTANTS_0.F90
!     CONVERT_0,   FILE CONVERT_0.F90
!     MATHS_0,     FILE MATHS.F90
!     AIR_1,       FILE AIR_1.F90
!     AIR_2,       FILE AIR_2.F90
!     AIR_3b,      FILE AIR_3b.F90

use constants_0
use convert_0
use maths_0
use air_1
use air_2
use air_3b

implicit none 
!character*11, private :: version = '31 Jan 2012'

integer checkit
real(dbl) test

check_limits = 0

#ifdef interactive

999 continue
write(*,*)'ENTER 1 to compare the results for IAPWS-10, Table 13'
write(*,*)'ENTER 2 to compare the results for IAPWS-10, Table 14'
write(*,*)'ENTER 3 to compare the results for IAPWS-10, Table 15'
write(*,*)'ENTER 4 to compare the Helmholtz function results based on Lemmon et al. 2000'
write(*,*)'ENTER 5 to compare the Gibbs function results based on Lemmon et al. 2000'
write(*,*)'ENTER 0 to exit'
read(*,*) checkit
if(checkit.eq.1) call chk_iapws10_table(13)
if(checkit.eq.2) call chk_iapws10_table(14)
if(checkit.eq.3) call chk_iapws10_table(15)
if(checkit.eq.4) call chk_lemmon_etal_2000(1)
if(checkit.eq.5) call chk_lemmon_etal_2000(2)
if(checkit.eq.0) stop
go to 999

#else

call chk_iapws10_table(13)
call chk_iapws10_table(14)
call chk_iapws10_table(15)
call chk_lemmon_etal_2000(1)
call chk_lemmon_etal_2000(2)

stop
#endif

end program
