// winrt_typedefs.dart

// Function prototypes for C-based APIs associated with the Windows Runtime.

import 'dart:ffi';

import 'package:ffi/ffi.dart';

// HRESULT RoInitialize(
//   RO_INIT_TYPE initType
// );
typedef RoInitialize_Native = Int32 Function(Int32 initType);
typedef RoInitialize_Dart = int Function(int initType);

// void RoUninitialize();
typedef RoUninitialize_Native = Void Function();
typedef RoUninitialize_Dart = void Function();

// HRESULT RoActivateInstance(
//   HSTRING      activatableClassId,
//   IInspectable **instance
// );
typedef RoActivateInstance_Native = Int32 Function(
    IntPtr activatableClassId, Pointer<IntPtr> instance);
typedef RoActivateInstance_Dart = int Function(
    int activatableClassId, Pointer<IntPtr> instance);

// HRESULT WindowsCreateString(
//   PCNZWCH sourceString,
//   UINT32  length,
//   HSTRING *string
// );
typedef WindowsCreateString_Native = Int32 Function(
    Pointer<Utf16> sourceString, Uint32 length, Pointer<IntPtr> string);
typedef WindowsCreateString_Dart = int Function(
    Pointer<Utf16> sourceString, int length, Pointer<IntPtr> string);

// HRESULT WindowsDeleteString(
//   HSTRING string
// );
typedef WindowsDeleteString_Native = Int32 Function(IntPtr string);
typedef WindowsDeleteString_Dart = int Function(int string);

// PCWSTR WindowsGetStringRawBuffer(
//   HSTRING string,
//   UINT32  *length
// );
typedef WindowsGetStringRawBuffer_Native = Pointer<Utf16> Function(
    IntPtr string, Pointer<Uint32> length);
typedef WindowsGetStringRawBuffer_Dart = Pointer<Utf16> Function(
    int string, Pointer<Uint32> length);
