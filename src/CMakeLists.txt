# Define Library Target
add_library(sia_objects OBJECT .)
set_property( TARGET sia_objects PROPERTY FOLDER src )

configure_file(${CMAKE_CURRENT_SOURCE_DIR}/sia_version.F90.in ${CMAKE_CURRENT_BINARY_DIR}/sia_version.F90)

# Level 0 sources
set( L0 sia_version.F90 Constants_0.F90 Convert_0.F90 Maths_0.F90 )
target_sources( sia_objects PRIVATE ${L0} )

# Level 1 sources
set( L1 Air_1.F90 Flu_1.F90 Ice_1.F90 Sal_1.F90 )
target_sources(sia_objects PRIVATE ${L1} )

# Level 2 sources
set( L2 Air_2.F90 Flu_2.F90 Ice_2.F90 Sal_2.F90 )
target_sources(sia_objects PRIVATE ${L2} )

# Level 3 sources
set( L3 Air_3a.F90 Air_3b.F90 Air_3c.F90 Flu_3a.F90 Flu_3b.F90 
	Sea_3a.F90 Sea_3b.F90 Sea_3c.F90 Sea_3d.F90 )
target_sources(sia_objects PRIVATE ${L3} )

# Level 4 sources
set( L4 Ice_Air_4a.F90 Ice_Air_4b.F90 Ice_Air_4c.F90 Ice_Liq_4.F90 
	Ice_Vap_4.F90 Liq_Air_4a.F90 Liq_Air_4b.F90 Liq_Air_4c.F90 
	Liq_Ice_Air_4.F90 Liq_Vap_4.F90 Sea_Air_4.F90 Sea_Ice_4.F90 
	Sea_Ice_Vap_4.F90 Sea_Liq_4.F90 Sea_Vap_4.F90 )
target_sources( sia_objects PRIVATE ${L4} )

# Level 5 sources
set( L5 Air_5.F90 Convert_5.F90 Flu_IF97_5.F90 GSW_Library_5.F90 
	Ice_Flu_5.F90 Liq_F03_5.F90 OS2008_5.F90 Sea_5a.F90 )
target_sources( sia_objects PRIVATE ${L5} )
