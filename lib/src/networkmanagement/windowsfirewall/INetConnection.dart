// INetConnection.dart

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
import '../../networkmanagement/windowsfirewall/INetConnection.dart';
import '../../networkmanagement/windowsfirewall/structs.g.dart';

/// @nodoc
const IID_INetConnection = '{C08956A1-1CD3-11D1-B1C5-00805FC1270E}';

/// {@category Interface}
/// {@category com}
class INetConnection extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  INetConnection(Pointer<COMObject> ptr) : super(ptr);

  int Connect() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int Disconnect() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int Delete() => ptr.ref.lpVtbl.value
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

  int Duplicate(
    Pointer<Utf16> pszwDuplicateName,
    Pointer<Pointer<COMObject>> ppCon,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszwDuplicateName,
            Pointer<Pointer<COMObject>> ppCon,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszwDuplicateName,
            Pointer<Pointer<COMObject>> ppCon,
          )>()(
        ptr.ref.lpVtbl,
        pszwDuplicateName,
        ppCon,
      );

  int GetProperties(
    Pointer<Pointer<NETCON_PROPERTIES>> ppProps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<NETCON_PROPERTIES>> ppProps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<NETCON_PROPERTIES>> ppProps,
          )>()(
        ptr.ref.lpVtbl,
        ppProps,
      );

  int GetUiObjectClassId(
    Pointer<GUID> pclsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pclsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pclsid,
          )>()(
        ptr.ref.lpVtbl,
        pclsid,
      );

  int Rename(
    Pointer<Utf16> pszwNewName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszwNewName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszwNewName,
          )>()(
        ptr.ref.lpVtbl,
        pszwNewName,
      );
}
