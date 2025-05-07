#include <iostream>
#include <windows.h>

extern "C" {
    PVOID ImageBaseAddress();
    PVOID ProcessHeap();
    ULONG OSMajorVersion();
    ULONG OSMinorVersion();
    USHORT OSBuildNumber();
    USHORT OSCSDVersion();
    ULONG OSPlatformId();
    ULONG ImageSubsystem();
    ULONG ImageSubsystemMajorVersion();
    ULONG ImageSubsystemMinorVersion();
    ULONG ProcessId();
    ULONG NtGlobalFlag();
}

int main()
{
    std::puts("--------------------------------------------------");
    std::cout << "ImageBaseAddress:          0x" << std::hex << reinterpret_cast<uintptr_t>(ImageBaseAddress()) << '\n';
    std::cout << "ProcessHeap:               0x" << std::hex << reinterpret_cast<uintptr_t>(ProcessHeap()) << '\n';
    std::cout << "Global Flag:               0x" << std::hex << NtGlobalFlag() << '\n';
    std::cout << "Version:                   " << std::dec << OSMajorVersion() << '.' << OSMinorVersion() << '.' << OSBuildNumber() << '\n';
    std::cout << "OSCSD Version:             " << OSCSDVersion() << '\n';
    std::cout << "OS Platform ID:            " << OSPlatformId() << '\n';
    std::cout << "Image Subsystem:           " << ImageSubsystem() << '\n';
    std::cout << "Image Subsystem Version:   " << ImageSubsystemMajorVersion() << '.' << ImageSubsystemMinorVersion() << '\n';
    std::cout << "PID:                       " << ProcessId() << '\n';
    std::puts("--------------------------------------------------");
}