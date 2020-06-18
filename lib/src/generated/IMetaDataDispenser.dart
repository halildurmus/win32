// IMetaDataDispenser.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'package:win32/src/constants.dart';
import 'package:win32/src/exceptions.dart';
import 'package:win32/src/macros.dart';
import 'package:win32/src/structs.dart';
import 'package:win32/src/win32.dart';
import 'package:win32/src/com/combase.dart';

import 'package:win32/src/generated/IUnknown.dart';

const IID_IMetaDataDispenser = '{809C652E-7396-11D2-9771-00A0C9B4D50C}';

typedef DefineScope_Native = Int32 Function(Pointer obj, Pointer<GUID> rclsid,
    Uint32 dwCreateFlags, Pointer<GUID> riid, Pointer<IntPtr> ppIUnk);
typedef DefineScope_Dart = int Function(Pointer obj, Pointer<GUID> rclsid,
    int dwCreateFlags, Pointer<GUID> riid, Pointer<IntPtr> ppIUnk);

typedef OpenScope_Native = Int32 Function(Pointer obj, Pointer<Utf16> szScope,
    Uint32 dwOpenFlags, Pointer<GUID> riid, Pointer<IntPtr> ppIUnk);
typedef OpenScope_Dart = int Function(Pointer obj, Pointer<Utf16> szScope,
    int dwOpenFlags, Pointer<GUID> riid, Pointer<IntPtr> ppIUnk);

typedef OpenScopeOnMemory_Native = Int32 Function(
    Pointer obj,
    Pointer<Uint8> pData,
    Uint32 cbData,
    Uint32 dwOpenFlags,
    Pointer<GUID> riid,
    Pointer<IntPtr> ppIUnk);
typedef OpenScopeOnMemory_Dart = int Function(Pointer obj, Pointer<Uint8> pData,
    int cbData, int dwOpenFlags, Pointer<GUID> riid, Pointer<IntPtr> ppIUnk);

class IMetaDataDispenser extends IUnknown {
  // vtable begins at 3, ends at 5

  @override
  Pointer<COMObject> ptr;

  IMetaDataDispenser(this.ptr) : super(ptr);

  int DefineScope(Pointer<GUID> rclsid, int dwCreateFlags, Pointer<GUID> riid,
          Pointer<IntPtr> ppIUnk) =>
      Pointer<NativeFunction<DefineScope_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(3).value)
              .asFunction<DefineScope_Dart>()(
          ptr.ref.lpVtbl, rclsid, dwCreateFlags, riid, ppIUnk);

  int OpenScope(Pointer<Utf16> szScope, int dwOpenFlags, Pointer<GUID> riid,
          Pointer<IntPtr> ppIUnk) =>
      Pointer<NativeFunction<OpenScope_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<OpenScope_Dart>()(
          ptr.ref.lpVtbl, szScope, dwOpenFlags, riid, ppIUnk);

  int OpenScopeOnMemory(Pointer<Uint8> pData, int cbData, int dwOpenFlags,
          Pointer<GUID> riid, Pointer<IntPtr> ppIUnk) =>
      Pointer<NativeFunction<OpenScopeOnMemory_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<OpenScopeOnMemory_Dart>()(
          ptr.ref.lpVtbl, pData, cbData, dwOpenFlags, riid, ppIUnk);
}
