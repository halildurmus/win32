import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

// Virtual Query Example
void main() {
  // Allocate for a buffer with Memory Basic Information
  Pointer<MEMORY_BASIC_INFORMATION> buffer = calloc<MEMORY_BASIC_INFORMATION>();
  // Allocate for a return value
  Pointer<Uint32> returnValuePointer = calloc<Uint32>();
  // Allocate some memory and return a pointer to the base address.
  Pointer<NativeType> someMemoryPointer =
      VirtualAlloc(nullptr, 8, MEM_COMMIT, PAGE_EXECUTE_READWRITE);

  // Query someMemory
  returnValuePointer.value = VirtualQuery(
      someMemoryPointer, buffer, sizeOf<MEMORY_BASIC_INFORMATION>());

  if (returnValuePointer.value != sizeOf<MEMORY_BASIC_INFORMATION>()) {
    print('VirtualQuery function failed.');
    print('GetLastError code: ${GetLastError()}');
    return;
  }

  print('Region Size: ${buffer.ref.RegionSize}');
  print('Base Address: ${buffer.ref.BaseAddress}');
  print('Allocation Base: ${buffer.ref.AllocationBase}');
  print('Partition ID: ${buffer.ref.PartitionId}');

  // Print what kind of section this buffer is in.
  switch(buffer.ref.Type)
  {
    case MEM_IMAGE:
      print("Type: MEM_IMAGE");
      break;
    case MEM_MAPPED:
      print("Type: MEM_MAPPED");
      break;
    case MEM_PRIVATE:
      print("Type: MEM_PRIVATE");
      break;
    default:
      print("Type not found.");
      break;
  }

  // Print what can be done with the buffer's memory region
  switch (buffer.ref.AllocationProtect) {
    case PAGE_EXECUTE_READWRITE:
      print('AllocationProtect flags: EXECUTE + READ + WRITE');
      break;
    case PAGE_EXECUTE_READ:
      print('AllocationProtect flags: EXECUTE + READ');
      break;
    case PAGE_READWRITE:
      print('AllocationProtect flags: READ + WRITE');
      break;
    case PAGE_READONLY:
      print('AllocationProtect flag: READ');
      break;
    default:
      print('AllocationProtect not found.');
      break;
  }

  // Print the state of the buffer's region
  switch (buffer.ref.State) {
    case MEM_COMMIT:
      print('State of Buffer Region: Committed');
      break;
    case MEM_FREE:
      print('State of Buffer Region: Free');
      break;
    case MEM_RESERVE:
      print('State of Buffer Region: Reserve');
      break;
    default:
      print('State of Buffer Region not found.');
      break;
  }

  // Freeing temporary memory.
  free(buffer);
  free(returnValuePointer);
  // This frees up the entire region reserved from previously allocating it.
  VirtualFree(someMemoryPointer, 0, MEM_RELEASE);
}
