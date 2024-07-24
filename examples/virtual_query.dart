import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

// Virtual Query Example
void main() {
  // Allocate a buffer to hold information about allocated memory
  final pMBI = calloc<MEMORY_BASIC_INFORMATION>();

  // Allocate some memory and return a pointer to the base address.
  final baseAddress = VirtualAlloc(
      nullptr, // Windows determines starting address
      8, // bytes allocated
      VIRTUAL_ALLOCATION_TYPE.MEM_COMMIT,
      PAGE_PROTECTION_FLAGS.PAGE_EXECUTE_READWRITE);

  // Query information about the allocated memory
  final retValue =
      VirtualQuery(baseAddress, pMBI, sizeOf<MEMORY_BASIC_INFORMATION>());

  if (retValue == 0) {
    print('VirtualQuery function failed.');
    exit(GetLastError());
  }

  print('Region Size: ${pMBI.ref.RegionSize}');
  print('Base Address: ${pMBI.ref.BaseAddress}');
  print('Allocation Base: ${pMBI.ref.AllocationBase}');
  print('Partition ID: ${pMBI.ref.PartitionId}');

  // Print what kind of section this buffer is in.
  switch (pMBI.ref.Type) {
    case PAGE_TYPE.MEM_IMAGE:
      print("Type: MEM_IMAGE");
    case PAGE_TYPE.MEM_MAPPED:
      print("Type: MEM_MAPPED");
    case PAGE_TYPE.MEM_PRIVATE:
      print("Type: MEM_PRIVATE");
    default:
      print("Type not found.");
      break;
  }

  // Print what can be done with the buffer's memory region
  switch (pMBI.ref.AllocationProtect) {
    case PAGE_PROTECTION_FLAGS.PAGE_EXECUTE_READWRITE:
      print('AllocationProtect flags: EXECUTE + READ + WRITE');
    case PAGE_PROTECTION_FLAGS.PAGE_EXECUTE_READ:
      print('AllocationProtect flags: EXECUTE + READ');
    case PAGE_PROTECTION_FLAGS.PAGE_READWRITE:
      print('AllocationProtect flags: READ + WRITE');
    case PAGE_PROTECTION_FLAGS.PAGE_READONLY:
      print('AllocationProtect flag: READ');
    default:
      print('AllocationProtect not found.');
      break;
  }

  // Print the state of the buffer's region
  switch (pMBI.ref.State) {
    case VIRTUAL_ALLOCATION_TYPE.MEM_COMMIT:
      print('State of Buffer Region: Committed');
    case VIRTUAL_ALLOCATION_TYPE.MEM_FREE:
      print('State of Buffer Region: Free');
    case VIRTUAL_ALLOCATION_TYPE.MEM_RESERVE:
      print('State of Buffer Region: Reserve');
    default:
      print('State of Buffer Region not found.');
      break;
  }

  // Freeing temporary memory.
  free(pMBI);

  // This frees up the entire region reserved from previously allocating it.
  VirtualFree(baseAddress, 0, VIRTUAL_FREE_TYPE.MEM_RELEASE);
}
