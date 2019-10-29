cmake_minimum_required( VERSION 3.10 )

project( sia VERSION 4.0.1 LANGUAGES Fortran )

# Use solution folders in IDEs
set_property(GLOBAL PROPERTY USE_FOLDERS ON)

# Use standard GNU installation directories
if ( NOT WIN32 )
    include( GNUInstallDirs )
endif()

# Configuration options - default is to build both
option( SIA_BUILD_STATIC_LIBS "Build static library" ON )
option( SIA_BUILD_SHARED_LIBS "Build shared library" ON )

# Check if shared or static builds are turned off
if( NOT SIA_BUILD_STATIC_LIBS )
    message( STATUS "Turning STATIC builds OFF" )
endif()
if( NOT SIA_BUILD_SHARED_LIBS )
    message( STATUS "Turning SHARED builds OFF" )
endif()

# Set default build type to Release if not specified
if( NOT CMAKE_CONFIGURATION_TYPES AND NOT CMAKE_BUILD_TYPE )
    message( STATUS "Setting default build type to 'Release'.  Set CMAKE_BUILD_TYPE variable to change build types." )
    set_property( CACHE CMAKE_BUILD_TYPE PROPERTY VALUE "Release" )
endif()

set( CMAKE_Fortran_MODULE_DIRECTORY ${CMAKE_BINARY_DIR}/modules )
set( CMAKE_POSITION_INDEPENDENT_CODE ON )

add_subdirectory( src )

# Note - KB:
# Building static and shared libs require an ugly construct to build on both
# Windows and Linux. Windows will not create the libraries unless a Fortran
# file is explicitly given - and Linux complains (I think due to a race 
# condition) if it is. Therefor the construct below - a proper solution is 
# most welcome.

# Add static lib target
if( SIA_BUILD_STATIC_LIBS )
    if ( WIN32 )
        add_library( sia_static STATIC ${CMAKE_BINARY_DIR}/src/sia_version.F90 $<TARGET_OBJECTS:sia_objects> )
    else()
        add_library( sia_static STATIC $<TARGET_OBJECTS:sia_objects> )
    endif()
    list( APPEND LIB_TARGETS sia_static )
endif()

# Add shared lib target
if( SIA_BUILD_SHARED_LIBS )
    if ( WIN32 )
        add_library( sia_shared SHARED ${CMAKE_BINARY_DIR}/src/sia_version.F90 $<TARGET_OBJECTS:sia_objects> )
    else()
        add_library( sia_shared SHARED $<TARGET_OBJECTS:sia_objects> )
    endif()
    list( APPEND LIB_TARGETS sia_shared )
endif()

# Set common lib target properties
foreach( _tgt IN LISTS LIB_TARGETS )
    target_compile_definitions( ${_tgt} PUBLIC "${PUBLIC_FLAGS}" )
    target_include_directories( ${_tgt}
        PUBLIC
	        $<INSTALL_INTERFACE:include/teos10_sia>
        PRIVATE
            $<BUILD_INTERFACE:${PROJECT_BINARY_DIR}/${INCLUDE_DIR}> )
    set_target_properties( ${_tgt} PROPERTIES OUTPUT_NAME teos10_siaf)
endforeach()

add_executable( Example_Calculations src/Example_Calculations.F90 )
set_target_properties( Example_Calculations PROPERTIES OUTPUT_NAME sia_Example_Calculations)
target_include_directories( Example_Calculations PRIVATE ${CMAKE_BINARY_DIR}/modules )
target_link_libraries( Example_Calculations PUBLIC sia_static )

# Testing
add_subdirectory( tests )

# Install
install( TARGETS ${LIB_TARGETS} Example_Calculations EXPORT siaConfig
	 ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
	 LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
	 RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR} )
install( DIRECTORY ${CMAKE_BINARY_DIR}/modules/ EXPORT siaConfig
	 DESTINATION  include/teos10_sia
	 FILES_MATCHING
	 PATTERN "*.mod" )
install(EXPORT siaConfig DESTINATION cmake)

