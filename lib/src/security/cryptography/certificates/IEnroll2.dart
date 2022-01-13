// IEnroll2.dart

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

import '../../../security/cryptography/certificates/IEnroll.dart';
import '../../../security/cryptography/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IEnroll2 = '{C080E199-B7DF-11D2-A421-00C04F79FE8E}';

/// {@category Interface}
/// {@category com}
class IEnroll2 extends IEnroll {
  // vtable begins at 73, is 18 entries long.
  IEnroll2(Pointer<COMObject> ptr) : super(ptr);

  int InstallPKCS7Blob(
    Pointer<CRYPTOAPI_BLOB> pBlobPKCS7,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(73)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CRYPTOAPI_BLOB> pBlobPKCS7,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CRYPTOAPI_BLOB> pBlobPKCS7,
          )>()(
        ptr.ref.lpVtbl,
        pBlobPKCS7,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(74)
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

  int GetSupportedKeySpec(
    Pointer<Int32> pdwKeySpec,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(75)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pdwKeySpec,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pdwKeySpec,
          )>()(
        ptr.ref.lpVtbl,
        pdwKeySpec,
      );

  int GetKeyLen(
    int fMin,
    int fExchange,
    Pointer<Int32> pdwKeySize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(76)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fMin,
            Int32 fExchange,
            Pointer<Int32> pdwKeySize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fMin,
            int fExchange,
            Pointer<Int32> pdwKeySize,
          )>()(
        ptr.ref.lpVtbl,
        fMin,
        fExchange,
        pdwKeySize,
      );

  int EnumAlgs(
    int dwIndex,
    int algClass,
    Pointer<Int32> pdwAlgID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(77)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dwIndex,
            Int32 algClass,
            Pointer<Int32> pdwAlgID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            int algClass,
            Pointer<Int32> pdwAlgID,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        algClass,
        pdwAlgID,
      );

  int GetAlgNameWStr(
    int algID,
    Pointer<Pointer<Utf16>> ppwsz,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(78)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 algID,
            Pointer<Pointer<Utf16>> ppwsz,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int algID,
            Pointer<Pointer<Utf16>> ppwsz,
          )>()(
        ptr.ref.lpVtbl,
        algID,
        ppwsz,
      );

  set ReuseHardwareKeyIfUnableToGenNew(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(79)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 fReuseHardwareKeyIfUnableToGenNew,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int fReuseHardwareKeyIfUnableToGenNew,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get ReuseHardwareKeyIfUnableToGenNew {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(80)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> fReuseHardwareKeyIfUnableToGenNew,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> fReuseHardwareKeyIfUnableToGenNew,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set HashAlgID(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(81)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 hashAlgID,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int hashAlgID,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get HashAlgID {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(82)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> hashAlgID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> hashAlgID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int SetHStoreMy(
    Pointer hStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(83)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer hStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer hStore,
          )>()(
        ptr.ref.lpVtbl,
        hStore,
      );

  int SetHStoreCA(
    Pointer hStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(84)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer hStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer hStore,
          )>()(
        ptr.ref.lpVtbl,
        hStore,
      );

  int SetHStoreROOT(
    Pointer hStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(85)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer hStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer hStore,
          )>()(
        ptr.ref.lpVtbl,
        hStore,
      );

  int SetHStoreRequest(
    Pointer hStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(86)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer hStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer hStore,
          )>()(
        ptr.ref.lpVtbl,
        hStore,
      );

  set LimitExchangeKeyToEncipherment(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(87)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 fLimitExchangeKeyToEncipherment,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int fLimitExchangeKeyToEncipherment,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get LimitExchangeKeyToEncipherment {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(88)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> fLimitExchangeKeyToEncipherment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> fLimitExchangeKeyToEncipherment,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set EnableSMIMECapabilities(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(89)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 fEnableSMIMECapabilities,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int fEnableSMIMECapabilities,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get EnableSMIMECapabilities {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(90)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> fEnableSMIMECapabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> fEnableSMIMECapabilities,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
