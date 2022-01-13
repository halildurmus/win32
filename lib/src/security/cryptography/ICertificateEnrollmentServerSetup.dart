// ICertificateEnrollmentServerSetup.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../security/cryptography/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ICertificateEnrollmentServerSetup =
    '{70027FDB-9DD9-4921-8944-B35CB31BD2EC}';

/// {@category Interface}
/// {@category com}
class ICertificateEnrollmentServerSetup extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  ICertificateEnrollmentServerSetup(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get ErrorString {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int InitializeInstallDefaults() => ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int GetProperty(
    int propertyId,
    Pointer<VARIANT> pPropertyValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 propertyId,
            Pointer<VARIANT> pPropertyValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int propertyId,
            Pointer<VARIANT> pPropertyValue,
          )>()(
        ptr.ref.lpVtbl,
        propertyId,
        pPropertyValue,
      );

  int SetProperty(
    int propertyId,
    Pointer<VARIANT> pPropertyValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 propertyId,
            Pointer<VARIANT> pPropertyValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int propertyId,
            Pointer<VARIANT> pPropertyValue,
          )>()(
        ptr.ref.lpVtbl,
        propertyId,
        pPropertyValue,
      );

  int SetApplicationPoolCredentials(
    Pointer<Utf16> bstrUsername,
    Pointer<Utf16> bstrPassword,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrUsername,
            Pointer<Utf16> bstrPassword,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrUsername,
            Pointer<Utf16> bstrPassword,
          )>()(
        ptr.ref.lpVtbl,
        bstrUsername,
        bstrPassword,
      );

  int Install() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int UnInstall(
    Pointer<VARIANT> pCAConfig,
    Pointer<VARIANT> pAuthentication,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pCAConfig,
            Pointer<VARIANT> pAuthentication,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pCAConfig,
            Pointer<VARIANT> pAuthentication,
          )>()(
        ptr.ref.lpVtbl,
        pCAConfig,
        pAuthentication,
      );
}
