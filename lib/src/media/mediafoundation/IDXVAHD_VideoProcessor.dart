// IDXVAHD_VideoProcessor.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DSurface9.dart';

/// @nodoc
const IID_IDXVAHD_VideoProcessor = '{95F4EDF4-6E03-4CD7-BE1B-3075D665AA52}';

/// {@category Interface}
/// {@category com}
class IDXVAHD_VideoProcessor extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDXVAHD_VideoProcessor(Pointer<COMObject> ptr) : super(ptr);

  int SetVideoProcessBltState(
    int State,
    int DataSize,
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 State,
            Uint32 DataSize,
            Pointer pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int State,
            int DataSize,
            Pointer pData,
          )>()(
        ptr.ref.lpVtbl,
        State,
        DataSize,
        pData,
      );

  int GetVideoProcessBltState(
    int State,
    int DataSize,
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 State,
            Uint32 DataSize,
            Pointer pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int State,
            int DataSize,
            Pointer pData,
          )>()(
        ptr.ref.lpVtbl,
        State,
        DataSize,
        pData,
      );

  int SetVideoProcessStreamState(
    int StreamNumber,
    int State,
    int DataSize,
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StreamNumber,
            Int32 State,
            Uint32 DataSize,
            Pointer pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StreamNumber,
            int State,
            int DataSize,
            Pointer pData,
          )>()(
        ptr.ref.lpVtbl,
        StreamNumber,
        State,
        DataSize,
        pData,
      );

  int GetVideoProcessStreamState(
    int StreamNumber,
    int State,
    int DataSize,
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 StreamNumber,
            Int32 State,
            Uint32 DataSize,
            Pointer pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StreamNumber,
            int State,
            int DataSize,
            Pointer pData,
          )>()(
        ptr.ref.lpVtbl,
        StreamNumber,
        State,
        DataSize,
        pData,
      );

  int VideoProcessBltHD(
    Pointer<COMObject> pOutputSurface,
    int OutputFrame,
    int StreamCount,
    Pointer<DXVAHD_STREAM_DATA> pStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pOutputSurface,
            Uint32 OutputFrame,
            Uint32 StreamCount,
            Pointer<DXVAHD_STREAM_DATA> pStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pOutputSurface,
            int OutputFrame,
            int StreamCount,
            Pointer<DXVAHD_STREAM_DATA> pStreams,
          )>()(
        ptr.ref.lpVtbl,
        pOutputSurface,
        OutputFrame,
        StreamCount,
        pStreams,
      );
}
