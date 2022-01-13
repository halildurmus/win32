// IWMSyncReader2.dart

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

import '../../media/windowsmediaformat/IWMSyncReader.dart';
import '../../media/windowsmediaformat/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/windowsmediaformat/IWMReaderAllocatorEx.dart';

/// @nodoc
const IID_IWMSyncReader2 = '{FAED3D21-1B6B-4AF7-8CB6-3E189BBC187B}';

/// {@category Interface}
/// {@category com}
class IWMSyncReader2 extends IWMSyncReader {
  // vtable begins at 24, is 6 entries long.
  IWMSyncReader2(Pointer<COMObject> ptr) : super(ptr);

  int SetRangeByTimecode(
    int wStreamNum,
    Pointer<WMT_TIMECODE_EXTENSION_DATA> pStart,
    Pointer<WMT_TIMECODE_EXTENSION_DATA> pEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer<WMT_TIMECODE_EXTENSION_DATA> pStart,
            Pointer<WMT_TIMECODE_EXTENSION_DATA> pEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer<WMT_TIMECODE_EXTENSION_DATA> pStart,
            Pointer<WMT_TIMECODE_EXTENSION_DATA> pEnd,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        pStart,
        pEnd,
      );

  int SetRangeByFrameEx(
    int wStreamNum,
    int qwFrameNumber,
    int cFramesToRead,
    Pointer<Uint64> pcnsStartTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Uint64 qwFrameNumber,
            Int64 cFramesToRead,
            Pointer<Uint64> pcnsStartTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            int qwFrameNumber,
            int cFramesToRead,
            Pointer<Uint64> pcnsStartTime,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        qwFrameNumber,
        cFramesToRead,
        pcnsStartTime,
      );

  int SetAllocateForOutput(
    int dwOutputNum,
    Pointer<COMObject> pAllocator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Pointer<COMObject> pAllocator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            Pointer<COMObject> pAllocator,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        pAllocator,
      );

  int GetAllocateForOutput(
    int dwOutputNum,
    Pointer<Pointer<COMObject>> ppAllocator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Pointer<Pointer<COMObject>> ppAllocator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            Pointer<Pointer<COMObject>> ppAllocator,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        ppAllocator,
      );

  int SetAllocateForStream(
    int wStreamNum,
    Pointer<COMObject> pAllocator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer<COMObject> pAllocator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer<COMObject> pAllocator,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        pAllocator,
      );

  int GetAllocateForStream(
    int dwSreamNum,
    Pointer<Pointer<COMObject>> ppAllocator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 dwSreamNum,
            Pointer<Pointer<COMObject>> ppAllocator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSreamNum,
            Pointer<Pointer<COMObject>> ppAllocator,
          )>()(
        ptr.ref.lpVtbl,
        dwSreamNum,
        ppAllocator,
      );
}
