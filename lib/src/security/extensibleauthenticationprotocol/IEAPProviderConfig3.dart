// IEAPProviderConfig3.dart

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

import '../../security/extensibleauthenticationprotocol/IEAPProviderConfig2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IEAPProviderConfig3 = '{B78ECD12-68BB-4F86-9BF0-8438DD3BE982}';

/// {@category Interface}
/// {@category com}
class IEAPProviderConfig3 extends IEAPProviderConfig2 {
  // vtable begins at 10, is 1 entries long.
  IEAPProviderConfig3(Pointer<COMObject> ptr) : super(ptr);

  int ServerInvokeCertificateConfigUI(
    int dwEapTypeId,
    int uConnectionParam,
    int hWnd,
    Pointer<Uint8> pConfigDataIn,
    int dwSizeOfConfigDataIn,
    Pointer<Pointer<Uint8>> ppConfigDataOut,
    Pointer<Uint32> pdwSizeOfConfigDataOut,
    int uReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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
            IntPtr uReserved,
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
            int uReserved,
          )>()(
        ptr.ref.lpVtbl,
        dwEapTypeId,
        uConnectionParam,
        hWnd,
        pConfigDataIn,
        dwSizeOfConfigDataIn,
        ppConfigDataOut,
        pdwSizeOfConfigDataOut,
        uReserved,
      );
}
