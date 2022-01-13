// IDirect3DAuthenticatedChannel9.dart

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
import '../../graphics/direct3d9/structs.g.dart';

/// @nodoc
const IID_IDirect3DAuthenticatedChannel9 =
    '{FF24BEEE-DA21-4BEB-98B5-D2F899F98AF9}';

/// {@category Interface}
/// {@category com}
class IDirect3DAuthenticatedChannel9 extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDirect3DAuthenticatedChannel9(Pointer<COMObject> ptr) : super(ptr);

  int GetCertificateSize(
    Pointer<Uint32> pCertificateSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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
    int CertifacteSize,
    Pointer<Uint8> ppCertificate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 CertifacteSize,
            Pointer<Uint8> ppCertificate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int CertifacteSize,
            Pointer<Uint8> ppCertificate,
          )>()(
        ptr.ref.lpVtbl,
        CertifacteSize,
        ppCertificate,
      );

  int NegotiateKeyExchange(
    int DataSize,
    Pointer pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 DataSize,
            Pointer pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int DataSize,
            Pointer pData,
          )>()(
        ptr.ref.lpVtbl,
        DataSize,
        pData,
      );

  int Query(
    int InputSize,
    Pointer pInput,
    int OutputSize,
    Pointer pOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 InputSize,
            Pointer pInput,
            Uint32 OutputSize,
            Pointer pOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int InputSize,
            Pointer pInput,
            int OutputSize,
            Pointer pOutput,
          )>()(
        ptr.ref.lpVtbl,
        InputSize,
        pInput,
        OutputSize,
        pOutput,
      );

  int Configure(
    int InputSize,
    Pointer pInput,
    Pointer<D3DAUTHENTICATEDCHANNEL_CONFIGURE_OUTPUT> pOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 InputSize,
            Pointer pInput,
            Pointer<D3DAUTHENTICATEDCHANNEL_CONFIGURE_OUTPUT> pOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int InputSize,
            Pointer pInput,
            Pointer<D3DAUTHENTICATEDCHANNEL_CONFIGURE_OUTPUT> pOutput,
          )>()(
        ptr.ref.lpVtbl,
        InputSize,
        pInput,
        pOutput,
      );
}
