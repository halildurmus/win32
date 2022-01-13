// IDirectMusicBuffer.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectMusicBuffer = '{D2AC2878-B39B-11D1-8704-00600893B1BD}';

/// {@category Interface}
/// {@category com}
class IDirectMusicBuffer extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IDirectMusicBuffer(Pointer<COMObject> ptr) : super(ptr);

  int Flush() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int TotalTime(
    Pointer<Int64> prtTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> prtTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> prtTime,
          )>()(
        ptr.ref.lpVtbl,
        prtTime,
      );

  int PackStructured(
    int rt,
    int dwChannelGroup,
    int dwChannelMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 rt,
            Uint32 dwChannelGroup,
            Uint32 dwChannelMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int rt,
            int dwChannelGroup,
            int dwChannelMessage,
          )>()(
        ptr.ref.lpVtbl,
        rt,
        dwChannelGroup,
        dwChannelMessage,
      );

  int PackUnstructured(
    int rt,
    int dwChannelGroup,
    int cb,
    Pointer<Uint8> lpb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 rt,
            Uint32 dwChannelGroup,
            Uint32 cb,
            Pointer<Uint8> lpb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int rt,
            int dwChannelGroup,
            int cb,
            Pointer<Uint8> lpb,
          )>()(
        ptr.ref.lpVtbl,
        rt,
        dwChannelGroup,
        cb,
        lpb,
      );

  int ResetReadPtr() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int GetNextEvent(
    Pointer<Int64> prt,
    Pointer<Uint32> pdwChannelGroup,
    Pointer<Uint32> pdwLength,
    Pointer<Pointer<Uint8>> ppData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> prt,
            Pointer<Uint32> pdwChannelGroup,
            Pointer<Uint32> pdwLength,
            Pointer<Pointer<Uint8>> ppData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> prt,
            Pointer<Uint32> pdwChannelGroup,
            Pointer<Uint32> pdwLength,
            Pointer<Pointer<Uint8>> ppData,
          )>()(
        ptr.ref.lpVtbl,
        prt,
        pdwChannelGroup,
        pdwLength,
        ppData,
      );

  int GetRawBufferPtr(
    Pointer<Pointer<Uint8>> ppData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppData,
          )>()(
        ptr.ref.lpVtbl,
        ppData,
      );

  int GetStartTime(
    Pointer<Int64> prt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> prt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> prt,
          )>()(
        ptr.ref.lpVtbl,
        prt,
      );

  int GetUsedBytes(
    Pointer<Uint32> pcb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcb,
          )>()(
        ptr.ref.lpVtbl,
        pcb,
      );

  int GetMaxBytes(
    Pointer<Uint32> pcb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcb,
          )>()(
        ptr.ref.lpVtbl,
        pcb,
      );

  int GetBufferFormat(
    Pointer<GUID> pGuidFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pGuidFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pGuidFormat,
          )>()(
        ptr.ref.lpVtbl,
        pGuidFormat,
      );

  int SetStartTime(
    int rt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 rt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int rt,
          )>()(
        ptr.ref.lpVtbl,
        rt,
      );

  int SetUsedBytes(
    int cb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cb,
          )>()(
        ptr.ref.lpVtbl,
        cb,
      );
}
