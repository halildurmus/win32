// IWMPEvents4.dart

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

import '../../media/mediaplayer/IWMPEvents3.dart';
import '../../media/mediaplayer/IWMPSyncDevice.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMPEvents4 = '{26DABCFA-306B-404D-9A6F-630A8405048D}';

/// {@category Interface}
/// {@category com}
class IWMPEvents4 extends IWMPEvents3 {
  // vtable begins at 65, is 1 entries long.
  IWMPEvents4(Pointer<COMObject> ptr) : super(ptr);

  void DeviceEstimation(
    Pointer<COMObject> pDevice,
    int hrResult,
    int qwEstimatedUsedSpace,
    int qwEstimatedSpace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pDevice,
            Int32 hrResult,
            Int64 qwEstimatedUsedSpace,
            Int64 qwEstimatedSpace,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pDevice,
            int hrResult,
            int qwEstimatedUsedSpace,
            int qwEstimatedSpace,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
        hrResult,
        qwEstimatedUsedSpace,
        qwEstimatedSpace,
      );
}
