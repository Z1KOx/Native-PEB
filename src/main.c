#include <stdio.h>
#include <windows.h>

PVOID ImageBaseAddress();
PVOID ProcessHeap();
ULONG NtGlobalFlag();
ULONG OSMajorVersion();
ULONG OSMinorVersion();
USHORT OSBuildNumber();
USHORT OSCSDVersion();
ULONG OSPlatformId();
ULONG ImageSubsystem();
ULONG ImageSubsystemMajorVersion();
ULONG ImageSubsystemMinorVersion();
ULONG ProcessId();

int main() {
    puts("--------------------------------------------------");
    printf("ImageBaseAddress:          0x%llx\n", ( unsigned long long )ImageBaseAddress());
    printf("ProcessHeap:               0x%llx\n", ( unsigned long long )ProcessHeap());
    printf("Global Flag:               0x%lx\n", NtGlobalFlag());
    printf("Version:                   %lu.%lu.%u\n", OSMajorVersion(), OSMinorVersion(), OSBuildNumber());
    printf("OSCSD Version:             %u\n", OSCSDVersion());
    printf("OS Platform ID:            %lu\n", OSPlatformId());
    printf("Image Subsystem:           %lu\n", ImageSubsystem());
    printf("Image Subsystem Version:   %lu.%lu\n", ImageSubsystemMajorVersion(), ImageSubsystemMinorVersion());
    printf("PID:                       %lu\n", ProcessId());
    puts("--------------------------------------------------");

    return 0;
}