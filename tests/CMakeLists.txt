# Enable ctest framework and add tests
enable_testing()

# If both static and shared libraries are built,
# use the 1st one to link the tests
list( GET LIB_TARGETS 0 _LIB_TARGET )

# All Chk_Table Tests
set( table_src  Chk_Tables_Air.F90 Chk_Tables_All.F90 Chk_Tables_F03.F90 
                Chk_Tables_IF97.F90 Chk_Tables_OS2008.F90 )
foreach( src ${table_src} )
    string( REPLACE ".F90" "" exec ${src} )  
    add_executable( ${exec} EXCLUDE_FROM_ALL ../src/${src} )
    target_include_directories( ${exec} PRIVATE ${CMAKE_BINARY_DIR}/modules )
    target_link_libraries( ${exec} PRIVATE ${_LIB_TARGET} )
    add_test( NAME ${exec} COMMAND ${exec} )
	set_property( TARGET ${exec} PROPERTY FOLDER tests )
    list(APPEND table_check ${exec})
endforeach()
add_custom_target(all_table_checks )
set_property( TARGET all_table_checks PROPERTY FOLDER tests )
add_dependencies(all_table_checks ${table_check} )

# All Chk_Value Tests
set( value_src Chk_Values_Air.F90 Chk_Values_CNV.F90
               Chk_Values_Flu.F90 Chk_Values_GSW.F90 Chk_Values_Ice.F90
               Chk_Values_Mix.F90 Chk_Values_Sal.F90 Chk_Values_Sea.F90 )
foreach( src ${value_src} )
    string( REPLACE ".F90" "" exec ${src} )  
    string( REPLACE "Chk_" "" value_src ${src} )  
    add_executable( ${exec} EXCLUDE_FROM_ALL ../src/${src} ../src/${value_src} )
    target_include_directories( ${exec} PRIVATE ${CMAKE_BINARY_DIR}/modules )
    target_link_libraries( ${exec} PRIVATE ${_LIB_TARGET} )
    add_test( NAME ${exec} COMMAND ${exec} )
	set_property( TARGET ${exec} PROPERTY FOLDER tests )
    list(APPEND value_check ${exec})
endforeach()
add_custom_target( all_value_checks )
set_property( TARGET all_value_checks PROPERTY FOLDER tests )
add_dependencies( all_value_checks ${value_check} )

add_custom_target( all_checks )
add_dependencies( all_checks all_table_checks all_value_checks )

if ( WIN32 )
    add_custom_command(TARGET all_checks POST_BUILD COMMAND ctest -C ${CMAKE_BUILD_TYPE} )
else()
    add_custom_command(TARGET all_checks POST_BUILD COMMAND ctest)
endif()	
