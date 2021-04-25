// Simple data types that are commonly used as aliases for C/C++ primitive data
// types in Win32 development.
//
// These can be used for FFI pointer allocation, for example:
//
// ```dart
// final returnValue = calloc<DWORD>();
// ```

import 'dart:ffi';

typedef BOOL = Uint32;
typedef BOOLEAN = BYTE;
typedef BYTE = Uint8;
typedef CHAR = Uint8;
typedef DOUBLE = Double;
typedef DWORD = Uint32;
typedef DWORD_PTR = ULONG_PTR;
typedef DWORD32 = Uint32;
typedef DWORD64 = Uint64;
typedef DWORDLONG = Uint64;
typedef FLOAT = Float;
typedef HANDLE = IntPtr;
typedef HCALL = DWORD;
typedef HRESULT = LONG;
typedef HSTRING = IntPtr;
typedef INT = Int32;
typedef INT8 = Int8;
typedef INT16 = Int16;
typedef INT32 = Int32;
typedef INT64 = Int64;
typedef LONG = Int32;
typedef LONGLONG = Int64;
typedef LONG_PTR = IntPtr;
typedef LONG32 = Int32;
typedef LONG64 = Int64;
typedef NTSTATUS = Int32;
typedef QWORD = Uint64;
typedef SHORT = Int16;
typedef SIZE_T = ULONG_PTR;
typedef UINT = Uint32;
typedef UINT8 = Uint8;
typedef UINT16 = Uint16;
typedef UINT32 = Uint32;
typedef UINT64 = Uint64;
typedef ULONG = Uint32;
typedef ULONG_PTR = IntPtr;
typedef ULONG32 = Uint32;
typedef ULONG64 = Uint64;
typedef ULONGLONG = Uint64;
typedef USHORT = Uint16;
typedef WCHAR = Uint16;
typedef WORD = Uint16;
