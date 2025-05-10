PUBLIC ImageBaseAddress
PUBLIC ProcessHeap
PUBLIC OSMajorVersion
PUBLIC OSMinorVersion
PUBLIC OSBuildNumber
PUBLIC OSCSDVersion
PUBLIC OSPlatformId
PUBLIC ImageSubsystem
PUBLIC ImageSubsystemMajorVersion
PUBLIC ImageSubsystemMinorVersion
PUBLIC ProcessId
PUBLIC NtGlobalFlag
PUBLIC fail_return_zero

.data
    PEB_BASE                equ 60h
    PEB_IMAGE_BASE          equ 10h
    PEB_PROCESS_HEAP        equ 30h
    PEB_NT_GLOBAL_FLAG      equ 68h
    PEB_OS_MAJOR_VERSION    equ 118h
    PEB_OS_MINOR_VERSION    equ 11Ch
    PEB_OS_BUILD_NUMBER     equ 120h
    PEB_OS_CSD_VERSION      equ 122h
    PEB_OS_PLATFORM_ID      equ 124h
    PEB_IMAGE_SUBSYSTEM     equ 128h
    PEB_SUBSYSTEM_MAJOR     equ 12Ch
    PEB_SUBSYSTEM_MINOR     equ 130h
    TEB_PROCESS_ID          equ 40h

.code
    ReadPebValue PROC
        mov     rax, qword ptr gs:[PEB_BASE]
        test    rax, rax
        jz      fail_return_zero
        mov     rax, [rax + rcx]
        test    rax, rax
        jz      fail_return_zero
        ret
    ReadPebValue ENDP

    ImageBaseAddress PROC
        mov     rcx, PEB_IMAGE_BASE
        jmp     ReadPebValue
    ImageBaseAddress ENDP

    ProcessHeap PROC
        mov     rcx, PEB_PROCESS_HEAP
        jmp     ReadPebValue
    ProcessHeap ENDP

    NtGlobalFlag PROC
        mov     rcx, PEB_NT_GLOBAL_FLAG
        jmp     ReadPebValue
    NtGlobalFlag ENDP

    OSMajorVersion PROC
        mov     rcx, PEB_OS_MAJOR_VERSION
        jmp     ReadPebValue
    OSMajorVersion ENDP

    OSMinorVersion PROC
        mov     rcx, PEB_OS_MINOR_VERSION
        jmp     ReadPebValue
    OSMinorVersion ENDP

    OSBuildNumber PROC
        mov     rcx, PEB_OS_BUILD_NUMBER
        jmp     ReadPebValue
    OSBuildNumber ENDP

    OSCSDVersion PROC
        mov     rcx, PEB_OS_CSD_VERSION
        jmp     ReadPebValue
    OSCSDVersion ENDP

    OSPlatformId PROC
        mov     rcx, PEB_OS_PLATFORM_ID
        jmp     ReadPebValue
    OSPlatformId ENDP

    ImageSubsystem PROC
        mov     rcx, PEB_IMAGE_SUBSYSTEM
        jmp     ReadPebValue
    ImageSubsystem ENDP

    ImageSubsystemMajorVersion PROC
        mov     rcx, PEB_SUBSYSTEM_MAJOR
        jmp     ReadPebValue
    ImageSubsystemMajorVersion ENDP

    ImageSubsystemMinorVersion PROC
        mov     rcx, PEB_SUBSYSTEM_MINOR
        jmp     ReadPebValue
    ImageSubsystemMinorVersion ENDP

    ProcessId PROC
        mov     rax, qword ptr gs:[TEB_PROCESS_ID]
        test    rax, rax
        jz      fail_return_zero
        ret
    ProcessId ENDP

    fail_return_zero:
        xor     rax, rax
        ret
END