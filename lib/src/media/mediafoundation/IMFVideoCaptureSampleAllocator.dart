// IMFVideoCaptureSampleAllocator.dart

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

import '../../media/mediafoundation/IMFVideoSampleAllocator.dart';
import '../../media/mediafoundation/IMFAttributes.dart';
import '../../media/mediafoundation/IMFMediaType.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFVideoCaptureSampleAllocator =
    '{725B77C7-CA9F-4FE5-9D72-9946BF9B3C70}';

/// {@category Interface}
/// {@category com}
class IMFVideoCaptureSampleAllocator extends IMFVideoSampleAllocator {
  // vtable begins at 7, is 1 entries long.
  IMFVideoCaptureSampleAllocator(Pointer<COMObject> ptr) : super(ptr);

  int InitializeCaptureSampleAllocator(
    int cbSampleSize,
    int cbCaptureMetadataSize,
    int cbAlignment,
    int cMinimumSamples,
    Pointer<COMObject> pAttributes,
    Pointer<COMObject> pMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbSampleSize,
            Uint32 cbCaptureMetadataSize,
            Uint32 cbAlignment,
            Uint32 cMinimumSamples,
            Pointer<COMObject> pAttributes,
            Pointer<COMObject> pMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbSampleSize,
            int cbCaptureMetadataSize,
            int cbAlignment,
            int cMinimumSamples,
            Pointer<COMObject> pAttributes,
            Pointer<COMObject> pMediaType,
          )>()(
        ptr.ref.lpVtbl,
        cbSampleSize,
        cbCaptureMetadataSize,
        cbAlignment,
        cMinimumSamples,
        pAttributes,
        pMediaType,
      );
}
