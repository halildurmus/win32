import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

Pointer<IntPtr> pseudoConsoleHandle;

void initPseudoConsole() {
  final inputReadSideHandle = allocate<IntPtr>();
  final inputWriteSideHandle = allocate<IntPtr>();
  final outputReadSideHandle = allocate<IntPtr>();
  final outputWriteSideHandle = allocate<IntPtr>();

  if (CreatePipe(inputReadSideHandle, inputWriteSideHandle, nullptr, 0) == 0) {
    throw WindowsException(HRESULT_FROM_WIN32(GetLastError()));
  }
  if (CreatePipe(outputReadSideHandle, outputWriteSideHandle, nullptr, 0) ==
      0) {
    throw WindowsException(HRESULT_FROM_WIN32(GetLastError()));
  }

  pseudoConsoleHandle = allocate<IntPtr>();
  final size = (25 << 16) /* Y */ + 80; /* X */
  final hr = CreatePseudoConsole(size, inputReadSideHandle.value,
      outputWriteSideHandle.value, 0, pseudoConsoleHandle);
  if (FAILED(hr)) {
    throw WindowsException(hr);
  }
}

void prepareStartupInformation() {
  final bytesRequired = allocate<IntPtr>();
  InitializeProcThreadAttributeList(nullptr, 1, 0, bytesRequired);

  final lpAttributeList = HeapAlloc(GetProcessHeap(), 0, bytesRequired.value);
  if (lpAttributeList.address == 0) {
    throw OutOfMemoryError();
  }

  if (InitializeProcThreadAttributeList(lpAttributeList, 1, 0, bytesRequired) ==
      0) {
    HeapFree(GetProcessHeap(), 0, lpAttributeList);
    throw WindowsException(HRESULT_FROM_WIN32(GetLastError()));
  }

  UpdateProcThreadAttribute(
      lpAttributeList,
      0,
      Pointer.fromAddress(PROC_THREAD_ATTRIBUTE_PSEUDOCONSOLE),
      pseudoConsoleHandle,
      sizeOf<IntPtr>(),
      nullptr,
      nullptr);
}

void main() {
  final stdOut = GetStdHandle(STD_OUTPUT_HANDLE);

  final consoleMode = allocate<Uint32>();
  GetConsoleMode(stdOut, consoleMode);
  var hr = SetConsoleMode(
      stdOut, consoleMode.value | ENABLE_VIRTUAL_TERMINAL_PROCESSING);
  if (FAILED(hr)) {
    throw WindowsException(hr);
  }

  initPseudoConsole();
  prepareStartupInformation();
  print('all done');
}
