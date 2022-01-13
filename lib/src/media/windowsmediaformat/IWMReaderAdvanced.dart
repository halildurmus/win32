// IWMReaderAdvanced.dart

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
import '../../media/windowsmediaformat/structs.g.dart';

/// @nodoc
const IID_IWMReaderAdvanced = '{96406BEA-2B2B-11D3-B36B-00C04F6108FF}';

/// {@category Interface}
/// {@category com}
class IWMReaderAdvanced extends IUnknown {
  // vtable begins at 3, is 20 entries long.
  IWMReaderAdvanced(Pointer<COMObject> ptr) : super(ptr);

  int SetUserProvidedClock(
    int fUserClock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fUserClock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fUserClock,
          )>()(
        ptr.ref.lpVtbl,
        fUserClock,
      );

  int GetUserProvidedClock(
    Pointer<Int32> pfUserClock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfUserClock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfUserClock,
          )>()(
        ptr.ref.lpVtbl,
        pfUserClock,
      );

  int DeliverTime(
    int cnsTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 cnsTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cnsTime,
          )>()(
        ptr.ref.lpVtbl,
        cnsTime,
      );

  int SetManualStreamSelection(
    int fSelection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fSelection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fSelection,
          )>()(
        ptr.ref.lpVtbl,
        fSelection,
      );

  int GetManualStreamSelection(
    Pointer<Int32> pfSelection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfSelection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfSelection,
          )>()(
        ptr.ref.lpVtbl,
        pfSelection,
      );

  int SetStreamsSelected(
    int cStreamCount,
    Pointer<Uint16> pwStreamNumbers,
    Pointer<Int32> pSelections,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 cStreamCount,
            Pointer<Uint16> pwStreamNumbers,
            Pointer<Int32> pSelections,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cStreamCount,
            Pointer<Uint16> pwStreamNumbers,
            Pointer<Int32> pSelections,
          )>()(
        ptr.ref.lpVtbl,
        cStreamCount,
        pwStreamNumbers,
        pSelections,
      );

  int GetStreamSelected(
    int wStreamNum,
    Pointer<Int32> pSelection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer<Int32> pSelection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer<Int32> pSelection,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        pSelection,
      );

  int SetReceiveSelectionCallbacks(
    int fGetCallbacks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fGetCallbacks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fGetCallbacks,
          )>()(
        ptr.ref.lpVtbl,
        fGetCallbacks,
      );

  int GetReceiveSelectionCallbacks(
    Pointer<Int32> pfGetCallbacks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfGetCallbacks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfGetCallbacks,
          )>()(
        ptr.ref.lpVtbl,
        pfGetCallbacks,
      );

  int SetReceiveStreamSamples(
    int wStreamNum,
    int fReceiveStreamSamples,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Int32 fReceiveStreamSamples,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            int fReceiveStreamSamples,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        fReceiveStreamSamples,
      );

  int GetReceiveStreamSamples(
    int wStreamNum,
    Pointer<Int32> pfReceiveStreamSamples,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer<Int32> pfReceiveStreamSamples,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer<Int32> pfReceiveStreamSamples,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        pfReceiveStreamSamples,
      );

  int SetAllocateForOutput(
    int dwOutputNum,
    int fAllocate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Int32 fAllocate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            int fAllocate,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        fAllocate,
      );

  int GetAllocateForOutput(
    int dwOutputNum,
    Pointer<Int32> pfAllocate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Pointer<Int32> pfAllocate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            Pointer<Int32> pfAllocate,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        pfAllocate,
      );

  int SetAllocateForStream(
    int wStreamNum,
    int fAllocate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Int32 fAllocate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            int fAllocate,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        fAllocate,
      );

  int GetAllocateForStream(
    int dwSreamNum,
    Pointer<Int32> pfAllocate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 dwSreamNum,
            Pointer<Int32> pfAllocate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSreamNum,
            Pointer<Int32> pfAllocate,
          )>()(
        ptr.ref.lpVtbl,
        dwSreamNum,
        pfAllocate,
      );

  int GetStatistics(
    Pointer<WM_READER_STATISTICS> pStatistics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WM_READER_STATISTICS> pStatistics,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WM_READER_STATISTICS> pStatistics,
          )>()(
        ptr.ref.lpVtbl,
        pStatistics,
      );

  int SetClientInfo(
    Pointer<WM_READER_CLIENTINFO> pClientInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WM_READER_CLIENTINFO> pClientInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WM_READER_CLIENTINFO> pClientInfo,
          )>()(
        ptr.ref.lpVtbl,
        pClientInfo,
      );

  int GetMaxOutputSampleSize(
    int dwOutput,
    Pointer<Uint32> pcbMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutput,
            Pointer<Uint32> pcbMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutput,
            Pointer<Uint32> pcbMax,
          )>()(
        ptr.ref.lpVtbl,
        dwOutput,
        pcbMax,
      );

  int GetMaxStreamSampleSize(
    int wStream,
    Pointer<Uint32> pcbMax,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStream,
            Pointer<Uint32> pcbMax,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStream,
            Pointer<Uint32> pcbMax,
          )>()(
        ptr.ref.lpVtbl,
        wStream,
        pcbMax,
      );

  int NotifyLateDelivery(
    int cnsLateness,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 cnsLateness,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cnsLateness,
          )>()(
        ptr.ref.lpVtbl,
        cnsLateness,
      );
}
