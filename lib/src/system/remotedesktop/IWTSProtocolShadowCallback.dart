// IWTSProtocolShadowCallback.dart

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

/// @nodoc
const IID_IWTSProtocolShadowCallback = '{503A2504-AAE5-4AB1-93E0-6D1C4BC6F71A}';

/// {@category Interface}
/// {@category com}
class IWTSProtocolShadowCallback extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWTSProtocolShadowCallback(Pointer<COMObject> ptr) : super(ptr);

  int StopShadow() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int InvokeTargetShadow(
    Pointer<Utf16> pTargetServerName,
    int TargetSessionId,
    Pointer<Uint8> pParam1,
    int Param1Size,
    Pointer<Uint8> pParam2,
    int Param2Size,
    Pointer<Uint8> pParam3,
    int Param3Size,
    Pointer<Uint8> pParam4,
    int Param4Size,
    Pointer<Utf16> pClientName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pTargetServerName,
            Uint32 TargetSessionId,
            Pointer<Uint8> pParam1,
            Uint32 Param1Size,
            Pointer<Uint8> pParam2,
            Uint32 Param2Size,
            Pointer<Uint8> pParam3,
            Uint32 Param3Size,
            Pointer<Uint8> pParam4,
            Uint32 Param4Size,
            Pointer<Utf16> pClientName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pTargetServerName,
            int TargetSessionId,
            Pointer<Uint8> pParam1,
            int Param1Size,
            Pointer<Uint8> pParam2,
            int Param2Size,
            Pointer<Uint8> pParam3,
            int Param3Size,
            Pointer<Uint8> pParam4,
            int Param4Size,
            Pointer<Utf16> pClientName,
          )>()(
        ptr.ref.lpVtbl,
        pTargetServerName,
        TargetSessionId,
        pParam1,
        Param1Size,
        pParam2,
        Param2Size,
        pParam3,
        Param3Size,
        pParam4,
        Param4Size,
        pClientName,
      );
}
