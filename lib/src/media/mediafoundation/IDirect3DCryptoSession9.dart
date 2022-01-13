// IDirect3DCryptoSession9.dart

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
import '../../graphics/direct3d9/IDirect3DSurface9.dart';
import '../../graphics/direct3d9/structs.g.dart';

/// @nodoc
const IID_IDirect3DCryptoSession9 = '{FA0AB799-7A9C-48CA-8C5B-237E71A54434}';

/// {@category Interface}
/// {@category com}
class IDirect3DCryptoSession9 extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IDirect3DCryptoSession9(Pointer<COMObject> ptr) : super(ptr);

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

  int EncryptionBlt(
    Pointer<COMObject> pSrcSurface,
    Pointer<COMObject> pDstSurface,
    int DstSurfaceSize,
    Pointer pIV,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSrcSurface,
            Pointer<COMObject> pDstSurface,
            Uint32 DstSurfaceSize,
            Pointer pIV,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSrcSurface,
            Pointer<COMObject> pDstSurface,
            int DstSurfaceSize,
            Pointer pIV,
          )>()(
        ptr.ref.lpVtbl,
        pSrcSurface,
        pDstSurface,
        DstSurfaceSize,
        pIV,
      );

  int DecryptionBlt(
    Pointer<COMObject> pSrcSurface,
    Pointer<COMObject> pDstSurface,
    int SrcSurfaceSize,
    Pointer<D3DENCRYPTED_BLOCK_INFO> pEncryptedBlockInfo,
    Pointer pContentKey,
    Pointer pIV,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSrcSurface,
            Pointer<COMObject> pDstSurface,
            Uint32 SrcSurfaceSize,
            Pointer<D3DENCRYPTED_BLOCK_INFO> pEncryptedBlockInfo,
            Pointer pContentKey,
            Pointer pIV,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSrcSurface,
            Pointer<COMObject> pDstSurface,
            int SrcSurfaceSize,
            Pointer<D3DENCRYPTED_BLOCK_INFO> pEncryptedBlockInfo,
            Pointer pContentKey,
            Pointer pIV,
          )>()(
        ptr.ref.lpVtbl,
        pSrcSurface,
        pDstSurface,
        SrcSurfaceSize,
        pEncryptedBlockInfo,
        pContentKey,
        pIV,
      );

  int GetSurfacePitch(
    Pointer<COMObject> pSrcSurface,
    Pointer<Uint32> pSurfacePitch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSrcSurface,
            Pointer<Uint32> pSurfacePitch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSrcSurface,
            Pointer<Uint32> pSurfacePitch,
          )>()(
        ptr.ref.lpVtbl,
        pSrcSurface,
        pSurfacePitch,
      );

  int StartSessionKeyRefresh(
    Pointer pRandomNumber,
    int RandomNumberSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pRandomNumber,
            Uint32 RandomNumberSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pRandomNumber,
            int RandomNumberSize,
          )>()(
        ptr.ref.lpVtbl,
        pRandomNumber,
        RandomNumberSize,
      );

  int FinishSessionKeyRefresh() => ptr.ref.lpVtbl.value
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

  int GetEncryptionBltKey(
    Pointer pReadbackKey,
    int KeySize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pReadbackKey,
            Uint32 KeySize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pReadbackKey,
            int KeySize,
          )>()(
        ptr.ref.lpVtbl,
        pReadbackKey,
        KeySize,
      );
}
