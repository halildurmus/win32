// IEnumNetSharingPrivateConnection.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/windowsfirewall/IEnumNetSharingPrivateConnection.dart';

/// @nodoc
const IID_IEnumNetSharingPrivateConnection =
    '{C08956B5-1CD3-11D1-B1C5-00805FC1270E}';

/// {@category Interface}
/// {@category com}
class IEnumNetSharingPrivateConnection extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumNetSharingPrivateConnection(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int celt,
    Pointer<VARIANT> rgVar,
    Pointer<Uint32> pCeltFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 celt,
            Pointer<VARIANT> rgVar,
            Pointer<Uint32> pCeltFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int celt,
            Pointer<VARIANT> rgVar,
            Pointer<Uint32> pCeltFetched,
          )>()(
        ptr.ref.lpVtbl,
        celt,
        rgVar,
        pCeltFetched,
      );

  int Skip(
    int celt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 celt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int celt,
          )>()(
        ptr.ref.lpVtbl,
        celt,
      );

  int Reset() => ptr.ref.lpVtbl.value
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

  int Clone(
    Pointer<Pointer<COMObject>> ppenum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenum,
          )>()(
        ptr.ref.lpVtbl,
        ppenum,
      );
}
