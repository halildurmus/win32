// IShellItem.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_IShellItem = '{43826D1E-E718-42EE-BC55-A1E261C37BFE}';

/// {@category Interface}
/// {@category com}
class IShellItem extends IUnknown {
  // vtable begins at 3, ends at 7
  IShellItem(Pointer<COMObject> ptr) : super(ptr);

  int BindToHandler(Pointer<COMObject> pbc, Pointer<GUID> bhid,
          Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      ptr.ref.lpVtbl.value
              .elementAt(3)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<COMObject> pbc,
                              Pointer<GUID> bhid,
                              Pointer<GUID> riid,
                              Pointer<Pointer> ppv)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<COMObject> pbc,
                      Pointer<GUID> bhid,
                      Pointer<GUID> riid,
                      Pointer<Pointer> ppv)>()(
          ptr.ref.lpVtbl, pbc, bhid, riid, ppv);

  int GetParent(Pointer<Pointer<COMObject>> ppsi) => ptr.ref.lpVtbl.value
      .elementAt(4)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppsi)>>>()
      .value
      .asFunction<
          int Function(Pointer,
              Pointer<Pointer<COMObject>> ppsi)>()(ptr.ref.lpVtbl, ppsi);

  int GetDisplayName(int sigdnName, Pointer<Pointer<Utf16>> ppszName) => ptr
          .ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Int32 sigdnName,
                          Pointer<Pointer<Utf16>> ppszName)>>>()
          .value
          .asFunction<
              int Function(
                  Pointer, int sigdnName, Pointer<Pointer<Utf16>> ppszName)>()(
      ptr.ref.lpVtbl, sigdnName, ppszName);

  int GetAttributes(int sfgaoMask, Pointer<Uint32> psfgaoAttribs) =>
      ptr.ref.lpVtbl.value
              .elementAt(6)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Uint32 sfgaoMask,
                              Pointer<Uint32> psfgaoAttribs)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer, int sfgaoMask, Pointer<Uint32> psfgaoAttribs)>()(
          ptr.ref.lpVtbl, sfgaoMask, psfgaoAttribs);

  int Compare(Pointer<COMObject> psi, int hint, Pointer<Int32> piOrder) => ptr
      .ref.lpVtbl.value
      .elementAt(7)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(Pointer, Pointer<COMObject> psi, Uint32 hint,
                      Pointer<Int32> piOrder)>>>()
      .value
      .asFunction<
          int Function(Pointer, Pointer<COMObject> psi, int hint,
              Pointer<Int32> piOrder)>()(ptr.ref.lpVtbl, psi, hint, piOrder);
}
