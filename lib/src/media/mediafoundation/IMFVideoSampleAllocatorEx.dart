// IMFVideoSampleAllocatorEx.dart

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
const IID_IMFVideoSampleAllocatorEx = '{545B3A48-3283-4F62-866F-A62D8F598F9F}';

/// {@category Interface}
/// {@category com}
class IMFVideoSampleAllocatorEx extends IMFVideoSampleAllocator {
  // vtable begins at 7, is 1 entries long.
  IMFVideoSampleAllocatorEx(Pointer<COMObject> ptr) : super(ptr);

  int InitializeSampleAllocatorEx(
    int cInitialSamples,
    int cMaximumSamples,
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
            Uint32 cInitialSamples,
            Uint32 cMaximumSamples,
            Pointer<COMObject> pAttributes,
            Pointer<COMObject> pMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cInitialSamples,
            int cMaximumSamples,
            Pointer<COMObject> pAttributes,
            Pointer<COMObject> pMediaType,
          )>()(
        ptr.ref.lpVtbl,
        cInitialSamples,
        cMaximumSamples,
        pAttributes,
        pMediaType,
      );
}
