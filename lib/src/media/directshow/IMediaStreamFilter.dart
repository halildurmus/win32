// IMediaStreamFilter.dart

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

import '../../media/directshow/IBaseFilter.dart';
import '../../media/directshow/IAMMediaStream.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IMediaStream.dart';

/// @nodoc
const IID_IMediaStreamFilter = '{BEBE595E-9A6F-11D0-8FDE-00C04FD9189D}';

/// {@category Interface}
/// {@category com}
class IMediaStreamFilter extends IBaseFilter {
  // vtable begins at 15, is 9 entries long.
  IMediaStreamFilter(Pointer<COMObject> ptr) : super(ptr);

  int AddMediaStream(
    Pointer<COMObject> pAMMediaStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAMMediaStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAMMediaStream,
          )>()(
        ptr.ref.lpVtbl,
        pAMMediaStream,
      );

  int GetMediaStream(
    Pointer<GUID> idPurpose,
    Pointer<Pointer<COMObject>> ppMediaStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> idPurpose,
            Pointer<Pointer<COMObject>> ppMediaStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> idPurpose,
            Pointer<Pointer<COMObject>> ppMediaStream,
          )>()(
        ptr.ref.lpVtbl,
        idPurpose,
        ppMediaStream,
      );

  int EnumMediaStreams(
    int Index,
    Pointer<Pointer<COMObject>> ppMediaStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Pointer<Pointer<COMObject>> ppMediaStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<Pointer<COMObject>> ppMediaStream,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        ppMediaStream,
      );

  int SupportSeeking(
    int bRenderer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bRenderer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bRenderer,
          )>()(
        ptr.ref.lpVtbl,
        bRenderer,
      );

  int ReferenceTimeToStreamTime(
    Pointer<Int64> pTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pTime,
          )>()(
        ptr.ref.lpVtbl,
        pTime,
      );

  int GetCurrentStreamTime(
    Pointer<Int64> pCurrentStreamTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pCurrentStreamTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pCurrentStreamTime,
          )>()(
        ptr.ref.lpVtbl,
        pCurrentStreamTime,
      );

  int WaitUntil(
    int WaitStreamTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 WaitStreamTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int WaitStreamTime,
          )>()(
        ptr.ref.lpVtbl,
        WaitStreamTime,
      );

  int Flush(
    int bCancelEOS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bCancelEOS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bCancelEOS,
          )>()(
        ptr.ref.lpVtbl,
        bCancelEOS,
      );

  int EndOfStream() => ptr.ref.lpVtbl.value
          .elementAt(23)
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
}
