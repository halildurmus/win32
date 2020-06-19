// IMetaDataDispenser.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../structs.dart';
import '../ole32.dart';
import '../com/combase.dart';

import 'IUnknown.dart';

const IID_IMetaDataDispenser = '{809C652E-7396-11D2-9771-00A0C9B4D50C}';

typedef _DefineScope_Native = Int32 Function(Pointer obj, Pointer<GUID> rclsid,
    Uint32 dwCreateFlags, Pointer<GUID> riid, Pointer<IntPtr> ppIUnk);
typedef _DefineScope_Dart = int Function(Pointer obj, Pointer<GUID> rclsid,
    int dwCreateFlags, Pointer<GUID> riid, Pointer<IntPtr> ppIUnk);

typedef _OpenScope_Native = Int32 Function(Pointer obj, Pointer<Utf16> szScope,
    Uint32 dwOpenFlags, Pointer<GUID> riid, Pointer<IntPtr> ppIUnk);
typedef _OpenScope_Dart = int Function(Pointer obj, Pointer<Utf16> szScope,
    int dwOpenFlags, Pointer<GUID> riid, Pointer<IntPtr> ppIUnk);

typedef _OpenScopeOnMemory_Native = Int32 Function(
    Pointer obj,
    Pointer<Uint8> pData,
    Uint32 cbData,
    Uint32 dwOpenFlags,
    Pointer<GUID> riid,
    Pointer<IntPtr> ppIUnk);
typedef _OpenScopeOnMemory_Dart = int Function(
    Pointer obj,
    Pointer<Uint8> pData,
    int cbData,
    int dwOpenFlags,
    Pointer<GUID> riid,
    Pointer<IntPtr> ppIUnk);

class IMetaDataDispenser extends IUnknown {
  // vtable begins at 3, ends at 5

  @override
  Pointer<COMObject> ptr;

  IMetaDataDispenser(this.ptr) : super(ptr);

  int DefineScope(Pointer<GUID> rclsid, int dwCreateFlags, Pointer<GUID> riid,
          Pointer<IntPtr> ppIUnk) =>
      Pointer<NativeFunction<_DefineScope_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<_DefineScope_Dart>()(
          ptr.ref.lpVtbl, rclsid, dwCreateFlags, riid, ppIUnk);

  int OpenScope(Pointer<Utf16> szScope, int dwOpenFlags, Pointer<GUID> riid,
          Pointer<IntPtr> ppIUnk) =>
      Pointer<NativeFunction<_OpenScope_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<_OpenScope_Dart>()(
          ptr.ref.lpVtbl, szScope, dwOpenFlags, riid, ppIUnk);

  int OpenScopeOnMemory(Pointer<Uint8> pData, int cbData, int dwOpenFlags,
          Pointer<GUID> riid, Pointer<IntPtr> ppIUnk) =>
      Pointer<NativeFunction<_OpenScopeOnMemory_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<_OpenScopeOnMemory_Dart>()(
          ptr.ref.lpVtbl, pData, cbData, dwOpenFlags, riid, ppIUnk);
}
