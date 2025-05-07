PUBLIC ImageBaseAddress
PUBLIC ProcessHeap
PUBLIC OSMajorVersion
PUBLIC OSMinorVersion
PUBLIC OSBuildNumber
PUBLIC ProcessId
PUBLIC NtGlobalFlag
PUBLIC OSCSDVersion
PUBLIC OSPlatformId
PUBLIC ImageSubsystem
PUBLIC ImageSubsystemMajorVersion
PUBLIC ImageSubsystemMinorVersion
PUBLIC fail_return_zero

.code
    ImageBaseAddress PROC
        mov     rax,     qword ptr gs:[60h]
        test    rax,     rax
        jz      fail_return_zero
        mov     rax,     [rax + 10h]
        test    rax,     rax
        jz      fail_return_zero
        ret
    ImageBaseAddress ENDP
    ProcessHeap PROC
        mov     rax,     qword ptr gs:[60h]
        test    rax,     rax
        jz      fail_return_zero
        mov     rax,     [rax + 30h]
        test    rax,     rax
        jz      fail_return_zero
        ret
    ProcessHeap ENDP
    OSMajorVersion PROC
        mov     rax,     qword ptr gs:[60h]
        test    rax,     rax
        jz      fail_return_zero
        mov     rax,     [rax + 118h]
        test    rax,     rax
        jz      fail_return_zero
        ret
    OSMajorVersion ENDP
    OSMinorVersion PROC
        mov     rax,     qword ptr gs:[60h]
        test    rax,     rax
        jz      fail_return_zero
        mov     rax,     [rax + 11Ch]
        test    rax,     rax
        jz      fail_return_zero
        ret
    OSMinorVersion ENDP
    OSBuildNumber PROC
        mov     rax,     qword ptr gs:[60h]
        test    rax,     rax
        jz      fail_return_zero
        mov     rax,     [rax + 120h]
        test    rax,     rax
        jz      fail_return_zero
        ret
    OSBuildNumber ENDP
    OSCSDVersion PROC
        mov     rax,     qword ptr gs:[60h]
        test    rax,     rax
        jz      fail_return_zero
        mov     rax,     [rax + 122h]
        test    rax,     rax
        jz      fail_return_zero
        ret
    OSCSDVersion ENDP
    OSPlatformId PROC
        mov     rax,     qword ptr gs:[60h]
        test    rax,     rax
        jz      fail_return_zero
        mov     rax,     [rax + 124h]
        test    rax,     rax
        jz      fail_return_zero
        ret
    OSPlatformId ENDP
    ImageSubsystem PROC
        mov     rax,     qword ptr gs:[60h]
        test    rax,     rax
        jz      fail_return_zero
        mov     rax,     [rax + 128h]
        test    rax,     rax
        jz      fail_return_zero
        ret
    ImageSubsystem ENDP
    ImageSubsystemMajorVersion PROC
        mov     rax,     qword ptr gs:[60h]
        test    rax,     rax
        jz      fail_return_zero
        mov     rax,     [rax + 12Ch]
        test    rax,     rax
        jz      fail_return_zero
        ret
    ImageSubsystemMajorVersion ENDP
    ImageSubsystemMinorVersion PROC
        mov     rax,     qword ptr gs:[60h]
        test    rax,     rax
        jz      fail_return_zero
        mov     rax,     [rax + 130h]
        test    rax,     rax
        jz      fail_return_zero
        ret
    ImageSubsystemMinorVersion ENDP
    ProcessId PROC
        mov     rax,     qword ptr gs:[40h]
        test    rax,     rax
        jz      fail_return_zero
        ret
    ProcessId ENDP
    NtGlobalFlag PROC
        mov     rax,     qword ptr gs:[60h]
        test    rax,     rax
        jz      fail_return_zero
        mov     rax,     [rax + 68h]
        test    rax,     rax
        jz      fail_return_zero
        ret
    NtGlobalFlag ENDP

    fail_return_zero:
        xor     rax,     rax
        ret
end