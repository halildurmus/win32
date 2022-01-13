// IMbnPinManager.dart

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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/mobilebroadband/structs.g.dart';
import '../../networkmanagement/mobilebroadband/IMbnPin.dart';

/// @nodoc
const IID_IMbnPinManager = '{DCBBBAB6-2005-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnPinManager extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMbnPinManager(Pointer<COMObject> ptr) : super(ptr);

  int GetPinList(
    Pointer<Pointer<SAFEARRAY>> pinList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pinList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SAFEARRAY>> pinList,
          )>()(
        ptr.ref.lpVtbl,
        pinList,
      );

  int GetPin(
    int pinType,
    Pointer<Pointer<COMObject>> pin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 pinType,
            Pointer<Pointer<COMObject>> pin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pinType,
            Pointer<Pointer<COMObject>> pin,
          )>()(
        ptr.ref.lpVtbl,
        pinType,
        pin,
      );

  int GetPinState(
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        requestID,
      );
}
