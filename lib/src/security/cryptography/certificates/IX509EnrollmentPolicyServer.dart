// IX509EnrollmentPolicyServer.dart

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
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../security/cryptography/certificates/IX509CertificateTemplates.dart';
import '../../../security/cryptography/certificates/IX509CertificateTemplate.dart';
import '../../../security/cryptography/certificates/ICertificationAuthorities.dart';
import '../../../security/cryptography/certificates/IObjectIds.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IX509EnrollmentPolicyServer =
    '{13B79026-2181-11DA-B2A4-000E7BBB2B09}';

/// {@category Interface}
/// {@category com}
class IX509EnrollmentPolicyServer extends IDispatch {
  // vtable begins at 7, is 24 entries long.
  IX509EnrollmentPolicyServer(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> bstrPolicyServerUrl,
    Pointer<Utf16> bstrPolicyServerId,
    int authFlags,
    int fIsUnTrusted,
    int context,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPolicyServerUrl,
            Pointer<Utf16> bstrPolicyServerId,
            Int32 authFlags,
            Int16 fIsUnTrusted,
            Int32 context,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPolicyServerUrl,
            Pointer<Utf16> bstrPolicyServerId,
            int authFlags,
            int fIsUnTrusted,
            int context,
          )>()(
        ptr.ref.lpVtbl,
        bstrPolicyServerUrl,
        bstrPolicyServerId,
        authFlags,
        fIsUnTrusted,
        context,
      );

  int LoadPolicy(
    int option,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 option,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int option,
          )>()(
        ptr.ref.lpVtbl,
        option,
      );

  int GetTemplates(
    Pointer<Pointer<COMObject>> pTemplates,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pTemplates,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pTemplates,
          )>()(
        ptr.ref.lpVtbl,
        pTemplates,
      );

  int GetCAsForTemplate(
    Pointer<COMObject> pTemplate,
    Pointer<Pointer<COMObject>> ppCAs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTemplate,
            Pointer<Pointer<COMObject>> ppCAs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTemplate,
            Pointer<Pointer<COMObject>> ppCAs,
          )>()(
        ptr.ref.lpVtbl,
        pTemplate,
        ppCAs,
      );

  int GetCAs(
    Pointer<Pointer<COMObject>> ppCAs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCAs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCAs,
          )>()(
        ptr.ref.lpVtbl,
        ppCAs,
      );

  int Validate() => ptr.ref.lpVtbl.value
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

  int GetCustomOids(
    Pointer<Pointer<COMObject>> ppObjectIds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppObjectIds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppObjectIds,
          )>()(
        ptr.ref.lpVtbl,
        ppObjectIds,
      );

  int GetNextUpdateTime(
    Pointer<Double> pDate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pDate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pDate,
          )>()(
        ptr.ref.lpVtbl,
        pDate,
      );

  int GetLastUpdateTime(
    Pointer<Double> pDate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pDate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pDate,
          )>()(
        ptr.ref.lpVtbl,
        pDate,
      );

  int GetPolicyServerUrl(
    Pointer<Pointer<Utf16>> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetPolicyServerId(
    Pointer<Pointer<Utf16>> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetFriendlyName(
    Pointer<Pointer<Utf16>> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetIsDefaultCEP(
    Pointer<Int16> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetUseClientId(
    Pointer<Int16> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetAllowUnTrustedCA(
    Pointer<Int16> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetCachePath(
    Pointer<Pointer<Utf16>> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetCacheDir(
    Pointer<Pointer<Utf16>> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int GetAuthFlags(
    Pointer<Int32> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int SetCredential(
    int hWndParent,
    int flag,
    Pointer<Utf16> strCredential,
    Pointer<Utf16> strPassword,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hWndParent,
            Int32 flag,
            Pointer<Utf16> strCredential,
            Pointer<Utf16> strPassword,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hWndParent,
            int flag,
            Pointer<Utf16> strCredential,
            Pointer<Utf16> strPassword,
          )>()(
        ptr.ref.lpVtbl,
        hWndParent,
        flag,
        strCredential,
        strPassword,
      );

  int QueryChanges(
    Pointer<Int16> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  int InitializeImport(
    VARIANT val,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT val,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT val,
          )>()(
        ptr.ref.lpVtbl,
        val,
      );

  int Export(
    int exportFlags,
    Pointer<VARIANT> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 exportFlags,
            Pointer<VARIANT> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int exportFlags,
            Pointer<VARIANT> pVal,
          )>()(
        ptr.ref.lpVtbl,
        exportFlags,
        pVal,
      );

  int get Cost {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pValue,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Cost(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(30)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
