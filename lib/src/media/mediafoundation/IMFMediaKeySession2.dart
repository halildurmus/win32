// IMFMediaKeySession2.dart

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

import '../../media/mediafoundation/IMFMediaKeySession.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFMediaKeySession2 = '{E9707E05-6D55-4636-B185-3DE21210BD75}';

/// {@category Interface}
/// {@category com}
class IMFMediaKeySession2 extends IMFMediaKeySession {
  // vtable begins at 8, is 6 entries long.
  IMFMediaKeySession2(Pointer<COMObject> ptr) : super(ptr);

  int get_KeyStatuses(
    Pointer<Pointer<MFMediaKeyStatus>> pKeyStatusesArray,
    Pointer<Uint32> puSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<MFMediaKeyStatus>> pKeyStatusesArray,
            Pointer<Uint32> puSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<MFMediaKeyStatus>> pKeyStatusesArray,
            Pointer<Uint32> puSize,
          )>()(
        ptr.ref.lpVtbl,
        pKeyStatusesArray,
        puSize,
      );

  int Load(
    Pointer<Utf16> bstrSessionId,
    Pointer<Int32> pfLoaded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrSessionId,
            Pointer<Int32> pfLoaded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrSessionId,
            Pointer<Int32> pfLoaded,
          )>()(
        ptr.ref.lpVtbl,
        bstrSessionId,
        pfLoaded,
      );

  int GenerateRequest(
    Pointer<Utf16> initDataType,
    Pointer<Uint8> pbInitData,
    int cb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> initDataType,
            Pointer<Uint8> pbInitData,
            Uint32 cb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> initDataType,
            Pointer<Uint8> pbInitData,
            int cb,
          )>()(
        ptr.ref.lpVtbl,
        initDataType,
        pbInitData,
        cb,
      );

  double get Expiration {
    final retValuePtr = calloc<Double>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> dblExpiration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> dblExpiration,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Remove() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int Shutdown() => ptr.ref.lpVtbl.value
          .elementAt(13)
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
