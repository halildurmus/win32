// imetadatadispenser.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IMetaDataDispenser = '{809c652e-7396-11d2-9771-00a0c9b4d50c}';

/// Provides methods to create a new metadata scope, or open an existing
/// one.
///
/// {@category com}
class IMetaDataDispenser extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMetaDataDispenser(super.ptr);

  factory IMetaDataDispenser.from(IUnknown interface) =>
      IMetaDataDispenser(interface.toInterface(IID_IMetaDataDispenser));

  int defineScope(Pointer<GUID> rclsid, int dwCreateFlags, Pointer<GUID> riid,
          Pointer<Pointer<COMObject>> ppIUnk) =>
      (ptr.ref.vtable + 3)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<GUID> rclsid,
                              Uint32 dwCreateFlags,
                              Pointer<GUID> riid,
                              Pointer<Pointer<COMObject>> ppIUnk)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<GUID> rclsid,
                      int dwCreateFlags,
                      Pointer<GUID> riid,
                      Pointer<Pointer<COMObject>> ppIUnk)>()(
          ptr.ref.lpVtbl, rclsid, dwCreateFlags, riid, ppIUnk);

  int openScope(Pointer<Utf16> szScope, int dwOpenFlags, Pointer<GUID> riid,
          Pointer<Pointer<COMObject>> ppIUnk) =>
      (ptr.ref.vtable + 4)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Utf16> szScope,
                              Uint32 dwOpenFlags,
                              Pointer<GUID> riid,
                              Pointer<Pointer<COMObject>> ppIUnk)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Utf16> szScope,
                      int dwOpenFlags,
                      Pointer<GUID> riid,
                      Pointer<Pointer<COMObject>> ppIUnk)>()(
          ptr.ref.lpVtbl, szScope, dwOpenFlags, riid, ppIUnk);

  int openScopeOnMemory(Pointer pData, int cbData, int dwOpenFlags,
          Pointer<GUID> riid, Pointer<Pointer<COMObject>> ppIUnk) =>
      (ptr.ref.vtable + 5)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer pData,
                              Uint32 cbData,
                              Uint32 dwOpenFlags,
                              Pointer<GUID> riid,
                              Pointer<Pointer<COMObject>> ppIUnk)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer pData,
                      int cbData,
                      int dwOpenFlags,
                      Pointer<GUID> riid,
                      Pointer<Pointer<COMObject>> ppIUnk)>()(
          ptr.ref.lpVtbl, pData, cbData, dwOpenFlags, riid, ppIUnk);
}
