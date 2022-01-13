// IXpsSignatureManager.dart

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
import '../../system/com/IStream.dart';
import '../../storage/xps/IXpsSigningOptions.dart';
import '../../security/cryptography/structs.g.dart';
import '../../storage/xps/IXpsSignature.dart';
import '../../storage/packaging/opc/IOpcPartUri.dart';
import '../../storage/xps/IXpsSignatureCollection.dart';
import '../../storage/xps/IXpsSignatureBlock.dart';
import '../../storage/xps/IXpsSignatureBlockCollection.dart';
import '../../security/structs.g.dart';

/// @nodoc
const IID_IXpsSignatureManager = '{D3E8D338-FDC4-4AFC-80B5-D532A1782EE1}';

/// {@category Interface}
/// {@category com}
class IXpsSignatureManager extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IXpsSignatureManager(Pointer<COMObject> ptr) : super(ptr);

  int LoadPackageFile(
    Pointer<Utf16> fileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> fileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> fileName,
          )>()(
        ptr.ref.lpVtbl,
        fileName,
      );

  int LoadPackageStream(
    Pointer<COMObject> stream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> stream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> stream,
          )>()(
        ptr.ref.lpVtbl,
        stream,
      );

  int Sign(
    Pointer<COMObject> signOptions,
    Pointer<CERT_CONTEXT> x509Certificate,
    Pointer<Pointer<COMObject>> signature,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> signOptions,
            Pointer<CERT_CONTEXT> x509Certificate,
            Pointer<Pointer<COMObject>> signature,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> signOptions,
            Pointer<CERT_CONTEXT> x509Certificate,
            Pointer<Pointer<COMObject>> signature,
          )>()(
        ptr.ref.lpVtbl,
        signOptions,
        x509Certificate,
        signature,
      );

  int GetSignatureOriginPartName(
    Pointer<Pointer<COMObject>> signatureOriginPartName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> signatureOriginPartName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> signatureOriginPartName,
          )>()(
        ptr.ref.lpVtbl,
        signatureOriginPartName,
      );

  int SetSignatureOriginPartName(
    Pointer<COMObject> signatureOriginPartName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> signatureOriginPartName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> signatureOriginPartName,
          )>()(
        ptr.ref.lpVtbl,
        signatureOriginPartName,
      );

  int GetSignatures(
    Pointer<Pointer<COMObject>> signatures,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> signatures,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> signatures,
          )>()(
        ptr.ref.lpVtbl,
        signatures,
      );

  int AddSignatureBlock(
    Pointer<COMObject> partName,
    int fixedDocumentIndex,
    Pointer<Pointer<COMObject>> signatureBlock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> partName,
            Uint32 fixedDocumentIndex,
            Pointer<Pointer<COMObject>> signatureBlock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> partName,
            int fixedDocumentIndex,
            Pointer<Pointer<COMObject>> signatureBlock,
          )>()(
        ptr.ref.lpVtbl,
        partName,
        fixedDocumentIndex,
        signatureBlock,
      );

  int GetSignatureBlocks(
    Pointer<Pointer<COMObject>> signatureBlocks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> signatureBlocks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> signatureBlocks,
          )>()(
        ptr.ref.lpVtbl,
        signatureBlocks,
      );

  int CreateSigningOptions(
    Pointer<Pointer<COMObject>> signingOptions,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> signingOptions,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> signingOptions,
          )>()(
        ptr.ref.lpVtbl,
        signingOptions,
      );

  int SavePackageToFile(
    Pointer<Utf16> fileName,
    Pointer<SECURITY_ATTRIBUTES> securityAttributes,
    int flagsAndAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> fileName,
            Pointer<SECURITY_ATTRIBUTES> securityAttributes,
            Uint32 flagsAndAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> fileName,
            Pointer<SECURITY_ATTRIBUTES> securityAttributes,
            int flagsAndAttributes,
          )>()(
        ptr.ref.lpVtbl,
        fileName,
        securityAttributes,
        flagsAndAttributes,
      );

  int SavePackageToStream(
    Pointer<COMObject> stream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> stream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> stream,
          )>()(
        ptr.ref.lpVtbl,
        stream,
      );
}

/// @nodoc
const CLSID_XpsSignatureManager = '{B0C43320-2315-44A2-B70A-0943A140A8EE}';

/// {@category com}
class XpsSignatureManager extends IXpsSignatureManager {
  XpsSignatureManager(Pointer<COMObject> ptr) : super(ptr);

  factory XpsSignatureManager.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_XpsSignatureManager);
    final iid = calloc<GUID>()..ref.setGUID(IID_IXpsSignatureManager);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return XpsSignatureManager(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
