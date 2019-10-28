program chk_tables_if97

! #define interactive

!THIS PROGRAM REQUIRES
!     CONSTANTS_0, FILE CONSTANTS_0.F90
!     FLU_IF97_5,  FILE FLU_IF97_5.F90

use constants_0
use flu_1
use flu_if97_5

implicit none 
!character*11, private :: version = '31 Jan 2012'

integer number

#ifdef interactive

999 continue
write(*,*)'ENTER 5 to compare with Table 5 of IF-97'
write(*,*)'ENTER 15 to compare with Table 15 of IF-97'
write(*,*)'ENTER 0 to exit'
read(*,*) number

if(number == 0) stop
call chk_iapws97_table(number)
call chk_iapws97_table(number)
go to 999

#else

call chk_iapws97_table(5)
call chk_iapws97_table(15)
stop

#endif

end program
