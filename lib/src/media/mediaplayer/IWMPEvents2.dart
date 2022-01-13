// IWMPEvents2.dart

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

import '../../media/mediaplayer/IWMPEvents.dart';
import '../../media/mediaplayer/IWMPSyncDevice.dart';
import '../../media/mediaplayer/structs.g.dart';
import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMPEvents2 = '{1E7601FA-47EA-4107-9EA9-9004ED9684FF}';

/// {@category Interface}
/// {@category com}
class IWMPEvents2 extends IWMPEvents {
  // vtable begins at 48, is 6 entries long.
  IWMPEvents2(Pointer<COMObject> ptr) : super(ptr);

  void DeviceConnect(
    Pointer<COMObject> pDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDevice,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDevice,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
      );

  void DeviceDisconnect(
    Pointer<COMObject> pDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDevice,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDevice,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
      );

  void DeviceStatusChange(
    Pointer<COMObject> pDevice,
    int NewStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Int32 NewStatus,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDevice,
            int NewStatus,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        NewStatus,
      );

  void DeviceSyncStateChange(
    Pointer<COMObject> pDevice,
    int NewState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Int32 NewState,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDevice,
            int NewState,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        NewState,
      );

  void DeviceSyncError(
    Pointer<COMObject> pDevice,
    Pointer<COMObject> pMedia,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Pointer<COMObject> pMedia,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Pointer<COMObject> pMedia,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        pMedia,
      );

  void CreatePartnershipComplete(
    Pointer<COMObject> pDevice,
    int hrResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Int32 hrResult,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDevice,
            int hrResult,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        hrResult,
      );
}
