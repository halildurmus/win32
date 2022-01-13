// IMultiMediaStream.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IMediaStream.dart';

/// @nodoc
const IID_IMultiMediaStream = '{B502D1BC-9A57-11D0-8FDE-00C04FD9189D}';

/// {@category Interface}
/// {@category com}
class IMultiMediaStream extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IMultiMediaStream(Pointer<COMObject> ptr) : super(ptr);

  int GetInformation(
    Pointer<Uint32> pdwFlags,
    Pointer<Int32> pStreamType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
            Pointer<Int32> pStreamType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
            Pointer<Int32> pStreamType,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
        pStreamType,
      );

  int GetMediaStream(
    Pointer<GUID> idPurpose,
    Pointer<Pointer<COMObject>> ppMediaStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
          .elementAt(5)
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

  int GetState(
    Pointer<Int32> pCurrentState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pCurrentState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pCurrentState,
          )>()(
        ptr.ref.lpVtbl,
        pCurrentState,
      );

  int SetState(
    int NewState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 NewState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NewState,
          )>()(
        ptr.ref.lpVtbl,
        NewState,
      );

  int GetTime(
    Pointer<Int64> pCurrentTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pCurrentTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pCurrentTime,
          )>()(
        ptr.ref.lpVtbl,
        pCurrentTime,
      );

  int GetDuration(
    Pointer<Int64> pDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pDuration,
          )>()(
        ptr.ref.lpVtbl,
        pDuration,
      );

  int Seek(
    int SeekTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 SeekTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int SeekTime,
          )>()(
        ptr.ref.lpVtbl,
        SeekTime,
      );

  int GetEndOfStreamEventHandle(
    Pointer<IntPtr> phEOS,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> phEOS,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> phEOS,
          )>()(
        ptr.ref.lpVtbl,
        phEOS,
      );
}
