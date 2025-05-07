#include <iostream>

extern "C" {
    void* ImageBaseAddress();
    void* ProcessHeap();
    unsigned long OSMajorVersion();
    unsigned long OSMinorVersion();
    unsigned long OSBuildNumber();
}

int main()
{
    std::cout << "ImageBaseAddress: 0x" << std::hex << reinterpret_cast<uintptr_t>(ImageBaseAddress()) << '\n';
    std::cout << "ProcessHeap 0x" << std::hex << reinterpret_cast<uintptr_t>(ProcessHeap()) << '\n';
    std::cout << "Version: " << std::dec << OSMajorVersion() << '.' << OSMinorVersion() << '.' << OSBuildNumber() << '\n';
}