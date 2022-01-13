// IWMSecureChannel.dart

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

import '../../media/windowsmediaformat/IWMAuthorizer.dart';
import '../../foundation/structs.g.dart';
import '../../media/windowsmediaformat/IWMSecureChannel.dart';

/// @nodoc
const IID_IWMSecureChannel = '{2720598A-D0F2-4189-BD10-91C46EF0936F}';

/// {@category Interface}
/// {@category com}
class IWMSecureChannel extends IWMAuthorizer {
  // vtable begins at 6, is 11 entries long.
  IWMSecureChannel(Pointer<COMObject> ptr) : super(ptr);

  int WMSC_AddCertificate(
    Pointer<COMObject> pCert,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCert,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCert,
          )>()(
        ptr.ref.lpVtbl,
        pCert,
      );

  int WMSC_AddSignature(
    Pointer<Uint8> pbCertSig,
    int cbCertSig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbCertSig,
            Uint32 cbCertSig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbCertSig,
            int cbCertSig,
          )>()(
        ptr.ref.lpVtbl,
        pbCertSig,
        cbCertSig,
      );

  int WMSC_Connect(
    Pointer<COMObject> pOtherSide,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pOtherSide,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pOtherSide,
          )>()(
        ptr.ref.lpVtbl,
        pOtherSide,
      );

  int WMSC_IsConnected(
    Pointer<Int32> pfIsConnected,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfIsConnected,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfIsConnected,
          )>()(
        ptr.ref.lpVtbl,
        pfIsConnected,
      );

  int WMSC_Disconnect() => ptr.ref.lpVtbl.value
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

  int WMSC_GetValidCertificate(
    Pointer<Pointer<Uint8>> ppbCertificate,
    Pointer<Uint32> pdwSignature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppbCertificate,
            Pointer<Uint32> pdwSignature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppbCertificate,
            Pointer<Uint32> pdwSignature,
          )>()(
        ptr.ref.lpVtbl,
        ppbCertificate,
        pdwSignature,
      );

  int WMSC_Encrypt(
    Pointer<Uint8> pbData,
    int cbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbData,
            Uint32 cbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbData,
            int cbData,
          )>()(
        ptr.ref.lpVtbl,
        pbData,
        cbData,
      );

  int WMSC_Decrypt(
    Pointer<Uint8> pbData,
    int cbData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbData,
            Uint32 cbData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbData,
            int cbData,
          )>()(
        ptr.ref.lpVtbl,
        pbData,
        cbData,
      );

  int WMSC_Lock() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int WMSC_Unlock() => ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int WMSC_SetSharedData(
    int dwCertIndex,
    Pointer<Uint8> pbSharedData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCertIndex,
            Pointer<Uint8> pbSharedData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCertIndex,
            Pointer<Uint8> pbSharedData,
          )>()(
        ptr.ref.lpVtbl,
        dwCertIndex,
        pbSharedData,
      );
}
