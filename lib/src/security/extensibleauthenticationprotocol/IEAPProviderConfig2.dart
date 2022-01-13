// IEAPProviderConfig2.dart

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

import '../../security/extensibleauthenticationprotocol/IEAPProviderConfig.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IEAPProviderConfig2 = '{D565917A-85C4-4466-856E-671C3742EA9A}';

/// {@category Interface}
/// {@category com}
class IEAPProviderConfig2 extends IEAPProviderConfig {
  // vtable begins at 8, is 2 entries long.
  IEAPProviderConfig2(Pointer<COMObject> ptr) : super(ptr);

  int ServerInvokeConfigUI2(
    int dwEapTypeId,
    int uConnectionParam,
    int hWnd,
    Pointer<Uint8> pConfigDataIn,
    int dwSizeOfConfigDataIn,
    Pointer<Pointer<Uint8>> ppConfigDataOut,
    Pointer<Uint32> pdwSizeOfConfigDataOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEapTypeId,
            IntPtr uConnectionParam,
            IntPtr hWnd,
            Pointer<Uint8> pConfigDataIn,
            Uint32 dwSizeOfConfigDataIn,
            Pointer<Pointer<Uint8>> ppConfigDataOut,
            Pointer<Uint32> pdwSizeOfConfigDataOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEapTypeId,
            int uConnectionParam,
            int hWnd,
            Pointer<Uint8> pConfigDataIn,
            int dwSizeOfConfigDataIn,
            Pointer<Pointer<Uint8>> ppConfigDataOut,
            Pointer<Uint32> pdwSizeOfConfigDataOut,
          )>()(
        ptr.ref.lpVtbl,
        dwEapTypeId,
        uConnectionParam,
        hWnd,
        pConfigDataIn,
        dwSizeOfConfigDataIn,
        ppConfigDataOut,
        pdwSizeOfConfigDataOut,
      );

  int GetGlobalConfig(
    int dwEapTypeId,
    Pointer<Pointer<Uint8>> ppConfigDataOut,
    Pointer<Uint32> pdwSizeOfConfigDataOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEapTypeId,
            Pointer<Pointer<Uint8>> ppConfigDataOut,
            Pointer<Uint32> pdwSizeOfConfigDataOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEapTypeId,
            Pointer<Pointer<Uint8>> ppConfigDataOut,
            Pointer<Uint32> pdwSizeOfConfigDataOut,
          )>()(
        ptr.ref.lpVtbl,
        dwEapTypeId,
        ppConfigDataOut,
        pdwSizeOfConfigDataOut,
      );
}
