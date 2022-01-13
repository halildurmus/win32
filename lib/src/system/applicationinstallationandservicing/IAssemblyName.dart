// IAssemblyName.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../system/applicationinstallationandservicing/IAssemblyName.dart';

/// @nodoc
const IID_IAssemblyName = '{CD193BC0-B4BC-11D2-9833-00C04FC31D2E}';

/// {@category Interface}
/// {@category com}
class IAssemblyName extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IAssemblyName(Pointer<COMObject> ptr) : super(ptr);

  int SetProperty(
    int PropertyId,
    Pointer pvProperty,
    int cbProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 PropertyId,
            Pointer pvProperty,
            Uint32 cbProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropertyId,
            Pointer pvProperty,
            int cbProperty,
          )>()(
        ptr.ref.lpVtbl,
        PropertyId,
        pvProperty,
        cbProperty,
      );

  int GetProperty(
    int PropertyId,
    Pointer pvProperty,
    Pointer<Uint32> pcbProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 PropertyId,
            Pointer pvProperty,
            Pointer<Uint32> pcbProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropertyId,
            Pointer pvProperty,
            Pointer<Uint32> pcbProperty,
          )>()(
        ptr.ref.lpVtbl,
        PropertyId,
        pvProperty,
        pcbProperty,
      );

  int Finalize() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetDisplayName(
    Pointer<Utf16> szDisplayName,
    Pointer<Uint32> pccDisplayName,
    int dwDisplayFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szDisplayName,
            Pointer<Uint32> pccDisplayName,
            Uint32 dwDisplayFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szDisplayName,
            Pointer<Uint32> pccDisplayName,
            int dwDisplayFlags,
          )>()(
        ptr.ref.lpVtbl,
        szDisplayName,
        pccDisplayName,
        dwDisplayFlags,
      );

  int Reserved(
    Pointer<GUID> refIID,
    Pointer<COMObject> pUnkReserved1,
    Pointer<COMObject> pUnkReserved2,
    Pointer<Utf16> szReserved,
    int llReserved,
    Pointer pvReserved,
    int cbReserved,
    Pointer<Pointer> ppReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> refIID,
            Pointer<COMObject> pUnkReserved1,
            Pointer<COMObject> pUnkReserved2,
            Pointer<Utf16> szReserved,
            Int64 llReserved,
            Pointer pvReserved,
            Uint32 cbReserved,
            Pointer<Pointer> ppReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> refIID,
            Pointer<COMObject> pUnkReserved1,
            Pointer<COMObject> pUnkReserved2,
            Pointer<Utf16> szReserved,
            int llReserved,
            Pointer pvReserved,
            int cbReserved,
            Pointer<Pointer> ppReserved,
          )>()(
        ptr.ref.lpVtbl,
        refIID,
        pUnkReserved1,
        pUnkReserved2,
        szReserved,
        llReserved,
        pvReserved,
        cbReserved,
        ppReserved,
      );

  int GetName(
    Pointer<Uint32> lpcwBuffer,
    Pointer<Utf16> pwzName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpcwBuffer,
            Pointer<Utf16> pwzName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpcwBuffer,
            Pointer<Utf16> pwzName,
          )>()(
        ptr.ref.lpVtbl,
        lpcwBuffer,
        pwzName,
      );

  int GetVersion(
    Pointer<Uint32> pdwVersionHi,
    Pointer<Uint32> pdwVersionLow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwVersionHi,
            Pointer<Uint32> pdwVersionLow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwVersionHi,
            Pointer<Uint32> pdwVersionLow,
          )>()(
        ptr.ref.lpVtbl,
        pdwVersionHi,
        pdwVersionLow,
      );

  int IsEqual(
    Pointer<COMObject> pName,
    int dwCmpFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pName,
            Uint32 dwCmpFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pName,
            int dwCmpFlags,
          )>()(
        ptr.ref.lpVtbl,
        pName,
        dwCmpFlags,
      );

  int Clone(
    Pointer<Pointer<COMObject>> pName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pName,
          )>()(
        ptr.ref.lpVtbl,
        pName,
      );
}
