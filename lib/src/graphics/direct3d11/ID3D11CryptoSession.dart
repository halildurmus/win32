// ID3D11CryptoSession.dart

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

import '../../graphics/direct3d11/ID3D11DeviceChild.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D11CryptoSession = '{9B32F9AD-BDCC-40A6-A39D-D5C865845720}';

/// {@category Interface}
/// {@category com}
class ID3D11CryptoSession extends ID3D11DeviceChild {
  // vtable begins at 7, is 5 entries long.
  ID3D11CryptoSession(Pointer<COMObject> ptr) : super(ptr);

  void GetCryptoType(
    Pointer<GUID> pCryptoType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<GUID> pCryptoType,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<GUID> pCryptoType,
          )>()(
        ptr.ref.lpVtbl,
        pCryptoType,
      );

  void GetDecoderProfile(
    Pointer<GUID> pDecoderProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<GUID> pDecoderProfile,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<GUID> pDecoderProfile,
          )>()(
        ptr.ref.lpVtbl,
        pDecoderProfile,
      );

  int GetCertificateSize(
    Pointer<Uint32> pCertificateSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCertificateSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCertificateSize,
          )>()(
        ptr.ref.lpVtbl,
        pCertificateSize,
      );

  int GetCertificate(
    int CertificateSize,
    Pointer<Uint8> pCertificate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 CertificateSize,
            Pointer<Uint8> pCertificate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int CertificateSize,
            Pointer<Uint8> pCertificate,
          )>()(
        ptr.ref.lpVtbl,
        CertificateSize,
        pCertificate,
      );

  void GetCryptoSessionHandle(
    Pointer<IntPtr> pCryptoSessionHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<IntPtr> pCryptoSessionHandle,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<IntPtr> pCryptoSessionHandle,
          )>()(
        ptr.ref.lpVtbl,
        pCryptoSessionHandle,
      );
}
