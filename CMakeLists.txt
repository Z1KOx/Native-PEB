cmake_minimum_required( VERSION 3.10 )
project( native-peb )

if( WIN32 )
	enable_language( C ASM_MASM )
    set( CMAKE_C_STANDARD 99 )

    set( SOURCE_FILES
        src/main.c
        src/osinfo.asm
    )

    add_executable( native-peb ${SOURCE_FILES} )
endif()
