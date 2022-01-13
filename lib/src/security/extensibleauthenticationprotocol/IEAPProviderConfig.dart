// IEAPProviderConfig.dart

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
const IID_IEAPProviderConfig = '{66A2DB19-D706-11D0-A37B-00C04FC9DA04}';

/// {@category Interface}
/// {@category com}
class IEAPProviderConfig extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IEAPProviderConfig(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> pszMachineName,
    int dwEapTypeId,
    Pointer<IntPtr> puConnectionParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszMachineName,
            Uint32 dwEapTypeId,
            Pointer<IntPtr> puConnectionParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszMachineName,
            int dwEapTypeId,
            Pointer<IntPtr> puConnectionParam,
          )>()(
        ptr.ref.lpVtbl,
        pszMachineName,
        dwEapTypeId,
        puConnectionParam,
      );

  int Uninitialize(
    int dwEapTypeId,
    int uConnectionParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEapTypeId,
            IntPtr uConnectionParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEapTypeId,
            int uConnectionParam,
          )>()(
        ptr.ref.lpVtbl,
        dwEapTypeId,
        uConnectionParam,
      );

  int ServerInvokeConfigUI(
    int dwEapTypeId,
    int uConnectionParam,
    int hWnd,
    int uReserved1,
    int uReserved2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEapTypeId,
            IntPtr uConnectionParam,
            IntPtr hWnd,
            IntPtr uReserved1,
            IntPtr uReserved2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEapTypeId,
            int uConnectionParam,
            int hWnd,
            int uReserved1,
            int uReserved2,
          )>()(
        ptr.ref.lpVtbl,
        dwEapTypeId,
        uConnectionParam,
        hWnd,
        uReserved1,
        uReserved2,
      );

  int RouterInvokeConfigUI(
    int dwEapTypeId,
    int uConnectionParam,
    int hwndParent,
    int dwFlags,
    Pointer<Uint8> pConnectionDataIn,
    int dwSizeOfConnectionDataIn,
    Pointer<Pointer<Uint8>> ppConnectionDataOut,
    Pointer<Uint32> pdwSizeOfConnectionDataOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEapTypeId,
            IntPtr uConnectionParam,
            IntPtr hwndParent,
            Uint32 dwFlags,
            Pointer<Uint8> pConnectionDataIn,
            Uint32 dwSizeOfConnectionDataIn,
            Pointer<Pointer<Uint8>> ppConnectionDataOut,
            Pointer<Uint32> pdwSizeOfConnectionDataOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEapTypeId,
            int uConnectionParam,
            int hwndParent,
            int dwFlags,
            Pointer<Uint8> pConnectionDataIn,
            int dwSizeOfConnectionDataIn,
            Pointer<Pointer<Uint8>> ppConnectionDataOut,
            Pointer<Uint32> pdwSizeOfConnectionDataOut,
          )>()(
        ptr.ref.lpVtbl,
        dwEapTypeId,
        uConnectionParam,
        hwndParent,
        dwFlags,
        pConnectionDataIn,
        dwSizeOfConnectionDataIn,
        ppConnectionDataOut,
        pdwSizeOfConnectionDataOut,
      );

  int RouterInvokeCredentialsUI(
    int dwEapTypeId,
    int uConnectionParam,
    int hwndParent,
    int dwFlags,
    Pointer<Uint8> pConnectionDataIn,
    int dwSizeOfConnectionDataIn,
    Pointer<Uint8> pUserDataIn,
    int dwSizeOfUserDataIn,
    Pointer<Pointer<Uint8>> ppUserDataOut,
    Pointer<Uint32> pdwSizeOfUserDataOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEapTypeId,
            IntPtr uConnectionParam,
            IntPtr hwndParent,
            Uint32 dwFlags,
            Pointer<Uint8> pConnectionDataIn,
            Uint32 dwSizeOfConnectionDataIn,
            Pointer<Uint8> pUserDataIn,
            Uint32 dwSizeOfUserDataIn,
            Pointer<Pointer<Uint8>> ppUserDataOut,
            Pointer<Uint32> pdwSizeOfUserDataOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEapTypeId,
            int uConnectionParam,
            int hwndParent,
            int dwFlags,
            Pointer<Uint8> pConnectionDataIn,
            int dwSizeOfConnectionDataIn,
            Pointer<Uint8> pUserDataIn,
            int dwSizeOfUserDataIn,
            Pointer<Pointer<Uint8>> ppUserDataOut,
            Pointer<Uint32> pdwSizeOfUserDataOut,
          )>()(
        ptr.ref.lpVtbl,
        dwEapTypeId,
        uConnectionParam,
        hwndParent,
        dwFlags,
        pConnectionDataIn,
        dwSizeOfConnectionDataIn,
        pUserDataIn,
        dwSizeOfUserDataIn,
        ppUserDataOut,
        pdwSizeOfUserDataOut,
      );
}
