import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'console.dart';

Pointer<IntPtr> pseudoConsoleHandle;
Pointer attributeListPtr;

final stdOut = GetStdHandle(STD_OUTPUT_HANDLE);
final stdIn = GetStdHandle(STD_INPUT_HANDLE);

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

  // returns an error by design on the first call, per Win32 docs
  InitializeProcThreadAttributeList(nullptr, 1, 0, bytesRequired);
  print('required: ${bytesRequired.value}');

  attributeListPtr = allocate<Uint8>(count: bytesRequired.value);

  if (InitializeProcThreadAttributeList(
          attributeListPtr, 1, 0, bytesRequired) ==
      0) {
    throw WindowsException(HRESULT_FROM_WIN32(GetLastError()));
  }

  print('pseudoConsoleHandle: ${pseudoConsoleHandle.value}');
  if (UpdateProcThreadAttribute(
          attributeListPtr,
          0,
          PROC_THREAD_ATTRIBUTE_PSEUDOCONSOLE,
          pseudoConsoleHandle,
          sizeOf<IntPtr>(),
          nullptr,
          nullptr) ==
      0) {
    throw WindowsException(HRESULT_FROM_WIN32(GetLastError()));
  }
}

void setupPseudoConsole() {
  final procInfo = PROCESS_INFORMATION.allocate();
  final cmdString = TEXT('cmd.exe');
  final startupInfo = STARTUPINFOEX.allocate();
  print('STARTUPINFOEX is ${sizeOf<STARTUPINFOEX>()}');
  startupInfo.lpAttributeList = attributeListPtr;

  if (CreateProcess(
          nullptr,
          cmdString,
          nullptr,
          nullptr,
          FALSE,
          EXTENDED_STARTUPINFO_PRESENT,
          nullptr,
          nullptr,
          startupInfo.addressOf,
          procInfo.addressOf) ==
      0) {
    throw WindowsException(HRESULT_FROM_WIN32(GetLastError()));
  }
}

void doStuff() {
  // Input "echo Hello, World!", press enter to have cmd process the command,
  // input an up arrow (to get the previous command), and enter again to execute.
  final echoString = 'echo Hello, World!\n\x1b[A\n';
  final echoStringPtr = toCString(echoString);
  final dwCharsWritten = allocate<Uint32>();
  WriteFile(stdIn, echoStringPtr, echoString.length, dwCharsWritten, nullptr);
}

void closePseudoConsole() {
  // DeleteProcThreadAttributeList(attributeListPtr);
  ClosePseudoConsole(pseudoConsoleHandle);
}

void pty() {
  final consoleMode = allocate<Uint32>();
  GetConsoleMode(stdOut, consoleMode);
  var hr = SetConsoleMode(
      stdOut, consoleMode.value | ENABLE_VIRTUAL_TERMINAL_PROCESSING);
  if (FAILED(hr)) {
    throw WindowsException(hr);
  }

  initPseudoConsole();
  prepareStartupInformation();
  setupPseudoConsole();
  doStuff();
  closePseudoConsole();

  print('all done');
}

void test() {
  final procInfo = PROCESS_INFORMATION.allocate();
  final cmdString = TEXT('notepad.exe');
  final startupInfo = STARTUPINFOEX.allocate();
  startupInfo.lpAttributeList = nullptr;

  if (CreateProcess(
          nullptr,
          cmdString,
          nullptr,
          nullptr,
          FALSE,
          EXTENDED_STARTUPINFO_PRESENT,
          nullptr,
          nullptr,
          startupInfo.addressOf,
          procInfo.addressOf) ==
      0) {
    throw WindowsException(HRESULT_FROM_WIN32(GetLastError()));
  }
}

void main() {
  // test();
  pty();
}
