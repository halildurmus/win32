// IStreamSample.dart

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
import '../../media/directshow/IMediaStream.dart';
import '../../foundation/structs.g.dart';
import '../../foundation/callbacks.g.dart';

/// @nodoc
const IID_IStreamSample = '{B502D1BE-9A57-11D0-8FDE-00C04FD9189D}';

/// {@category Interface}
/// {@category com}
class IStreamSample extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IStreamSample(Pointer<COMObject> ptr) : super(ptr);

  int GetMediaStream(
    Pointer<Pointer<COMObject>> ppMediaStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMediaStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMediaStream,
          )>()(
        ptr.ref.lpVtbl,
        ppMediaStream,
      );

  int GetSampleTimes(
    Pointer<Int64> pStartTime,
    Pointer<Int64> pEndTime,
    Pointer<Int64> pCurrentTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pStartTime,
            Pointer<Int64> pEndTime,
            Pointer<Int64> pCurrentTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pStartTime,
            Pointer<Int64> pEndTime,
            Pointer<Int64> pCurrentTime,
          )>()(
        ptr.ref.lpVtbl,
        pStartTime,
        pEndTime,
        pCurrentTime,
      );

  int SetSampleTimes(
    Pointer<Int64> pStartTime,
    Pointer<Int64> pEndTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pStartTime,
            Pointer<Int64> pEndTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pStartTime,
            Pointer<Int64> pEndTime,
          )>()(
        ptr.ref.lpVtbl,
        pStartTime,
        pEndTime,
      );

  int Update(
    int dwFlags,
    int hEvent,
    Pointer<NativeFunction<PAPCFUNC>> pfnAPC,
    int dwAPCData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            IntPtr hEvent,
            Pointer<NativeFunction<PAPCFUNC>> pfnAPC,
            IntPtr dwAPCData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            int hEvent,
            Pointer<NativeFunction<PAPCFUNC>> pfnAPC,
            int dwAPCData,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        hEvent,
        pfnAPC,
        dwAPCData,
      );

  int CompletionStatus(
    int dwFlags,
    int dwMilliseconds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Uint32 dwMilliseconds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            int dwMilliseconds,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        dwMilliseconds,
      );
}
