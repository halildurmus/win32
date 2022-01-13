// IMFMediaEngineExtension.dart

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
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/IMFByteStream.dart';
import '../../specialTypes.dart';
import '../../media/mediafoundation/IMFAsyncCallback.dart';
import '../../media/mediafoundation/IMFAsyncResult.dart';

/// @nodoc
const IID_IMFMediaEngineExtension = '{2F69D622-20B5-41E9-AFDF-89CED1DDA04E}';

/// {@category Interface}
/// {@category com}
class IMFMediaEngineExtension extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMFMediaEngineExtension(Pointer<COMObject> ptr) : super(ptr);

  int CanPlayType(
    int AudioOnly,
    Pointer<Utf16> MimeType,
    Pointer<Int32> pAnswer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 AudioOnly,
            Pointer<Utf16> MimeType,
            Pointer<Int32> pAnswer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int AudioOnly,
            Pointer<Utf16> MimeType,
            Pointer<Int32> pAnswer,
          )>()(
        ptr.ref.lpVtbl,
        AudioOnly,
        MimeType,
        pAnswer,
      );

  int BeginCreateObject(
    Pointer<Utf16> bstrURL,
    Pointer<COMObject> pByteStream,
    int type,
    Pointer<Pointer<COMObject>> ppIUnknownCancelCookie,
    Pointer<COMObject> pCallback,
    Pointer<COMObject> punkState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrURL,
            Pointer<COMObject> pByteStream,
            Int32 type,
            Pointer<Pointer<COMObject>> ppIUnknownCancelCookie,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrURL,
            Pointer<COMObject> pByteStream,
            int type,
            Pointer<Pointer<COMObject>> ppIUnknownCancelCookie,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>()(
        ptr.ref.lpVtbl,
        bstrURL,
        pByteStream,
        type,
        ppIUnknownCancelCookie,
        pCallback,
        punkState,
      );

  int CancelObjectCreation(
    Pointer<COMObject> pIUnknownCancelCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIUnknownCancelCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIUnknownCancelCookie,
          )>()(
        ptr.ref.lpVtbl,
        pIUnknownCancelCookie,
      );

  int EndCreateObject(
    Pointer<COMObject> pResult,
    Pointer<Pointer<COMObject>> ppObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Pointer<COMObject>> ppObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
            Pointer<Pointer<COMObject>> ppObject,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
        ppObject,
      );
}
