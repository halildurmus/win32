// IMbnPinEvents.dart

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
import '../../networkmanagement/mobilebroadband/IMbnPin.dart';
import '../../networkmanagement/mobilebroadband/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMbnPinEvents = '{DCBBBAB6-2008-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnPinEvents extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMbnPinEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnEnableComplete(
    Pointer<COMObject> pin,
    Pointer<MBN_PIN_INFO> pinInfo,
    int requestID,
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pin,
            Pointer<MBN_PIN_INFO> pinInfo,
            Uint32 requestID,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pin,
            Pointer<MBN_PIN_INFO> pinInfo,
            int requestID,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        pin,
        pinInfo,
        requestID,
        status,
      );

  int OnDisableComplete(
    Pointer<COMObject> pin,
    Pointer<MBN_PIN_INFO> pinInfo,
    int requestID,
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pin,
            Pointer<MBN_PIN_INFO> pinInfo,
            Uint32 requestID,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pin,
            Pointer<MBN_PIN_INFO> pinInfo,
            int requestID,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        pin,
        pinInfo,
        requestID,
        status,
      );

  int OnEnterComplete(
    Pointer<COMObject> Pin,
    Pointer<MBN_PIN_INFO> pinInfo,
    int requestID,
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Pin,
            Pointer<MBN_PIN_INFO> pinInfo,
            Uint32 requestID,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Pin,
            Pointer<MBN_PIN_INFO> pinInfo,
            int requestID,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        Pin,
        pinInfo,
        requestID,
        status,
      );

  int OnChangeComplete(
    Pointer<COMObject> Pin,
    Pointer<MBN_PIN_INFO> pinInfo,
    int requestID,
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Pin,
            Pointer<MBN_PIN_INFO> pinInfo,
            Uint32 requestID,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Pin,
            Pointer<MBN_PIN_INFO> pinInfo,
            int requestID,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        Pin,
        pinInfo,
        requestID,
        status,
      );

  int OnUnblockComplete(
    Pointer<COMObject> Pin,
    Pointer<MBN_PIN_INFO> pinInfo,
    int requestID,
    int status,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> Pin,
            Pointer<MBN_PIN_INFO> pinInfo,
            Uint32 requestID,
            Int32 status,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> Pin,
            Pointer<MBN_PIN_INFO> pinInfo,
            int requestID,
            int status,
          )>()(
        ptr.ref.lpVtbl,
        Pin,
        pinInfo,
        requestID,
        status,
      );
}
