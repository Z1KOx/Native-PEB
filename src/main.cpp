#include <iostream>
#include <windows.h>

extern "C" {
    PVOID ImageBaseAddress();
    PVOID ProcessHeap();
    ULONG OSMajorVersion();
    ULONG OSMinorVersion();
    ULONG OSBuildNumber();
    ULONG ProcessId();
    ULONG NtGlobalFlag();
}

int main()
{
    std::cout << "ImageBaseAddress: 0x" << std::hex << reinterpret_cast<uintptr_t>(ImageBaseAddress()) << '\n';
    std::cout << "ProcessHeap 0x" << std::hex << reinterpret_cast<uintptr_t>(ProcessHeap()) << '\n';
    std::cout << "Version: " << std::dec << OSMajorVersion() << '.' << OSMinorVersion() << '.' << OSBuildNumber() << '\n';
    std::cout << "PID: " << ProcessId() << '\n';
    std::cout << "Global Flag: 0x" << std::hex << NtGlobalFlag() << '\n';
}