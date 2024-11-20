// Defines simple data types commonly used as aliases for C/C++ primitive types
// in Win32 development.
//
// These type definitions provide stronger typing and improve code clarity when
// working with pointers, handles, and other Win32 constructs.
//
// These can be used for FFI pointer allocation, for example:
// ```dart
// final returnValue = loggingCalloc<DWORD>();
// ```
//
// For more details on Windows data types, refer to:
// https://learn.microsoft.com/windows/win32/winprog/windows-data-types

// ignore_for_file: camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';

/// An atom.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/dataxchg/about-atom-tables>.
typedef ATOM = WORD;

/// An 8-bit unsigned integer (equivalent to `unsigned char` in C).
typedef BYTE = Uint8;

/// A 64-bit floating-point value.
typedef DOUBLE = Double;

/// A 32-bit unsigned integer.
typedef DWORD = Uint32;

/// A 32-bit unsigned integer (alias of [DWORD]).
typedef DWORD32 = DWORD;

/// A 64-bit unsigned integer.
typedef DWORD64 = Uint64;

/// A 64-bit unsigned integer.
typedef DWORDLONG = Uint64;

/// An unsigned long type for pointer precision.
typedef DWORD_PTR = ULONG_PTR;

/// A 32-bit floating-point value.
typedef FLOAT = Float;

/// A handle to a call in TAPI (Telephony Application Programming Interfaces).
typedef HCALL = DWORD;

/// A 32-bit signed integer.
typedef INT = Int32;

/// A signed 8-bit integer.
typedef INT8 = Int8;

/// A signed 16-bit integer.
typedef INT16 = Int16;

/// A signed 32-bit integer.
typedef INT32 = Int32;

/// A signed 64-bit integer.
typedef INT64 = Int64;

/// A signed integer type for pointer precision.
typedef INT_PTR = IntPtr;

/// A language identifier.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/intl/language-identifiers>.
typedef LANGID = WORD;

/// A locale identifier.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/intl/locale-identifiers>.
typedef LCID = DWORD;

/// A locale information type.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/intl/locale-information-constants>.
typedef LCTYPE = DWORD;

/// A language group identifier.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winnls/nf-winnls-enumlanguagegrouplocalesw>.
typedef LGRPID = DWORD;

/// A 32-bit signed integer.
typedef LONG = Int32;

/// A 32-bit signed integer (alias of [LONG]).
typedef LONG32 = LONG;

/// A 64-bit signed integer.
typedef LONG64 = Int64;

/// A 64-bit signed integer (alias of [LONG64]).
typedef LONGLONG = LONG64;

/// A signed long type for pointer precision.
typedef LONG_PTR = IntPtr;

/// A pointer to a [BYTE].
typedef LPBYTE = Pointer<BYTE>;

/// A pointer to a constant null-terminated string of 8-bit Windows (ANSI)
/// characters.
typedef LPCSTR = Pointer<Utf8>;

/// A pointer to a constant null-terminated string of 16-bit Unicode characters.
typedef LPCWSTR = Pointer<Utf16>;

/// A pointer to a null-terminated string of 8-bit Windows (ANSI) characters.
typedef LPSTR = Pointer<Utf8>;

/// A pointer to a null-terminated string of 16-bit Unicode characters.
typedef LPWSTR = Pointer<Utf16>;

/// A pointer to any type (equivalent to `void*` in C).
typedef LPVOID = Pointer;

/// A pointer to any type (equivalent to `void*` in C).
typedef PVOID = Pointer;

/// A 64-bit unsigned integer.
typedef QWORD = Uint64;

/// A 16-bit signed integer.
typedef SHORT = Int16;

/// The maximum number of bytes to which a pointer can point (alias of
/// [ULONG_PTR]).
typedef SIZE_T = ULONG_PTR;

/// An 8-bit unsigned integer (equivalent to `unsigned char` in C).
typedef UCHAR = Uint8;

/// A 32-bit unsigned integer.
typedef UINT = Uint32;

/// A 8-bit  unsigned integer.
typedef UINT8 = Uint8;

/// A 16-bit unsigned integer.
typedef UINT16 = Uint16;

/// A 32-bit unsigned integer.
typedef UINT32 = Uint32;

/// A 64-bit unsigned integer.
typedef UINT64 = Uint64;

/// A pointer-sized unsigned integer.
typedef UINT_PTR = IntPtr;

/// A 32-bit unsigned integer.
typedef ULONG = Uint32;

/// A 32-bit unsigned integer (alias of [ULONG]).
typedef ULONG32 = ULONG;

/// A 64-bit unsigned integer.
typedef ULONG64 = Uint64;

/// A 64-bit unsigned integer (alias of [ULONG64]).
typedef ULONGLONG = ULONG64;

/// An unsigned [LONG_PTR].
typedef ULONG_PTR = UINT_PTR;

/// A 16-bit unsigned integer.
typedef USHORT = Uint16;

/// A type alias representing a pointer to the COM v-table.
///
/// {@category com}
typedef VTablePointer = Pointer<Pointer<IntPtr>>;

/// A 16-bit Unicode character.
typedef WCHAR = Uint16;

/// A 16-bit unsigned integer.
typedef WORD = Uint16;
