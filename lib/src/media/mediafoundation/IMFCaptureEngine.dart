// IMFCaptureEngine.dart

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
import '../../media/mediafoundation/IMFCaptureEngineOnEventCallback.dart';
import '../../media/mediafoundation/IMFAttributes.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/IMFCaptureSink.dart';
import '../../media/mediafoundation/IMFCaptureSource.dart';

/// @nodoc
const IID_IMFCaptureEngine = '{A6BBA433-176B-48B2-B375-53AA03473207}';

/// {@category Interface}
/// {@category com}
class IMFCaptureEngine extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IMFCaptureEngine(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pEventCallback,
    Pointer<COMObject> pAttributes,
    Pointer<COMObject> pAudioSource,
    Pointer<COMObject> pVideoSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEventCallback,
            Pointer<COMObject> pAttributes,
            Pointer<COMObject> pAudioSource,
            Pointer<COMObject> pVideoSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEventCallback,
            Pointer<COMObject> pAttributes,
            Pointer<COMObject> pAudioSource,
            Pointer<COMObject> pVideoSource,
          )>()(
        ptr.ref.lpVtbl,
        pEventCallback,
        pAttributes,
        pAudioSource,
        pVideoSource,
      );

  int StartPreview() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int StopPreview() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int StartRecord() => ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int StopRecord(
    int bFinalize,
    int bFlushUnprocessedSamples,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bFinalize,
            Int32 bFlushUnprocessedSamples,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bFinalize,
            int bFlushUnprocessedSamples,
          )>()(
        ptr.ref.lpVtbl,
        bFinalize,
        bFlushUnprocessedSamples,
      );

  int TakePhoto() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetSink(
    int mfCaptureEngineSinkType,
    Pointer<Pointer<COMObject>> ppSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 mfCaptureEngineSinkType,
            Pointer<Pointer<COMObject>> ppSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int mfCaptureEngineSinkType,
            Pointer<Pointer<COMObject>> ppSink,
          )>()(
        ptr.ref.lpVtbl,
        mfCaptureEngineSinkType,
        ppSink,
      );

  int GetSource(
    Pointer<Pointer<COMObject>> ppSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSource,
          )>()(
        ptr.ref.lpVtbl,
        ppSource,
      );
}
