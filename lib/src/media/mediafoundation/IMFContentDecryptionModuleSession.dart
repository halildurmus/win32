// IMFContentDecryptionModuleSession.dart

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

/// @nodoc
const IID_IMFContentDecryptionModuleSession =
    '{4E233EFD-1DD2-49E8-B577-D63EEE4C0D33}';

/// {@category Interface}
/// {@category com}
class IMFContentDecryptionModuleSession extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IMFContentDecryptionModuleSession(Pointer<COMObject> ptr) : super(ptr);

  int GetSessionId(
    Pointer<Pointer<Utf16>> sessionId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> sessionId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> sessionId,
          )>()(
        ptr.ref.lpVtbl,
        sessionId,
      );

  int GetExpiration(
    Pointer<Double> expiration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> expiration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> expiration,
          )>()(
        ptr.ref.lpVtbl,
        expiration,
      );

  int GetKeyStatuses(
    Pointer<Pointer<MFMediaKeyStatus>> keyStatuses,
    Pointer<Uint32> numKeyStatuses,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<MFMediaKeyStatus>> keyStatuses,
            Pointer<Uint32> numKeyStatuses,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<MFMediaKeyStatus>> keyStatuses,
            Pointer<Uint32> numKeyStatuses,
          )>()(
        ptr.ref.lpVtbl,
        keyStatuses,
        numKeyStatuses,
      );

  int Load(
    Pointer<Utf16> sessionId,
    Pointer<Int32> loaded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> sessionId,
            Pointer<Int32> loaded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> sessionId,
            Pointer<Int32> loaded,
          )>()(
        ptr.ref.lpVtbl,
        sessionId,
        loaded,
      );

  int GenerateRequest(
    Pointer<Utf16> initDataType,
    Pointer<Uint8> initData,
    int initDataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> initDataType,
            Pointer<Uint8> initData,
            Uint32 initDataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> initDataType,
            Pointer<Uint8> initData,
            int initDataSize,
          )>()(
        ptr.ref.lpVtbl,
        initDataType,
        initData,
        initDataSize,
      );

  int Update(
    Pointer<Uint8> response,
    int responseSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> response,
            Uint32 responseSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> response,
            int responseSize,
          )>()(
        ptr.ref.lpVtbl,
        response,
        responseSize,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int Remove() => ptr.ref.lpVtbl.value
          .elementAt(10)
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
