// IMFVideoProcessor.dart

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
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_IMFVideoProcessor = '{6AB0000C-FECE-4D1F-A2AC-A9573530656E}';

/// {@category Interface}
/// {@category com}
class IMFVideoProcessor extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IMFVideoProcessor(Pointer<COMObject> ptr) : super(ptr);

  int GetAvailableVideoProcessorModes(
    Pointer<Uint32> lpdwNumProcessingModes,
    Pointer<Pointer<GUID>> ppVideoProcessingModes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpdwNumProcessingModes,
            Pointer<Pointer<GUID>> ppVideoProcessingModes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpdwNumProcessingModes,
            Pointer<Pointer<GUID>> ppVideoProcessingModes,
          )>()(
        ptr.ref.lpVtbl,
        lpdwNumProcessingModes,
        ppVideoProcessingModes,
      );

  int GetVideoProcessorCaps(
    Pointer<GUID> lpVideoProcessorMode,
    Pointer<DXVA2_VideoProcessorCaps> lpVideoProcessorCaps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> lpVideoProcessorMode,
            Pointer<DXVA2_VideoProcessorCaps> lpVideoProcessorCaps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> lpVideoProcessorMode,
            Pointer<DXVA2_VideoProcessorCaps> lpVideoProcessorCaps,
          )>()(
        ptr.ref.lpVtbl,
        lpVideoProcessorMode,
        lpVideoProcessorCaps,
      );

  int GetVideoProcessorMode(
    Pointer<GUID> lpMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> lpMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> lpMode,
          )>()(
        ptr.ref.lpVtbl,
        lpMode,
      );

  int SetVideoProcessorMode(
    Pointer<GUID> lpMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> lpMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> lpMode,
          )>()(
        ptr.ref.lpVtbl,
        lpMode,
      );

  int GetProcAmpRange(
    int dwProperty,
    Pointer<DXVA2_ValueRange> pPropRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwProperty,
            Pointer<DXVA2_ValueRange> pPropRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwProperty,
            Pointer<DXVA2_ValueRange> pPropRange,
          )>()(
        ptr.ref.lpVtbl,
        dwProperty,
        pPropRange,
      );

  int GetProcAmpValues(
    int dwFlags,
    Pointer<DXVA2_ProcAmpValues> Values,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<DXVA2_ProcAmpValues> Values,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<DXVA2_ProcAmpValues> Values,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        Values,
      );

  int SetProcAmpValues(
    int dwFlags,
    Pointer<DXVA2_ProcAmpValues> pValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<DXVA2_ProcAmpValues> pValues,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<DXVA2_ProcAmpValues> pValues,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pValues,
      );

  int GetFilteringRange(
    int dwProperty,
    Pointer<DXVA2_ValueRange> pPropRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwProperty,
            Pointer<DXVA2_ValueRange> pPropRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwProperty,
            Pointer<DXVA2_ValueRange> pPropRange,
          )>()(
        ptr.ref.lpVtbl,
        dwProperty,
        pPropRange,
      );

  int GetFilteringValue(
    int dwProperty,
    Pointer<DXVA2_Fixed32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwProperty,
            Pointer<DXVA2_Fixed32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwProperty,
            Pointer<DXVA2_Fixed32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        dwProperty,
        pValue,
      );

  int SetFilteringValue(
    int dwProperty,
    Pointer<DXVA2_Fixed32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwProperty,
            Pointer<DXVA2_Fixed32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwProperty,
            Pointer<DXVA2_Fixed32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        dwProperty,
        pValue,
      );

  int GetBackgroundColor(
    Pointer<Uint32> lpClrBkg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> lpClrBkg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> lpClrBkg,
          )>()(
        ptr.ref.lpVtbl,
        lpClrBkg,
      );

  int SetBackgroundColor(
    int ClrBkg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ClrBkg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ClrBkg,
          )>()(
        ptr.ref.lpVtbl,
        ClrBkg,
      );
}
