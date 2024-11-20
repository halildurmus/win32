// Demonstrates querying virtual memory information using VirtualAlloc and
// VirtualQuery.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

void main() {
  using((arena) {
    // Allocate a small region of virtual memory.
    final allocResult = VirtualAlloc(
      nullptr,
      8,
      MEM_COMMIT,
      PAGE_EXECUTE_READWRITE,
    );
    if (allocResult.value.isNull) {
      throw WindowsException(allocResult.error.toHRESULT());
    }

    final baseAddress = allocResult.value;

    final mbi = arena<MEMORY_BASIC_INFORMATION>();
    final queryResult = VirtualQuery(
      baseAddress,
      mbi,
      sizeOf<MEMORY_BASIC_INFORMATION>(),
    );
    if (queryResult.value == 0) {
      VirtualFree(baseAddress, 0, MEM_RELEASE);
      throw WindowsException(queryResult.error.toHRESULT());
    }

    print('Virtual memory region information:\n');
    print('Base address     : ${mbi.ref.BaseAddress}');
    print('Allocation base  : ${mbi.ref.AllocationBase}');
    print('Region size      : ${mbi.ref.RegionSize} bytes');
    print('Partition ID     : ${mbi.ref.PartitionId}');

    print('\nRegion type:');
    switch (mbi.ref.Type) {
      case MEM_IMAGE:
        print('• MEM_IMAGE');
      case MEM_MAPPED:
        print('• MEM_MAPPED');
      case MEM_PRIVATE:
        print('• MEM_PRIVATE');
      default:
        print('• Unknown');
    }

    print('\nAllocation protection:');
    switch (mbi.ref.AllocationProtect) {
      case PAGE_EXECUTE_READWRITE:
        print('• EXECUTE | READ | WRITE');
      case PAGE_EXECUTE_READ:
        print('• EXECUTE | READ');
      case PAGE_READWRITE:
        print('• READ | WRITE');
      case PAGE_READONLY:
        print('• READ');
      default:
        print('• Other (${mbi.ref.AllocationProtect})');
    }

    print('\nRegion state:');
    switch (mbi.ref.State) {
      case MEM_COMMIT:
        print('• Committed');
      case MEM_RESERVE:
        print('• Reserved');
      case MEM_FREE:
        print('• Free');
      default:
        print('• Unknown');
    }

    // Always release memory allocated with VirtualAlloc.
    VirtualFree(baseAddress, 0, MEM_RELEASE);
  });
}
