// IMFCaptureEngineOnSampleCallback.dart

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
import '../../media/mediafoundation/IMFSample.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFCaptureEngineOnSampleCallback =
    '{52150B82-AB39-4467-980F-E48BF0822ECD}';

/// {@category Interface}
/// {@category com}
class IMFCaptureEngineOnSampleCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFCaptureEngineOnSampleCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnSample(
    Pointer<COMObject> pSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSample,
          )>()(
        ptr.ref.lpVtbl,
        pSample,
      );
}
