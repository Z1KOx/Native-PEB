PUBLIC ImageBaseAddress
PUBLIC ProcessHeap
PUBLIC OSMajorVersion
PUBLIC OSMinorVersion
PUBLIC OSBuildNumber
PUBLIC ProcessId
PUBLIC NtGlobalFlag
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