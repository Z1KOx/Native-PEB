cmake_minimum_required(VERSION 3.8)
project(haha)

enable_language(C ASM_MASM)
set(CMAKE_CXX_STANDARD 20)

set(SOURCE_FILES
    src/main.cpp
    src/osinfo.asm
)

add_executable(haha ${SOURCE_FILES})