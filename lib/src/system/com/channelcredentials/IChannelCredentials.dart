// IChannelCredentials.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IDispatch.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IChannelCredentials = '{181B448C-C17C-4B17-AC6D-06699B93198F}';

/// {@category Interface}
/// {@category com}
class IChannelCredentials extends IDispatch {
  // vtable begins at 7, is 10 entries long.
  IChannelCredentials(Pointer<COMObject> ptr) : super(ptr);

  int SetWindowsCredential(
    Pointer<Utf16> domain,
    Pointer<Utf16> username,
    Pointer<Utf16> password,
    int impersonationLevel,
    int allowNtlm,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> domain,
            Pointer<Utf16> username,
            Pointer<Utf16> password,
            Int32 impersonationLevel,
            Int32 allowNtlm,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> domain,
            Pointer<Utf16> username,
            Pointer<Utf16> password,
            int impersonationLevel,
            int allowNtlm,
          )>()(
        ptr.ref.lpVtbl,
        domain,
        username,
        password,
        impersonationLevel,
        allowNtlm,
      );

  int SetUserNameCredential(
    Pointer<Utf16> username,
    Pointer<Utf16> password,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> username,
            Pointer<Utf16> password,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> username,
            Pointer<Utf16> password,
          )>()(
        ptr.ref.lpVtbl,
        username,
        password,
      );

  int SetClientCertificateFromStore(
    Pointer<Utf16> storeLocation,
    Pointer<Utf16> storeName,
    Pointer<Utf16> findYype,
    VARIANT findValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> storeLocation,
            Pointer<Utf16> storeName,
            Pointer<Utf16> findYype,
            VARIANT findValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> storeLocation,
            Pointer<Utf16> storeName,
            Pointer<Utf16> findYype,
            VARIANT findValue,
          )>()(
        ptr.ref.lpVtbl,
        storeLocation,
        storeName,
        findYype,
        findValue,
      );

  int SetClientCertificateFromStoreByName(
    Pointer<Utf16> subjectName,
    Pointer<Utf16> storeLocation,
    Pointer<Utf16> storeName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> subjectName,
            Pointer<Utf16> storeLocation,
            Pointer<Utf16> storeName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> subjectName,
            Pointer<Utf16> storeLocation,
            Pointer<Utf16> storeName,
          )>()(
        ptr.ref.lpVtbl,
        subjectName,
        storeLocation,
        storeName,
      );

  int SetClientCertificateFromFile(
    Pointer<Utf16> filename,
    Pointer<Utf16> password,
    Pointer<Utf16> keystorageFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filename,
            Pointer<Utf16> password,
            Pointer<Utf16> keystorageFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filename,
            Pointer<Utf16> password,
            Pointer<Utf16> keystorageFlags,
          )>()(
        ptr.ref.lpVtbl,
        filename,
        password,
        keystorageFlags,
      );

  int SetDefaultServiceCertificateFromStore(
    Pointer<Utf16> storeLocation,
    Pointer<Utf16> storeName,
    Pointer<Utf16> findType,
    VARIANT findValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> storeLocation,
            Pointer<Utf16> storeName,
            Pointer<Utf16> findType,
            VARIANT findValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> storeLocation,
            Pointer<Utf16> storeName,
            Pointer<Utf16> findType,
            VARIANT findValue,
          )>()(
        ptr.ref.lpVtbl,
        storeLocation,
        storeName,
        findType,
        findValue,
      );

  int SetDefaultServiceCertificateFromStoreByName(
    Pointer<Utf16> subjectName,
    Pointer<Utf16> storeLocation,
    Pointer<Utf16> storeName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> subjectName,
            Pointer<Utf16> storeLocation,
            Pointer<Utf16> storeName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> subjectName,
            Pointer<Utf16> storeLocation,
            Pointer<Utf16> storeName,
          )>()(
        ptr.ref.lpVtbl,
        subjectName,
        storeLocation,
        storeName,
      );

  int SetDefaultServiceCertificateFromFile(
    Pointer<Utf16> filename,
    Pointer<Utf16> password,
    Pointer<Utf16> keystorageFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> filename,
            Pointer<Utf16> password,
            Pointer<Utf16> keystorageFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> filename,
            Pointer<Utf16> password,
            Pointer<Utf16> keystorageFlags,
          )>()(
        ptr.ref.lpVtbl,
        filename,
        password,
        keystorageFlags,
      );

  int SetServiceCertificateAuthentication(
    Pointer<Utf16> storeLocation,
    Pointer<Utf16> revocationMode,
    Pointer<Utf16> certificateValidationMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> storeLocation,
            Pointer<Utf16> revocationMode,
            Pointer<Utf16> certificateValidationMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> storeLocation,
            Pointer<Utf16> revocationMode,
            Pointer<Utf16> certificateValidationMode,
          )>()(
        ptr.ref.lpVtbl,
        storeLocation,
        revocationMode,
        certificateValidationMode,
      );

  int SetIssuedToken(
    Pointer<Utf16> localIssuerAddres,
    Pointer<Utf16> localIssuerBindingType,
    Pointer<Utf16> localIssuerBinding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> localIssuerAddres,
            Pointer<Utf16> localIssuerBindingType,
            Pointer<Utf16> localIssuerBinding,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> localIssuerAddres,
            Pointer<Utf16> localIssuerBindingType,
            Pointer<Utf16> localIssuerBinding,
          )>()(
        ptr.ref.lpVtbl,
        localIssuerAddres,
        localIssuerBindingType,
        localIssuerBinding,
      );
}
