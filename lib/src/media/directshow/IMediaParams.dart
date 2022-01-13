// IMediaParams.dart

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
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMediaParams = '{6D6CBB61-A223-44AA-842F-A2F06750BE6E}';

/// {@category Interface}
/// {@category com}
class IMediaParams extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMediaParams(Pointer<COMObject> ptr) : super(ptr);

  int GetParam(
    int dwParamIndex,
    Pointer<Float> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwParamIndex,
            Pointer<Float> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwParamIndex,
            Pointer<Float> pValue,
          )>()(
        ptr.ref.lpVtbl,
        dwParamIndex,
        pValue,
      );

  int SetParam(
    int dwParamIndex,
    double value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwParamIndex,
            Float value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwParamIndex,
            double value,
          )>()(
        ptr.ref.lpVtbl,
        dwParamIndex,
        value,
      );

  int AddEnvelope(
    int dwParamIndex,
    int cSegments,
    Pointer<MP_ENVELOPE_SEGMENT> pEnvelopeSegments,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwParamIndex,
            Uint32 cSegments,
            Pointer<MP_ENVELOPE_SEGMENT> pEnvelopeSegments,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwParamIndex,
            int cSegments,
            Pointer<MP_ENVELOPE_SEGMENT> pEnvelopeSegments,
          )>()(
        ptr.ref.lpVtbl,
        dwParamIndex,
        cSegments,
        pEnvelopeSegments,
      );

  int FlushEnvelope(
    int dwParamIndex,
    int refTimeStart,
    int refTimeEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwParamIndex,
            Int64 refTimeStart,
            Int64 refTimeEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwParamIndex,
            int refTimeStart,
            int refTimeEnd,
          )>()(
        ptr.ref.lpVtbl,
        dwParamIndex,
        refTimeStart,
        refTimeEnd,
      );

  int SetTimeFormat(
    GUID guidTimeFormat,
    int mpTimeData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID guidTimeFormat,
            Uint32 mpTimeData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID guidTimeFormat,
            int mpTimeData,
          )>()(
        ptr.ref.lpVtbl,
        guidTimeFormat,
        mpTimeData,
      );
}
