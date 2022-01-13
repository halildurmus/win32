// IMFMediaKeys.dart

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
import '../../media/mediafoundation/IMFMediaKeySessionNotify.dart';
import '../../media/mediafoundation/IMFMediaKeySession.dart';
import '../../media/mediafoundation/IMFCdmSuspendNotify.dart';

/// @nodoc
const IID_IMFMediaKeys = '{5CB31C05-61FF-418F-AFDA-CAAF41421A38}';

/// {@category Interface}
/// {@category com}
class IMFMediaKeys extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMFMediaKeys(Pointer<COMObject> ptr) : super(ptr);

  int CreateSession(
    Pointer<Utf16> mimeType,
    Pointer<Uint8> initData,
    int cb,
    Pointer<Uint8> customData,
    int cbCustomData,
    Pointer<COMObject> notify,
    Pointer<Pointer<COMObject>> ppSession,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> mimeType,
            Pointer<Uint8> initData,
            Uint32 cb,
            Pointer<Uint8> customData,
            Uint32 cbCustomData,
            Pointer<COMObject> notify,
            Pointer<Pointer<COMObject>> ppSession,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> mimeType,
            Pointer<Uint8> initData,
            int cb,
            Pointer<Uint8> customData,
            int cbCustomData,
            Pointer<COMObject> notify,
            Pointer<Pointer<COMObject>> ppSession,
          )>()(
        ptr.ref.lpVtbl,
        mimeType,
        initData,
        cb,
        customData,
        cbCustomData,
        notify,
        ppSession,
      );

  Pointer<Utf16> get KeySystem {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> keySystem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> keySystem,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Shutdown() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetSuspendNotify(
    Pointer<Pointer<COMObject>> notify,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> notify,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> notify,
          )>()(
        ptr.ref.lpVtbl,
        notify,
      );
}
