// IEnumDot11AdHocNetworks.dart

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
import '../../networkmanagement/wifi/IDot11AdHocNetwork.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/wifi/IEnumDot11AdHocNetworks.dart';

/// @nodoc
const IID_IEnumDot11AdHocNetworks = '{8F10CC28-CF0D-42A0-ACBE-E2DE7007384D}';

/// {@category Interface}
/// {@category com}
class IEnumDot11AdHocNetworks extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumDot11AdHocNetworks(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    int cElt,
    Pointer<Pointer<COMObject>> rgElt,
    Pointer<Uint32> pcEltFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cElt,
            Pointer<Pointer<COMObject>> rgElt,
            Pointer<Uint32> pcEltFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cElt,
            Pointer<Pointer<COMObject>> rgElt,
            Pointer<Uint32> pcEltFetched,
          )>()(
        ptr.ref.lpVtbl,
        cElt,
        rgElt,
        pcEltFetched,
      );

  int Skip(
    int cElt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cElt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cElt,
          )>()(
        ptr.ref.lpVtbl,
        cElt,
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
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );
}
