// IMediaStream.dart

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
import '../../media/directshow/IMultiMediaStream.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';
import '../../media/directshow/IMediaStream.dart';
import '../../media/directshow/IStreamSample.dart';

/// @nodoc
const IID_IMediaStream = '{B502D1BD-9A57-11D0-8FDE-00C04FD9189D}';

/// {@category Interface}
/// {@category com}
class IMediaStream extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMediaStream(Pointer<COMObject> ptr) : super(ptr);

  int GetMultiMediaStream(
    Pointer<Pointer<COMObject>> ppMultiMediaStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMultiMediaStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMultiMediaStream,
          )>()(
        ptr.ref.lpVtbl,
        ppMultiMediaStream,
      );

  int GetInformation(
    Pointer<GUID> pPurposeId,
    Pointer<Int32> pType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pPurposeId,
            Pointer<Int32> pType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pPurposeId,
            Pointer<Int32> pType,
          )>()(
        ptr.ref.lpVtbl,
        pPurposeId,
        pType,
      );

  int SetSameFormat(
    Pointer<COMObject> pStreamThatHasDesiredFormat,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStreamThatHasDesiredFormat,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStreamThatHasDesiredFormat,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pStreamThatHasDesiredFormat,
        dwFlags,
      );

  int AllocateSample(
    int dwFlags,
    Pointer<Pointer<COMObject>> ppSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppSample,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        ppSample,
      );

  int CreateSharedSample(
    Pointer<COMObject> pExistingSample,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppNewSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pExistingSample,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppNewSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pExistingSample,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppNewSample,
          )>()(
        ptr.ref.lpVtbl,
        pExistingSample,
        dwFlags,
        ppNewSample,
      );

  int SendEndOfStream(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
      );
}
