// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated)

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

@TestOn('windows')

import 'package:test/test.dart';

import 'package:win32/win32.dart';

void main() {
  group('Test kernel32 functions', () {
    test('Can instantiate ActivateActCtx', () {
      final function = ActivateActCtx;
      expect(function, isA<Function>());
    });
    test('Can instantiate AllocConsole', () {
      final function = AllocConsole;
      expect(function, isA<Function>());
    });
    test('Can instantiate AttachConsole', () {
      final function = AttachConsole;
      expect(function, isA<Function>());
    });
    test('Can instantiate Beep', () {
      final function = Beep;
      expect(function, isA<Function>());
    });
    test('Can instantiate BeginUpdateResource', () {
      final function = BeginUpdateResource;
      expect(function, isA<Function>());
    });
    test('Can instantiate CloseHandle', () {
      final function = CloseHandle;
      expect(function, isA<Function>());
    });
    test('Can instantiate ClosePseudoConsole', () {
      final function = ClosePseudoConsole;
      expect(function, isA<Function>());
    });
    test('Can instantiate CreateConsoleScreenBuffer', () {
      final function = CreateConsoleScreenBuffer;
      expect(function, isA<Function>());
    });
    test('Can instantiate CreateFile', () {
      final function = CreateFile;
      expect(function, isA<Function>());
    });
    test('Can instantiate CreatePipe', () {
      final function = CreatePipe;
      expect(function, isA<Function>());
    });
    test('Can instantiate CreateProcess', () {
      final function = CreateProcess;
      expect(function, isA<Function>());
    });
    test('Can instantiate CreatePseudoConsole', () {
      final function = CreatePseudoConsole;
      expect(function, isA<Function>());
    });
    test('Can instantiate DeactivateActCtx', () {
      final function = DeactivateActCtx;
      expect(function, isA<Function>());
    });
    test('Can instantiate EndUpdateResource', () {
      final function = EndUpdateResource;
      expect(function, isA<Function>());
    });
    test('Can instantiate EnumResourceNames', () {
      final function = EnumResourceNames;
      expect(function, isA<Function>());
    });
    test('Can instantiate EnumResourceTypes', () {
      final function = EnumResourceTypes;
      expect(function, isA<Function>());
    });
    test('Can instantiate FillConsoleOutputCharacter', () {
      final function = FillConsoleOutputCharacter;
      expect(function, isA<Function>());
    });
    test('Can instantiate FillConsoleOutputAttribute', () {
      final function = FillConsoleOutputAttribute;
      expect(function, isA<Function>());
    });
    test('Can instantiate FindFirstVolume', () {
      final function = FindFirstVolume;
      expect(function, isA<Function>());
    });
    test('Can instantiate FindNextVolume', () {
      final function = FindNextVolume;
      expect(function, isA<Function>());
    });
    test('Can instantiate FindVolumeClose', () {
      final function = FindVolumeClose;
      expect(function, isA<Function>());
    });
    test('Can instantiate FlushConsoleInputBuffer', () {
      final function = FlushConsoleInputBuffer;
      expect(function, isA<Function>());
    });
    test('Can instantiate FormatMessage', () {
      final function = FormatMessage;
      expect(function, isA<Function>());
    });
    test('Can instantiate FreeConsole', () {
      final function = FreeConsole;
      expect(function, isA<Function>());
    });
    test('Can instantiate FreeLibrary', () {
      final function = FreeLibrary;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetComputerNameEx', () {
      final function = GetComputerNameEx;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetConsoleCursorInfo', () {
      final function = GetConsoleCursorInfo;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetConsoleMode', () {
      final function = GetConsoleMode;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetConsoleScreenBufferInfo', () {
      final function = GetConsoleScreenBufferInfo;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetConsoleSelectionInfo', () {
      final function = GetConsoleSelectionInfo;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetConsoleTitle', () {
      final function = GetConsoleTitle;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetConsoleWindow', () {
      final function = GetConsoleWindow;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetCurrentProcess', () {
      final function = GetCurrentProcess;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetLargestConsoleWindowSize', () {
      final function = GetLargestConsoleWindowSize;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetLastError', () {
      final function = GetLastError;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetModuleFileName', () {
      final function = GetModuleFileName;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetModuleHandle', () {
      final function = GetModuleHandle;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetPhysicallyInstalledSystemMemory', () {
      final function = GetPhysicallyInstalledSystemMemory;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetProcAddress', () {
      final function = GetProcAddress;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetProcessHeap', () {
      final function = GetProcessHeap;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetProductInfo', () {
      final function = GetProductInfo;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetStdHandle', () {
      final function = GetStdHandle;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetSystemPowerStatus', () {
      final function = GetSystemPowerStatus;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetSystemInfo', () {
      final function = GetSystemInfo;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetTempPath', () {
      final function = GetTempPath;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetVersionEx', () {
      final function = GetVersionEx;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetVolumePathNamesForVolumeName', () {
      final function = GetVolumePathNamesForVolumeName;
      expect(function, isA<Function>());
    });
    test('Can instantiate HeapAlloc', () {
      final function = HeapAlloc;
      expect(function, isA<Function>());
    });
    test('Can instantiate HeapFree', () {
      final function = HeapFree;
      expect(function, isA<Function>());
    });
    test('Can instantiate InitializeProcThreadAttributeList', () {
      final function = InitializeProcThreadAttributeList;
      expect(function, isA<Function>());
    });
    test('Can instantiate IsDebuggerPresent', () {
      final function = IsDebuggerPresent;
      expect(function, isA<Function>());
    });
    test('Can instantiate LoadLibrary', () {
      final function = LoadLibrary;
      expect(function, isA<Function>());
    });
    test('Can instantiate OpenProcess', () {
      final function = OpenProcess;
      expect(function, isA<Function>());
    });
    test('Can instantiate QueryDosDevice', () {
      final function = QueryDosDevice;
      expect(function, isA<Function>());
    });
    test('Can instantiate QueryPerformanceCounter', () {
      final function = QueryPerformanceCounter;
      expect(function, isA<Function>());
    });
    test('Can instantiate QueryPerformanceFrequency', () {
      final function = QueryPerformanceFrequency;
      expect(function, isA<Function>());
    });
    test('Can instantiate ReadConsole', () {
      final function = ReadConsole;
      expect(function, isA<Function>());
    });
    test('Can instantiate ReadFile', () {
      final function = ReadFile;
      expect(function, isA<Function>());
    });
    test('Can instantiate ReadProcessMemory', () {
      final function = ReadProcessMemory;
      expect(function, isA<Function>());
    });
    test('Can instantiate ResizePseudoConsole', () {
      final function = ResizePseudoConsole;
      expect(function, isA<Function>());
    });
    test('Can instantiate ScrollConsoleScreenBuffer', () {
      final function = ScrollConsoleScreenBuffer;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetConsoleCtrlHandler', () {
      final function = SetConsoleCtrlHandler;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetConsoleCursorInfo', () {
      final function = SetConsoleCursorInfo;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetConsoleCursorPosition', () {
      final function = SetConsoleCursorPosition;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetConsoleDisplayMode', () {
      final function = SetConsoleDisplayMode;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetConsoleMode', () {
      final function = SetConsoleMode;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetConsoleTextAttribute', () {
      final function = SetConsoleTextAttribute;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetConsoleWindowInfo', () {
      final function = SetConsoleWindowInfo;
      expect(function, isA<Function>());
    });
    test('Can instantiate Sleep', () {
      final function = Sleep;
      expect(function, isA<Function>());
    });
    test('Can instantiate UpdateProcThreadAttribute', () {
      final function = UpdateProcThreadAttribute;
      expect(function, isA<Function>());
    });
    test('Can instantiate UpdateResource', () {
      final function = UpdateResource;
      expect(function, isA<Function>());
    });
    test('Can instantiate VirtualAlloc', () {
      final function = VirtualAlloc;
      expect(function, isA<Function>());
    });
    test('Can instantiate VirtualFree', () {
      final function = VirtualFree;
      expect(function, isA<Function>());
    });
    test('Can instantiate WriteConsole', () {
      final function = WriteConsole;
      expect(function, isA<Function>());
    });
    test('Can instantiate WriteFile', () {
      final function = WriteFile;
      expect(function, isA<Function>());
    });
    test('Can instantiate WriteProcessMemory', () {
      final function = WriteProcessMemory;
      expect(function, isA<Function>());
    });
  });

  group('Test user32 functions', () {
    test('Can instantiate AppendMenu', () {
      final function = AppendMenu;
      expect(function, isA<Function>());
    });
    test('Can instantiate BeginPaint', () {
      final function = BeginPaint;
      expect(function, isA<Function>());
    });
    test('Can instantiate BringWindowToTop', () {
      final function = BringWindowToTop;
      expect(function, isA<Function>());
    });
    test('Can instantiate CreateAcceleratorTable', () {
      final function = CreateAcceleratorTable;
      expect(function, isA<Function>());
    });
    test('Can instantiate CreateMenu', () {
      final function = CreateMenu;
      expect(function, isA<Function>());
    });
    test('Can instantiate CreateWindowEx', () {
      final function = CreateWindowEx;
      expect(function, isA<Function>());
    });
    test('Can instantiate DefWindowProc', () {
      final function = DefWindowProc;
      expect(function, isA<Function>());
    });
    test('Can instantiate DestroyWindow', () {
      final function = DestroyWindow;
      expect(function, isA<Function>());
    });
    test('Can instantiate DispatchMessage', () {
      final function = DispatchMessage;
      expect(function, isA<Function>());
    });
    test('Can instantiate DrawText', () {
      final function = DrawText;
      expect(function, isA<Function>());
    });
    test('Can instantiate EnableMenuItem', () {
      final function = EnableMenuItem;
      expect(function, isA<Function>());
    });
    test('Can instantiate EndPaint', () {
      final function = EndPaint;
      expect(function, isA<Function>());
    });
    test('Can instantiate EnumDisplayMonitors', () {
      final function = EnumDisplayMonitors;
      expect(function, isA<Function>());
    });
    test('Can instantiate EnumWindows', () {
      final function = EnumWindows;
      expect(function, isA<Function>());
    });
    test('Can instantiate FillRect', () {
      final function = FillRect;
      expect(function, isA<Function>());
    });
    test('Can instantiate FindWindowEx', () {
      final function = FindWindowEx;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetClientRect', () {
      final function = GetClientRect;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetDC', () {
      final function = GetDC;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetDpiForSystem', () {
      final function = GetDpiForSystem;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetForegroundWindow', () {
      final function = GetForegroundWindow;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetMessage', () {
      final function = GetMessage;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetMonitorInfo', () {
      final function = GetMonitorInfo;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetParent', () {
      final function = GetParent;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetScrollInfo', () {
      final function = GetScrollInfo;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetShellWindow', () {
      final function = GetShellWindow;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetSysColor', () {
      final function = GetSysColor;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetSystemDpiForProcess', () {
      final function = GetSystemDpiForProcess;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetSystemMetrics', () {
      final function = GetSystemMetrics;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetWindow', () {
      final function = GetWindow;
      expect(function, isA<Function>());
    });
    test('Can instantiate InvalidateRect', () {
      final function = InvalidateRect;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetWindowText', () {
      final function = GetWindowText;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetWindowTextLength', () {
      final function = GetWindowTextLength;
      expect(function, isA<Function>());
    });
    test('Can instantiate IsClipboardFormatAvailable', () {
      final function = IsClipboardFormatAvailable;
      expect(function, isA<Function>());
    });
    test('Can instantiate IsDialogMessage', () {
      final function = IsDialogMessage;
      expect(function, isA<Function>());
    });
    test('Can instantiate IsWindowVisible', () {
      final function = IsWindowVisible;
      expect(function, isA<Function>());
    });
    test('Can instantiate KillTimer', () {
      final function = KillTimer;
      expect(function, isA<Function>());
    });
    test('Can instantiate LoadCursor', () {
      final function = LoadCursor;
      expect(function, isA<Function>());
    });
    test('Can instantiate LoadIcon', () {
      final function = LoadIcon;
      expect(function, isA<Function>());
    });
    test('Can instantiate LockWorkStation', () {
      final function = LockWorkStation;
      expect(function, isA<Function>());
    });
    test('Can instantiate MessageBox', () {
      final function = MessageBox;
      expect(function, isA<Function>());
    });
    test('Can instantiate MonitorFromPoint', () {
      final function = MonitorFromPoint;
      expect(function, isA<Function>());
    });
    test('Can instantiate MonitorFromWindow', () {
      final function = MonitorFromWindow;
      expect(function, isA<Function>());
    });
    test('Can instantiate MoveWindow', () {
      final function = MoveWindow;
      expect(function, isA<Function>());
    });
    test('Can instantiate MsgWaitForMultipleObjects', () {
      final function = MsgWaitForMultipleObjects;
      expect(function, isA<Function>());
    });
    test('Can instantiate PeekMessage', () {
      final function = PeekMessage;
      expect(function, isA<Function>());
    });
    test('Can instantiate RegisterClass', () {
      final function = RegisterClass;
      expect(function, isA<Function>());
    });
    test('Can instantiate RegisterWindowMessage', () {
      final function = RegisterWindowMessage;
      expect(function, isA<Function>());
    });
    test('Can instantiate ReleaseDC', () {
      final function = ReleaseDC;
      expect(function, isA<Function>());
    });
    test('Can instantiate ScrollWindow', () {
      final function = ScrollWindow;
      expect(function, isA<Function>());
    });
    test('Can instantiate SendInput', () {
      final function = SendInput;
      expect(function, isA<Function>());
    });
    test('Can instantiate SendMessage', () {
      final function = SendMessage;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetFocus', () {
      final function = SetFocus;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetParent', () {
      final function = SetParent;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetScrollInfo', () {
      final function = SetScrollInfo;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetProcessDPIAware', () {
      final function = SetProcessDPIAware;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetTimer', () {
      final function = SetTimer;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetWindowLongPtr', () {
      final function = SetWindowLongPtr;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetWindowPos', () {
      final function = SetWindowPos;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetWindowText', () {
      final function = SetWindowText;
      expect(function, isA<Function>());
    });
    test('Can instantiate ShowWindow', () {
      final function = ShowWindow;
      expect(function, isA<Function>());
    });
    test('Can instantiate ShowWindowAsync', () {
      final function = ShowWindowAsync;
      expect(function, isA<Function>());
    });
    test('Can instantiate SystemParametersInfo', () {
      final function = SystemParametersInfo;
      expect(function, isA<Function>());
    });
    test('Can instantiate TranslateAccelerator', () {
      final function = TranslateAccelerator;
      expect(function, isA<Function>());
    });
    test('Can instantiate TranslateMessage', () {
      final function = TranslateMessage;
      expect(function, isA<Function>());
    });
    test('Can instantiate PostQuitMessage', () {
      final function = PostQuitMessage;
      expect(function, isA<Function>());
    });
    test('Can instantiate UpdateWindow', () {
      final function = UpdateWindow;
      expect(function, isA<Function>());
    });
    test('Can instantiate WindowFromPhysicalPoint', () {
      final function = WindowFromPhysicalPoint;
      expect(function, isA<Function>());
    });
    test('Can instantiate WindowFromPoint', () {
      final function = WindowFromPoint;
      expect(function, isA<Function>());
    });
  });

  group('Test bthprops functions', () {
    test('Can instantiate BluetoothAuthenticateDeviceEx', () {
      final function = BluetoothAuthenticateDeviceEx;
      expect(function, isA<Function>());
    });
    test('Can instantiate BluetoothFindDeviceClose', () {
      final function = BluetoothFindDeviceClose;
      expect(function, isA<Function>());
    });
    test('Can instantiate BluetoothFindFirstDevice', () {
      final function = BluetoothFindFirstDevice;
      expect(function, isA<Function>());
    });
    test('Can instantiate BluetoothFindFirstRadio', () {
      final function = BluetoothFindFirstRadio;
      expect(function, isA<Function>());
    });
    test('Can instantiate BluetoothFindNextDevice', () {
      final function = BluetoothFindNextDevice;
      expect(function, isA<Function>());
    });
    test('Can instantiate BluetoothFindNextRadio', () {
      final function = BluetoothFindNextRadio;
      expect(function, isA<Function>());
    });
    test('Can instantiate BluetoothFindRadioClose', () {
      final function = BluetoothFindRadioClose;
      expect(function, isA<Function>());
    });
    test('Can instantiate BluetoothIsConnectable', () {
      final function = BluetoothIsConnectable;
      expect(function, isA<Function>());
    });
    test('Can instantiate BluetoothIsDiscoverable', () {
      final function = BluetoothIsDiscoverable;
      expect(function, isA<Function>());
    });
    test('Can instantiate BluetoothUpdateDeviceRecord', () {
      final function = BluetoothUpdateDeviceRecord;
      expect(function, isA<Function>());
    });
  });

  group('Test powrprof functions', () {
    test('Can instantiate CallNtPowerInformation', () {
      final function = CallNtPowerInformation;
      expect(function, isA<Function>());
    });
  });

  group('Test comdlg32 functions', () {
    test('Can instantiate ChooseColor', () {
      final function = ChooseColor;
      expect(function, isA<Function>());
    });
    test('Can instantiate ChooseFont', () {
      final function = ChooseFont;
      expect(function, isA<Function>());
    });
    test('Can instantiate FindText', () {
      final function = FindText;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetOpenFileName', () {
      final function = GetOpenFileName;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetSaveFileName', () {
      final function = GetSaveFileName;
      expect(function, isA<Function>());
    });
    test('Can instantiate ReplaceText', () {
      final function = ReplaceText;
      expect(function, isA<Function>());
    });
  });

  group('Test ole32 functions', () {
    test('Can instantiate CLSIDFromString', () {
      final function = CLSIDFromString;
      expect(function, isA<Function>());
    });
    test('Can instantiate CoCreateGuid', () {
      final function = CoCreateGuid;
      expect(function, isA<Function>());
    });
    test('Can instantiate CoCreateInstance', () {
      final function = CoCreateInstance;
      expect(function, isA<Function>());
    });
    test('Can instantiate CoGetClassObject', () {
      final function = CoGetClassObject;
      expect(function, isA<Function>());
    });
    test('Can instantiate CoInitializeEx', () {
      final function = CoInitializeEx;
      expect(function, isA<Function>());
    });
    test('Can instantiate CoInitializeSecurity', () {
      final function = CoInitializeSecurity;
      expect(function, isA<Function>());
    });
    test('Can instantiate CoSetProxyBlanket', () {
      final function = CoSetProxyBlanket;
      expect(function, isA<Function>());
    });
    test('Can instantiate CoTaskMemFree', () {
      final function = CoTaskMemFree;
      expect(function, isA<Function>());
    });
    test('Can instantiate CoUninitialize', () {
      final function = CoUninitialize;
      expect(function, isA<Function>());
    });
    test('Can instantiate IIDFromString', () {
      final function = IIDFromString;
      expect(function, isA<Function>());
    });
  });

  group('Test gdi32 functions', () {
    test('Can instantiate CreateFontIndirect', () {
      final function = CreateFontIndirect;
      expect(function, isA<Function>());
    });
    test('Can instantiate CreateSolidBrush', () {
      final function = CreateSolidBrush;
      expect(function, isA<Function>());
    });
    test('Can instantiate DeleteObject', () {
      final function = DeleteObject;
      expect(function, isA<Function>());
    });
    test('Can instantiate EnumFontFamiliesEx', () {
      final function = EnumFontFamiliesEx;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetObject', () {
      final function = GetObject;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetStockObject', () {
      final function = GetStockObject;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetTextMetrics', () {
      final function = GetTextMetrics;
      expect(function, isA<Function>());
    });
    test('Can instantiate LineTo', () {
      final function = LineTo;
      expect(function, isA<Function>());
    });
    test('Can instantiate MoveToEx', () {
      final function = MoveToEx;
      expect(function, isA<Function>());
    });
    test('Can instantiate SaveDC', () {
      final function = SaveDC;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetBkColor', () {
      final function = SetBkColor;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetBkMode', () {
      final function = SetBkMode;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetMapMode', () {
      final function = SetMapMode;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetTextColor', () {
      final function = SetTextColor;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetViewportExtEx', () {
      final function = SetViewportExtEx;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetViewportOrgEx', () {
      final function = SetViewportOrgEx;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetWindowExtEx', () {
      final function = SetWindowExtEx;
      expect(function, isA<Function>());
    });
    test('Can instantiate StretchDIBits', () {
      final function = StretchDIBits;
      expect(function, isA<Function>());
    });
    test('Can instantiate TextOut', () {
      final function = TextOut;
      expect(function, isA<Function>());
    });
  });

  group('Test advapi32 functions', () {
    test('Can instantiate CredDelete', () {
      final function = CredDelete;
      expect(function, isA<Function>());
    });
    test('Can instantiate CredFree', () {
      final function = CredFree;
      expect(function, isA<Function>());
    });
    test('Can instantiate CredRead', () {
      final function = CredRead;
      expect(function, isA<Function>());
    });
    test('Can instantiate CredWrite', () {
      final function = CredWrite;
      expect(function, isA<Function>());
    });
    test('Can instantiate RegCloseKey', () {
      final function = RegCloseKey;
      expect(function, isA<Function>());
    });
    test('Can instantiate RegOpenKeyEx', () {
      final function = RegOpenKeyEx;
      expect(function, isA<Function>());
    });
    test('Can instantiate RegQueryValueEx', () {
      final function = RegQueryValueEx;
      expect(function, isA<Function>());
    });
  });

  group('Test dxva2 functions', () {
    test('Can instantiate DestroyPhysicalMonitor', () {
      final function = DestroyPhysicalMonitor;
      expect(function, isA<Function>());
    });
    test('Can instantiate DestroyPhysicalMonitors', () {
      final function = DestroyPhysicalMonitors;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetMonitorBrightness', () {
      final function = GetMonitorBrightness;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetMonitorCapabilities', () {
      final function = GetMonitorCapabilities;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetMonitorColorTemperature', () {
      final function = GetMonitorColorTemperature;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetMonitorContrast', () {
      final function = GetMonitorContrast;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetMonitorDisplayAreaPosition', () {
      final function = GetMonitorDisplayAreaPosition;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetMonitorDisplayAreaSize', () {
      final function = GetMonitorDisplayAreaSize;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetMonitorRedGreenOrBlueDrive', () {
      final function = GetMonitorRedGreenOrBlueDrive;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetMonitorRedGreenOrBlueGain', () {
      final function = GetMonitorRedGreenOrBlueGain;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetMonitorTechnologyType', () {
      final function = GetMonitorTechnologyType;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetNumberOfPhysicalMonitorsFromHMONITOR', () {
      final function = GetNumberOfPhysicalMonitorsFromHMONITOR;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetPhysicalMonitorsFromHMONITOR', () {
      final function = GetPhysicalMonitorsFromHMONITOR;
      expect(function, isA<Function>());
    });
    test('Can instantiate SaveCurrentMonitorSettings', () {
      final function = SaveCurrentMonitorSettings;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetMonitorBrightness', () {
      final function = SetMonitorBrightness;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetMonitorColorTemperature', () {
      final function = SetMonitorColorTemperature;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetMonitorContrast', () {
      final function = SetMonitorContrast;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetMonitorDisplayAreaPosition', () {
      final function = SetMonitorDisplayAreaPosition;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetMonitorDisplayAreaSize', () {
      final function = SetMonitorDisplayAreaSize;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetMonitorRedGreenOrBlueDrive', () {
      final function = SetMonitorRedGreenOrBlueDrive;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetMonitorRedGreenOrBlueGain', () {
      final function = SetMonitorRedGreenOrBlueGain;
      expect(function, isA<Function>());
    });
  });

  group('Test comctl32 functions', () {
    test('Can instantiate DrawStatusText', () {
      final function = DrawStatusText;
      expect(function, isA<Function>());
    });
    test('Can instantiate InitCommonControlsEx', () {
      final function = InitCommonControlsEx;
      expect(function, isA<Function>());
    });
  });

  group('Test psapi functions', () {
    test('Can instantiate EnumProcesses', () {
      final function = EnumProcesses;
      expect(function, isA<Function>());
    });
    test('Can instantiate EnumProcessModules', () {
      final function = EnumProcessModules;
      expect(function, isA<Function>());
    });
    test('Can instantiate EnumProcessModulesEx', () {
      final function = EnumProcessModulesEx;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetModuleBaseName', () {
      final function = GetModuleBaseName;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetModuleFileNameEx', () {
      final function = GetModuleFileNameEx;
      expect(function, isA<Function>());
    });
  });

  group('Test shell32 functions', () {
    test('Can instantiate FindExecutable', () {
      final function = FindExecutable;
      expect(function, isA<Function>());
    });
    test('Can instantiate ShellAbout', () {
      final function = ShellAbout;
      expect(function, isA<Function>());
    });
    test('Can instantiate ShellExecute', () {
      final function = ShellExecute;
      expect(function, isA<Function>());
    });
    test('Can instantiate ShellExecuteEx', () {
      final function = ShellExecuteEx;
      expect(function, isA<Function>());
    });
    test('Can instantiate SHEmptyRecycleBin', () {
      final function = SHEmptyRecycleBin;
      expect(function, isA<Function>());
    });
    test('Can instantiate SHGetDiskFreeSpaceEx', () {
      final function = SHGetDiskFreeSpaceEx;
      expect(function, isA<Function>());
    });
    test('Can instantiate SHGetDriveMedia', () {
      final function = SHGetDriveMedia;
      expect(function, isA<Function>());
    });
    test('Can instantiate SHGetFolderPath', () {
      final function = SHGetFolderPath;
      expect(function, isA<Function>());
    });
    test('Can instantiate SHGetKnownFolderPath', () {
      final function = SHGetKnownFolderPath;
      expect(function, isA<Function>());
    });
    test('Can instantiate SHQueryRecycleBin', () {
      final function = SHQueryRecycleBin;
      expect(function, isA<Function>());
    });
  });

  group('Test shcore functions', () {
    test('Can instantiate GetDpiForMonitor', () {
      final function = GetDpiForMonitor;
      expect(function, isA<Function>());
    });
    test('Can instantiate GetProcessDpiAwareness', () {
      final function = GetProcessDpiAwareness;
      expect(function, isA<Function>());
    });
    test('Can instantiate SetProcessDpiAwareness', () {
      final function = SetProcessDpiAwareness;
      expect(function, isA<Function>());
    });
  });

  group('Test oleaut32 functions', () {
    test('Can instantiate VariantClear', () {
      final function = VariantClear;
      expect(function, isA<Function>());
    });
  });
}
