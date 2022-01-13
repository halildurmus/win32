// IMFASFStreamSelector.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IMFASFStreamSelector = '{D01BAD4A-4FA0-4A60-9349-C27E62DA9D41}';

/// {@category Interface}
/// {@category com}
class IMFASFStreamSelector extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  IMFASFStreamSelector(Pointer<COMObject> ptr) : super(ptr);

  int GetStreamCount(
    Pointer<Uint32> pcStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcStreams,
          )>()(
        ptr.ref.lpVtbl,
        pcStreams,
      );

  int GetOutputCount(
    Pointer<Uint32> pcOutputs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcOutputs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcOutputs,
          )>()(
        ptr.ref.lpVtbl,
        pcOutputs,
      );

  int GetOutputStreamCount(
    int dwOutputNum,
    Pointer<Uint32> pcStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Pointer<Uint32> pcStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            Pointer<Uint32> pcStreams,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        pcStreams,
      );

  int GetOutputStreamNumbers(
    int dwOutputNum,
    Pointer<Uint16> rgwStreamNumbers,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Pointer<Uint16> rgwStreamNumbers,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            Pointer<Uint16> rgwStreamNumbers,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        rgwStreamNumbers,
      );

  int GetOutputFromStream(
    int wStreamNum,
    Pointer<Uint32> pdwOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer<Uint32> pdwOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer<Uint32> pdwOutput,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        pdwOutput,
      );

  int GetOutputOverride(
    int dwOutputNum,
    Pointer<Int32> pSelection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Pointer<Int32> pSelection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            Pointer<Int32> pSelection,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        pSelection,
      );

  int SetOutputOverride(
    int dwOutputNum,
    int Selection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Int32 Selection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            int Selection,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        Selection,
      );

  int GetOutputMutexCount(
    int dwOutputNum,
    Pointer<Uint32> pcMutexes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Pointer<Uint32> pcMutexes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            Pointer<Uint32> pcMutexes,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        pcMutexes,
      );

  int GetOutputMutex(
    int dwOutputNum,
    int dwMutexNum,
    Pointer<Pointer<COMObject>> ppMutex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Uint32 dwMutexNum,
            Pointer<Pointer<COMObject>> ppMutex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            int dwMutexNum,
            Pointer<Pointer<COMObject>> ppMutex,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        dwMutexNum,
        ppMutex,
      );

  int SetOutputMutexSelection(
    int dwOutputNum,
    int dwMutexNum,
    int wSelectedRecord,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Uint32 dwMutexNum,
            Uint16 wSelectedRecord,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            int dwMutexNum,
            int wSelectedRecord,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        dwMutexNum,
        wSelectedRecord,
      );

  int GetBandwidthStepCount(
    Pointer<Uint32> pcStepCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcStepCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcStepCount,
          )>()(
        ptr.ref.lpVtbl,
        pcStepCount,
      );

  int GetBandwidthStep(
    int dwStepNum,
    Pointer<Uint32> pdwBitrate,
    Pointer<Uint16> rgwStreamNumbers,
    Pointer<Int32> rgSelections,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStepNum,
            Pointer<Uint32> pdwBitrate,
            Pointer<Uint16> rgwStreamNumbers,
            Pointer<Int32> rgSelections,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStepNum,
            Pointer<Uint32> pdwBitrate,
            Pointer<Uint16> rgwStreamNumbers,
            Pointer<Int32> rgSelections,
          )>()(
        ptr.ref.lpVtbl,
        dwStepNum,
        pdwBitrate,
        rgwStreamNumbers,
        rgSelections,
      );

  int BitrateToStepNumber(
    int dwBitrate,
    Pointer<Uint32> pdwStepNum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwBitrate,
            Pointer<Uint32> pdwStepNum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwBitrate,
            Pointer<Uint32> pdwStepNum,
          )>()(
        ptr.ref.lpVtbl,
        dwBitrate,
        pdwStepNum,
      );

  int SetStreamSelectorFlags(
    int dwStreamSelectorFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamSelectorFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamSelectorFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamSelectorFlags,
      );
}
