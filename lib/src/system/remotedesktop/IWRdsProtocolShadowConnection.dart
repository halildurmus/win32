// IWRdsProtocolShadowConnection.dart

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
import '../../system/remotedesktop/IWRdsProtocolShadowCallback.dart';

/// @nodoc
const IID_IWRdsProtocolShadowConnection =
    '{9AE85CE6-CADE-4548-8FEB-99016597F60A}';

/// {@category Interface}
/// {@category com}
class IWRdsProtocolShadowConnection extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWRdsProtocolShadowConnection(Pointer<COMObject> ptr) : super(ptr);

  int Start(
    Pointer<Utf16> pTargetServerName,
    int TargetSessionId,
    int HotKeyVk,
    int HotkeyModifiers,
    Pointer<COMObject> pShadowCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pTargetServerName,
            Uint32 TargetSessionId,
            Uint8 HotKeyVk,
            Uint16 HotkeyModifiers,
            Pointer<COMObject> pShadowCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pTargetServerName,
            int TargetSessionId,
            int HotKeyVk,
            int HotkeyModifiers,
            Pointer<COMObject> pShadowCallback,
          )>()(
        ptr.ref.lpVtbl,
        pTargetServerName,
        TargetSessionId,
        HotKeyVk,
        HotkeyModifiers,
        pShadowCallback,
      );

  int Stop() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int DoTarget(
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
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
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
