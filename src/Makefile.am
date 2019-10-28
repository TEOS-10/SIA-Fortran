# Written by Malte.Thoma@awi.de
AM_FCFLAGS = ${MODULE_INCLUDE_PATH_FLAG}../SIA_library/
# name of the lib to be build
lib_LIBRARIES  = lib_TEOS10.a
LDADD = -L./ -l_TEOS10

# sourcefiles 
lib_TEOS10_a_SOURCES = Constants_0.F90  \
                       Maths_0.F90  \
                       Convert_0.F90  \
                       Flu_1.F90  \
                       Ice_1.F90  \
                       Sal_1.F90  \
                       Air_1.F90  \
                       Flu_2.F90  \
                       Ice_2.F90  \
                       Sal_2.F90  \
                       Air_2.F90  \
                       Flu_3a.F90  \
                       Flu_3b.F90  \
                       Sea_3a.F90  \
                       Sea_3b.F90  \
                       Sea_3c.F90  \
                       Sea_3d.F90  \
                       Air_3a.F90  \
                       Air_3b.F90  \
                       Air_3c.F90  \
                       Liq_Vap_4.F90  \
                       Ice_Vap_4.F90  \
                       Ice_Liq_4.F90  \
                       Liq_Ice_Air_4.F90  \
                       Sea_Vap_4.F90  \
                       Sea_Liq_4.F90  \
                       Sea_Ice_4.F90  \
                       Sea_Ice_Vap_4.F90  \
                       Liq_Air_4a.F90  \
                       Sea_Air_4.F90  \
                       Liq_Air_4b.F90  \
                       Liq_Air_4c.F90  \
                       Ice_Air_4a.F90  \
                       Ice_Air_4b.F90  \
                       Ice_Air_4c.F90  \
                       Flu_IF97_5.F90  \
                       Liq_F03_5.F90  \
                       Ice_Flu_5.F90  \
                       Sea_5a.F90  \
                       GSW_Library_5.F90  \
                       Convert_5.F90  \
                       Air_5.F90  \
                       OS2008_5.F90  


##clean 
CLEANFILES=*~ $(BUILT_SOURCES) *.mod
