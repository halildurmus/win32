// IRouterProtocolConfig.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IRouterProtocolConfig = '{66A2DB16-D706-11D0-A37B-00C04FC9DA04}';

/// {@category Interface}
/// {@category com}
class IRouterProtocolConfig extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IRouterProtocolConfig(Pointer<COMObject> ptr) : super(ptr);

  int AddProtocol(
    Pointer<Utf16> pszMachineName,
    int dwTransportId,
    int dwProtocolId,
    int hWnd,
    int dwFlags,
    Pointer<COMObject> pRouter,
    int uReserved1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszMachineName,
            Uint32 dwTransportId,
            Uint32 dwProtocolId,
            IntPtr hWnd,
            Uint32 dwFlags,
            Pointer<COMObject> pRouter,
            IntPtr uReserved1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszMachineName,
            int dwTransportId,
            int dwProtocolId,
            int hWnd,
            int dwFlags,
            Pointer<COMObject> pRouter,
            int uReserved1,
          )>()(
        ptr.ref.lpVtbl,
        pszMachineName,
        dwTransportId,
        dwProtocolId,
        hWnd,
        dwFlags,
        pRouter,
        uReserved1,
      );

  int RemoveProtocol(
    Pointer<Utf16> pszMachineName,
    int dwTransportId,
    int dwProtocolId,
    int hWnd,
    int dwFlags,
    Pointer<COMObject> pRouter,
    int uReserved1,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszMachineName,
            Uint32 dwTransportId,
            Uint32 dwProtocolId,
            IntPtr hWnd,
            Uint32 dwFlags,
            Pointer<COMObject> pRouter,
            IntPtr uReserved1,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszMachineName,
            int dwTransportId,
            int dwProtocolId,
            int hWnd,
            int dwFlags,
            Pointer<COMObject> pRouter,
            int uReserved1,
          )>()(
        ptr.ref.lpVtbl,
        pszMachineName,
        dwTransportId,
        dwProtocolId,
        hWnd,
        dwFlags,
        pRouter,
        uReserved1,
      );
}
