// ignore_for_file: camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';

typedef BYTE = Uint8;
typedef DWORD = Uint32;
typedef LPWSTR = Pointer<Utf16>;
typedef ULONG = Uint32;
typedef VTablePointer = Pointer<Pointer<IntPtr>>;
typedef WCHAR = Uint16;
