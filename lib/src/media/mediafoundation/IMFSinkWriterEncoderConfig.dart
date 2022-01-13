// IMFSinkWriterEncoderConfig.dart

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
import '../../media/mediafoundation/IMFMediaType.dart';
import '../../media/mediafoundation/IMFAttributes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFSinkWriterEncoderConfig = '{17C3779E-3CDE-4EDE-8C60-3899F5F53AD6}';

/// {@category Interface}
/// {@category com}
class IMFSinkWriterEncoderConfig extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFSinkWriterEncoderConfig(Pointer<COMObject> ptr) : super(ptr);

  int SetTargetMediaType(
    int dwStreamIndex,
    Pointer<COMObject> pTargetMediaType,
    Pointer<COMObject> pEncodingParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<COMObject> pTargetMediaType,
            Pointer<COMObject> pEncodingParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<COMObject> pTargetMediaType,
            Pointer<COMObject> pEncodingParameters,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        pTargetMediaType,
        pEncodingParameters,
      );

  int PlaceEncodingParameters(
    int dwStreamIndex,
    Pointer<COMObject> pEncodingParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<COMObject> pEncodingParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<COMObject> pEncodingParameters,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        pEncodingParameters,
      );
}
