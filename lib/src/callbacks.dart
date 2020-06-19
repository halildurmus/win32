// callbacks.dart

// Native functions that get called by the Win32 API

import 'dart:ffi';

typedef LPFRHookProc = Pointer<Uint32> Function(IntPtr, Int32, IntPtr, IntPtr);
typedef TimerProc = Void Function(IntPtr, Uint32, Pointer<Uint32>, Int32);
typedef EnumWindowsProc = Int32 Function(IntPtr hwnd, IntPtr lParam);
typedef WindowProc = IntPtr Function(
    IntPtr hwnd, Int32 uMsg, IntPtr wParam, IntPtr lParam);
