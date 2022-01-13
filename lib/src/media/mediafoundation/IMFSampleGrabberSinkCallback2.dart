// IMFSampleGrabberSinkCallback2.dart

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

import '../../media/mediafoundation/IMFSampleGrabberSinkCallback.dart';
import '../../media/mediafoundation/IMFAttributes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFSampleGrabberSinkCallback2 =
    '{CA86AA50-C46E-429E-AB27-16D6AC6844CB}';

/// {@category Interface}
/// {@category com}
class IMFSampleGrabberSinkCallback2 extends IMFSampleGrabberSinkCallback {
  // vtable begins at 11, is 1 entries long.
  IMFSampleGrabberSinkCallback2(Pointer<COMObject> ptr) : super(ptr);

  int OnProcessSampleEx(
    Pointer<GUID> guidMajorMediaType,
    int dwSampleFlags,
    int llSampleTime,
    int llSampleDuration,
    Pointer<Uint8> pSampleBuffer,
    int dwSampleSize,
    Pointer<COMObject> pAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidMajorMediaType,
            Uint32 dwSampleFlags,
            Int64 llSampleTime,
            Int64 llSampleDuration,
            Pointer<Uint8> pSampleBuffer,
            Uint32 dwSampleSize,
            Pointer<COMObject> pAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidMajorMediaType,
            int dwSampleFlags,
            int llSampleTime,
            int llSampleDuration,
            Pointer<Uint8> pSampleBuffer,
            int dwSampleSize,
            Pointer<COMObject> pAttributes,
          )>()(
        ptr.ref.lpVtbl,
        guidMajorMediaType,
        dwSampleFlags,
        llSampleTime,
        llSampleDuration,
        pSampleBuffer,
        dwSampleSize,
        pAttributes,
      );
}
