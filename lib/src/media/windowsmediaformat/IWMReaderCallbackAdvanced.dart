// IWMReaderCallbackAdvanced.dart

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
import '../../media/windowsmediaformat/INSSBuffer.dart';
import '../../foundation/structs.g.dart';
import '../../media/windowsmediaformat/structs.g.dart';

/// @nodoc
const IID_IWMReaderCallbackAdvanced = '{96406BEB-2B2B-11D3-B36B-00C04F6108FF}';

/// {@category Interface}
/// {@category com}
class IWMReaderCallbackAdvanced extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IWMReaderCallbackAdvanced(Pointer<COMObject> ptr) : super(ptr);

  int OnStreamSample(
    int wStreamNum,
    int cnsSampleTime,
    int cnsSampleDuration,
    int dwFlags,
    Pointer<COMObject> pSample,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Uint64 cnsSampleTime,
            Uint64 cnsSampleDuration,
            Uint32 dwFlags,
            Pointer<COMObject> pSample,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            int cnsSampleTime,
            int cnsSampleDuration,
            int dwFlags,
            Pointer<COMObject> pSample,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        cnsSampleTime,
        cnsSampleDuration,
        dwFlags,
        pSample,
        pvContext,
      );

  int OnTime(
    int cnsCurrentTime,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 cnsCurrentTime,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cnsCurrentTime,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        cnsCurrentTime,
        pvContext,
      );

  int OnStreamSelection(
    int wStreamCount,
    Pointer<Uint16> pStreamNumbers,
    Pointer<Int32> pSelections,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamCount,
            Pointer<Uint16> pStreamNumbers,
            Pointer<Int32> pSelections,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamCount,
            Pointer<Uint16> pStreamNumbers,
            Pointer<Int32> pSelections,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        wStreamCount,
        pStreamNumbers,
        pSelections,
        pvContext,
      );

  int OnOutputPropsChanged(
    int dwOutputNum,
    Pointer<WM_MEDIA_TYPE> pMediaType,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Pointer<WM_MEDIA_TYPE> pMediaType,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            Pointer<WM_MEDIA_TYPE> pMediaType,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        pMediaType,
        pvContext,
      );

  int AllocateForStream(
    int wStreamNum,
    int cbBuffer,
    Pointer<Pointer<COMObject>> ppBuffer,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Uint32 cbBuffer,
            Pointer<Pointer<COMObject>> ppBuffer,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            int cbBuffer,
            Pointer<Pointer<COMObject>> ppBuffer,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        cbBuffer,
        ppBuffer,
        pvContext,
      );

  int AllocateForOutput(
    int dwOutputNum,
    int cbBuffer,
    Pointer<Pointer<COMObject>> ppBuffer,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Uint32 cbBuffer,
            Pointer<Pointer<COMObject>> ppBuffer,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            int cbBuffer,
            Pointer<Pointer<COMObject>> ppBuffer,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        cbBuffer,
        ppBuffer,
        pvContext,
      );
}
