// IMFMediaSharingEngine.dart

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

import '../../media/mediafoundation/IMFMediaEngine.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFMediaSharingEngine = '{8D3CE1BF-2367-40E0-9EEE-40D377CC1B46}';

/// {@category Interface}
/// {@category com}
class IMFMediaSharingEngine extends IMFMediaEngine {
  // vtable begins at 45, is 1 entries long.
  IMFMediaSharingEngine(Pointer<COMObject> ptr) : super(ptr);

  int GetDevice(
    Pointer<DEVICE_INFO> pDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEVICE_INFO> pDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEVICE_INFO> pDevice,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
      );
}
