// IAMMediaStream.dart

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

import '../../media/directshow/IMediaStream.dart';
import '../../specialTypes.dart';
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IAMMultiMediaStream.dart';
import '../../media/directshow/IMediaStreamFilter.dart';
import '../../media/directshow/IFilterGraph.dart';

/// @nodoc
const IID_IAMMediaStream = '{BEBE595D-9A6F-11D0-8FDE-00C04FD9189D}';

/// {@category Interface}
/// {@category com}
class IAMMediaStream extends IMediaStream {
  // vtable begins at 9, is 5 entries long.
  IAMMediaStream(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pSourceObject,
    int dwFlags,
    Pointer<GUID> PurposeId,
    int StreamType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSourceObject,
            Uint32 dwFlags,
            Pointer<GUID> PurposeId,
            Int32 StreamType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSourceObject,
            int dwFlags,
            Pointer<GUID> PurposeId,
            int StreamType,
          )>()(
        ptr.ref.lpVtbl,
        pSourceObject,
        dwFlags,
        PurposeId,
        StreamType,
      );

  int SetState(
    int State,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 State,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int State,
          )>()(
        ptr.ref.lpVtbl,
        State,
      );

  int JoinAMMultiMediaStream(
    Pointer<COMObject> pAMMultiMediaStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAMMultiMediaStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAMMultiMediaStream,
          )>()(
        ptr.ref.lpVtbl,
        pAMMultiMediaStream,
      );

  int JoinFilter(
    Pointer<COMObject> pMediaStreamFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pMediaStreamFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pMediaStreamFilter,
          )>()(
        ptr.ref.lpVtbl,
        pMediaStreamFilter,
      );

  int JoinFilterGraph(
    Pointer<COMObject> pFilterGraph,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFilterGraph,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFilterGraph,
          )>()(
        ptr.ref.lpVtbl,
        pFilterGraph,
      );
}
