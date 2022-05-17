// IMetaDataDispenser.dart

// coverage:ignore-file

// ignore_for_file: camel_case_types
// ignore_for_file: constant_identifier_names
// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

typedef _DefineScope_Native = Int32 Function(Pointer obj, Pointer<GUID> rclsid,
    Uint32 dwCreateFlags, Pointer<GUID> riid, Pointer<Pointer> ppIUnk);
typedef _DefineScope_Dart = int Function(Pointer obj, Pointer<GUID> rclsid,
    int dwCreateFlags, Pointer<GUID> riid, Pointer<Pointer> ppIUnk);

typedef _OpenScope_Native = Int32 Function(Pointer obj, Pointer<Utf16> szScope,
    Uint32 dwOpenFlags, Pointer<GUID> riid, Pointer<Pointer> ppIUnk);
typedef _OpenScope_Dart = int Function(Pointer obj, Pointer<Utf16> szScope,
    int dwOpenFlags, Pointer<GUID> riid, Pointer<Pointer> ppIUnk);

typedef _OpenScopeOnMemory_Native = Int32 Function(
    Pointer obj,
    Pointer<Uint8> pData,
    Uint32 cbData,
    Uint32 dwOpenFlags,
    Pointer<GUID> riid,
    Pointer<Pointer> ppIUnk);
typedef _OpenScopeOnMemory_Dart = int Function(
    Pointer obj,
    Pointer<Uint8> pData,
    int cbData,
    int dwOpenFlags,
    Pointer<GUID> riid,
    Pointer<Pointer> ppIUnk);

/// Provides methods to create a new metadata scope, or open an existing one.
///
/// {@category Interface}
class IMetaDataDispenser extends IUnknown {
  // vtable begins at 3, ends at 5

  static const IID = '{809C652E-7396-11D2-9771-00A0C9B4D50C}';

  IMetaDataDispenser(super.ptr);

  int DefineScope(Pointer<GUID> rclsid, int dwCreateFlags, Pointer<GUID> riid,
          Pointer<Pointer> ppIUnk) =>
      Pointer<NativeFunction<_DefineScope_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<_DefineScope_Dart>()(
          ptr.ref.lpVtbl, rclsid, dwCreateFlags, riid, ppIUnk);

  int OpenScope(Pointer<Utf16> szScope, int dwOpenFlags, Pointer<GUID> riid,
          Pointer<Pointer> ppIUnk) =>
      Pointer<NativeFunction<_OpenScope_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<_OpenScope_Dart>()(
          ptr.ref.lpVtbl, szScope, dwOpenFlags, riid, ppIUnk);

  int OpenScopeOnMemory(Pointer<Uint8> pData, int cbData, int dwOpenFlags,
          Pointer<GUID> riid, Pointer<Pointer> ppIUnk) =>
      Pointer<NativeFunction<_OpenScopeOnMemory_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<_OpenScopeOnMemory_Dart>()(
          ptr.ref.lpVtbl, pData, cbData, dwOpenFlags, riid, ppIUnk);
}
