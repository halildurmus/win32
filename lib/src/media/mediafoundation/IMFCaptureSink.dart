// IMFCaptureSink.dart

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
import '../../media/mediafoundation/IMFMediaType.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../media/mediafoundation/IMFAttributes.dart';

/// @nodoc
const IID_IMFCaptureSink = '{72D6135B-35E9-412C-B926-FD5265F2A885}';

/// {@category Interface}
/// {@category com}
class IMFCaptureSink extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMFCaptureSink(Pointer<COMObject> ptr) : super(ptr);

  int GetOutputMediaType(
    int dwSinkStreamIndex,
    Pointer<Pointer<COMObject>> ppMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSinkStreamIndex,
            Pointer<Pointer<COMObject>> ppMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSinkStreamIndex,
            Pointer<Pointer<COMObject>> ppMediaType,
          )>()(
        ptr.ref.lpVtbl,
        dwSinkStreamIndex,
        ppMediaType,
      );

  int GetService(
    int dwSinkStreamIndex,
    Pointer<GUID> rguidService,
    Pointer<GUID> riid,
    Pointer<Pointer<COMObject>> ppUnknown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSinkStreamIndex,
            Pointer<GUID> rguidService,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppUnknown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSinkStreamIndex,
            Pointer<GUID> rguidService,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppUnknown,
          )>()(
        ptr.ref.lpVtbl,
        dwSinkStreamIndex,
        rguidService,
        riid,
        ppUnknown,
      );

  int AddStream(
    int dwSourceStreamIndex,
    Pointer<COMObject> pMediaType,
    Pointer<COMObject> pAttributes,
    Pointer<Uint32> pdwSinkStreamIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSourceStreamIndex,
            Pointer<COMObject> pMediaType,
            Pointer<COMObject> pAttributes,
            Pointer<Uint32> pdwSinkStreamIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSourceStreamIndex,
            Pointer<COMObject> pMediaType,
            Pointer<COMObject> pAttributes,
            Pointer<Uint32> pdwSinkStreamIndex,
          )>()(
        ptr.ref.lpVtbl,
        dwSourceStreamIndex,
        pMediaType,
        pAttributes,
        pdwSinkStreamIndex,
      );

  int Prepare() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int RemoveAllStreams() => ptr.ref.lpVtbl.value
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
}
