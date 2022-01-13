// IAMMultiMediaStream.dart

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

import '../../media/directshow/IMultiMediaStream.dart';
import '../../media/directshow/structs.g.dart';
import '../../media/directshow/IGraphBuilder.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IMediaStreamFilter.dart';
import '../../specialTypes.dart';
import '../../media/directshow/IMediaStream.dart';
import '../../system/com/IBindCtx.dart';
import '../../system/com/IMoniker.dart';

/// @nodoc
const IID_IAMMultiMediaStream = '{BEBE595C-9A6F-11D0-8FDE-00C04FD9189D}';

/// {@category Interface}
/// {@category com}
class IAMMultiMediaStream extends IMultiMediaStream {
  // vtable begins at 12, is 7 entries long.
  IAMMultiMediaStream(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int StreamType,
    int dwFlags,
    Pointer<COMObject> pFilterGraph,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 StreamType,
            Uint32 dwFlags,
            Pointer<COMObject> pFilterGraph,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StreamType,
            int dwFlags,
            Pointer<COMObject> pFilterGraph,
          )>()(
        ptr.ref.lpVtbl,
        StreamType,
        dwFlags,
        pFilterGraph,
      );

  int GetFilterGraph(
    Pointer<Pointer<COMObject>> ppGraphBuilder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppGraphBuilder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppGraphBuilder,
          )>()(
        ptr.ref.lpVtbl,
        ppGraphBuilder,
      );

  int GetFilter(
    Pointer<Pointer<COMObject>> ppFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppFilter,
          )>()(
        ptr.ref.lpVtbl,
        ppFilter,
      );

  int AddMediaStream(
    Pointer<COMObject> pStreamObject,
    Pointer<GUID> PurposeId,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppNewStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStreamObject,
            Pointer<GUID> PurposeId,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppNewStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStreamObject,
            Pointer<GUID> PurposeId,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppNewStream,
          )>()(
        ptr.ref.lpVtbl,
        pStreamObject,
        PurposeId,
        dwFlags,
        ppNewStream,
      );

  int OpenFile(
    Pointer<Utf16> pszFileName,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFileName,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFileName,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pszFileName,
        dwFlags,
      );

  int OpenMoniker(
    Pointer<COMObject> pCtx,
    Pointer<COMObject> pMoniker,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCtx,
            Pointer<COMObject> pMoniker,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCtx,
            Pointer<COMObject> pMoniker,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pCtx,
        pMoniker,
        dwFlags,
      );

  int Render(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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
