// IMFSourceReaderEx.dart

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

import '../../media/mediafoundation/IMFSourceReader.dart';
import '../../media/mediafoundation/IMFMediaType.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../media/mediafoundation/IMFTransform.dart';

/// @nodoc
const IID_IMFSourceReaderEx = '{7B981CF0-560E-4116-9875-B099895F23D7}';

/// {@category Interface}
/// {@category com}
class IMFSourceReaderEx extends IMFSourceReader {
  // vtable begins at 13, is 4 entries long.
  IMFSourceReaderEx(Pointer<COMObject> ptr) : super(ptr);

  int SetNativeMediaType(
    int dwStreamIndex,
    Pointer<COMObject> pMediaType,
    Pointer<Uint32> pdwStreamFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<COMObject> pMediaType,
            Pointer<Uint32> pdwStreamFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<COMObject> pMediaType,
            Pointer<Uint32> pdwStreamFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        pMediaType,
        pdwStreamFlags,
      );

  int AddTransformForStream(
    int dwStreamIndex,
    Pointer<COMObject> pTransformOrActivate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<COMObject> pTransformOrActivate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<COMObject> pTransformOrActivate,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        pTransformOrActivate,
      );

  int RemoveAllTransformsForStream(
    int dwStreamIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
      );

  int GetTransformForStream(
    int dwStreamIndex,
    int dwTransformIndex,
    Pointer<GUID> pGuidCategory,
    Pointer<Pointer<COMObject>> ppTransform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Uint32 dwTransformIndex,
            Pointer<GUID> pGuidCategory,
            Pointer<Pointer<COMObject>> ppTransform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            int dwTransformIndex,
            Pointer<GUID> pGuidCategory,
            Pointer<Pointer<COMObject>> ppTransform,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        dwTransformIndex,
        pGuidCategory,
        ppTransform,
      );
}
