program chk_tables_f03

!THIS PROGRAM REQUIRES
!     CONSTANTS_0, FILE CONSTANTS_0.F90
!     LIQ_F03_5,   FILE LIQ_F03_5.F90

use constants_0
use liq_f03_5

implicit none 
!character*11, private :: version = '31 Jan 2012'

call chk_iapws09_table6
stop

end program
