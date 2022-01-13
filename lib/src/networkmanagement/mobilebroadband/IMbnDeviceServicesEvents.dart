// IMbnDeviceServicesEvents.dart

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
import '../../networkmanagement/mobilebroadband/IMbnDeviceService.dart';
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/mobilebroadband/structs.g.dart';

/// @nodoc
const IID_IMbnDeviceServicesEvents = '{0A900C19-6824-4E97-B76E-CF239D0CA642}';

/// {@category Interface}
/// {@category com}
class IMbnDeviceServicesEvents extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IMbnDeviceServicesEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnQuerySupportedCommandsComplete(
    Pointer<COMObject> deviceService,
    Pointer<SAFEARRAY> commandIDList,
    int status,
    int requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> deviceService,
            Pointer<SAFEARRAY> commandIDList,
            Int32 status,
            Uint32 requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> deviceService,
            Pointer<SAFEARRAY> commandIDList,
            int status,
            int requestID,
          )>()(
        ptr.ref.lpVtbl,
        deviceService,
        commandIDList,
        status,
        requestID,
      );

  int OnOpenCommandSessionComplete(
    Pointer<COMObject> deviceService,
    int status,
    int requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> deviceService,
            Int32 status,
            Uint32 requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> deviceService,
            int status,
            int requestID,
          )>()(
        ptr.ref.lpVtbl,
        deviceService,
        status,
        requestID,
      );

  int OnCloseCommandSessionComplete(
    Pointer<COMObject> deviceService,
    int status,
    int requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> deviceService,
            Int32 status,
            Uint32 requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> deviceService,
            int status,
            int requestID,
          )>()(
        ptr.ref.lpVtbl,
        deviceService,
        status,
        requestID,
      );

  int OnSetCommandComplete(
    Pointer<COMObject> deviceService,
    int responseID,
    Pointer<SAFEARRAY> deviceServiceData,
    int status,
    int requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> deviceService,
            Uint32 responseID,
            Pointer<SAFEARRAY> deviceServiceData,
            Int32 status,
            Uint32 requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> deviceService,
            int responseID,
            Pointer<SAFEARRAY> deviceServiceData,
            int status,
            int requestID,
          )>()(
        ptr.ref.lpVtbl,
        deviceService,
        responseID,
        deviceServiceData,
        status,
        requestID,
      );

  int OnQueryCommandComplete(
    Pointer<COMObject> deviceService,
    int responseID,
    Pointer<SAFEARRAY> deviceServiceData,
    int status,
    int requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> deviceService,
            Uint32 responseID,
            Pointer<SAFEARRAY> deviceServiceData,
            Int32 status,
            Uint32 requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> deviceService,
            int responseID,
            Pointer<SAFEARRAY> deviceServiceData,
            int status,
            int requestID,
          )>()(
        ptr.ref.lpVtbl,
        deviceService,
        responseID,
        deviceServiceData,
        status,
        requestID,
      );

  int OnEventNotification(
    Pointer<COMObject> deviceService,
    int eventID,
    Pointer<SAFEARRAY> deviceServiceData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> deviceService,
            Uint32 eventID,
            Pointer<SAFEARRAY> deviceServiceData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> deviceService,
            int eventID,
            Pointer<SAFEARRAY> deviceServiceData,
          )>()(
        ptr.ref.lpVtbl,
        deviceService,
        eventID,
        deviceServiceData,
      );

  int OnOpenDataSessionComplete(
    Pointer<COMObject> deviceService,
    int status,
    int requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> deviceService,
            Int32 status,
            Uint32 requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> deviceService,
            int status,
            int requestID,
          )>()(
        ptr.ref.lpVtbl,
        deviceService,
        status,
        requestID,
      );

  int OnCloseDataSessionComplete(
    Pointer<COMObject> deviceService,
    int status,
    int requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> deviceService,
            Int32 status,
            Uint32 requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> deviceService,
            int status,
            int requestID,
          )>()(
        ptr.ref.lpVtbl,
        deviceService,
        status,
        requestID,
      );

  int OnWriteDataComplete(
    Pointer<COMObject> deviceService,
    int status,
    int requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> deviceService,
            Int32 status,
            Uint32 requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> deviceService,
            int status,
            int requestID,
          )>()(
        ptr.ref.lpVtbl,
        deviceService,
        status,
        requestID,
      );

  int OnReadData(
    Pointer<COMObject> deviceService,
    Pointer<SAFEARRAY> deviceServiceData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> deviceService,
            Pointer<SAFEARRAY> deviceServiceData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> deviceService,
            Pointer<SAFEARRAY> deviceServiceData,
          )>()(
        ptr.ref.lpVtbl,
        deviceService,
        deviceServiceData,
      );

  int OnInterfaceStateChange(
    Pointer<Utf16> interfaceID,
    int stateChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> interfaceID,
            Int32 stateChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> interfaceID,
            int stateChange,
          )>()(
        ptr.ref.lpVtbl,
        interfaceID,
        stateChange,
      );
}
