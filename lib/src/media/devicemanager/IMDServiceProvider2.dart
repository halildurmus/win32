// IMDServiceProvider2.dart

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

import '../../media/devicemanager/IMDServiceProvider.dart';
import '../../foundation/structs.g.dart';
import '../../media/devicemanager/IMDSPDevice.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMDServiceProvider2 = '{B2FA24B7-CDA3-4694-9862-413AE1A34819}';

/// {@category Interface}
/// {@category com}
class IMDServiceProvider2 extends IMDServiceProvider {
  // vtable begins at 5, is 1 entries long.
  IMDServiceProvider2(Pointer<COMObject> ptr) : super(ptr);

  int CreateDevice(
    Pointer<Utf16> pwszDevicePath,
    Pointer<Uint32> pdwCount,
    Pointer<Pointer<Pointer<COMObject>>> pppDeviceArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszDevicePath,
            Pointer<Uint32> pdwCount,
            Pointer<Pointer<Pointer<COMObject>>> pppDeviceArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszDevicePath,
            Pointer<Uint32> pdwCount,
            Pointer<Pointer<Pointer<COMObject>>> pppDeviceArray,
          )>()(
        ptr.ref.lpVtbl,
        pwszDevicePath,
        pdwCount,
        pppDeviceArray,
      );
}
