// IBackgroundCopyJobHttpOptions.dart

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
import '../../networking/backgroundintelligenttransferservice/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBackgroundCopyJobHttpOptions =
    '{F1BD1079-9F01-4BDC-8036-F09B70095066}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyJobHttpOptions extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IBackgroundCopyJobHttpOptions(Pointer<COMObject> ptr) : super(ptr);

  int SetClientCertificateByID(
    int StoreLocation,
    Pointer<Utf16> StoreName,
    Pointer<Uint8> pCertHashBlob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 StoreLocation,
            Pointer<Utf16> StoreName,
            Pointer<Uint8> pCertHashBlob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StoreLocation,
            Pointer<Utf16> StoreName,
            Pointer<Uint8> pCertHashBlob,
          )>()(
        ptr.ref.lpVtbl,
        StoreLocation,
        StoreName,
        pCertHashBlob,
      );

  int SetClientCertificateByName(
    int StoreLocation,
    Pointer<Utf16> StoreName,
    Pointer<Utf16> SubjectName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 StoreLocation,
            Pointer<Utf16> StoreName,
            Pointer<Utf16> SubjectName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int StoreLocation,
            Pointer<Utf16> StoreName,
            Pointer<Utf16> SubjectName,
          )>()(
        ptr.ref.lpVtbl,
        StoreLocation,
        StoreName,
        SubjectName,
      );

  int RemoveClientCertificate() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetClientCertificate(
    Pointer<Int32> pStoreLocation,
    Pointer<Pointer<Utf16>> pStoreName,
    Pointer<Pointer<Uint8>> ppCertHashBlob,
    Pointer<Pointer<Utf16>> pSubjectName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pStoreLocation,
            Pointer<Pointer<Utf16>> pStoreName,
            Pointer<Pointer<Uint8>> ppCertHashBlob,
            Pointer<Pointer<Utf16>> pSubjectName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pStoreLocation,
            Pointer<Pointer<Utf16>> pStoreName,
            Pointer<Pointer<Uint8>> ppCertHashBlob,
            Pointer<Pointer<Utf16>> pSubjectName,
          )>()(
        ptr.ref.lpVtbl,
        pStoreLocation,
        pStoreName,
        ppCertHashBlob,
        pSubjectName,
      );

  int SetCustomHeaders(
    Pointer<Utf16> RequestHeaders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> RequestHeaders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> RequestHeaders,
          )>()(
        ptr.ref.lpVtbl,
        RequestHeaders,
      );

  int GetCustomHeaders(
    Pointer<Pointer<Utf16>> pRequestHeaders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pRequestHeaders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pRequestHeaders,
          )>()(
        ptr.ref.lpVtbl,
        pRequestHeaders,
      );

  int SetSecurityFlags(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
      );

  int GetSecurityFlags(
    Pointer<Uint32> pFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pFlags,
          )>()(
        ptr.ref.lpVtbl,
        pFlags,
      );
}
