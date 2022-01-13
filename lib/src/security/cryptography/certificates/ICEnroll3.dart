// ICEnroll3.dart

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

import '../../../security/cryptography/certificates/ICEnroll2.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICEnroll3 = '{C28C2D95-B7DE-11D2-A421-00C04F79FE8E}';

/// {@category Interface}
/// {@category com}
class ICEnroll3 extends ICEnroll2 {
  // vtable begins at 69, is 14 entries long.
  ICEnroll3(Pointer<COMObject> ptr) : super(ptr);

  int InstallPKCS7(
    Pointer<Utf16> PKCS7,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(69)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> PKCS7,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> PKCS7,
          )>()(
        ptr.ref.lpVtbl,
        PKCS7,
      );

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(70)
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
          .elementAt(71)
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
          .elementAt(72)
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
          .elementAt(73)
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

  int GetAlgName(
    int algID,
    Pointer<Pointer<Utf16>> pbstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(74)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 algID,
            Pointer<Pointer<Utf16>> pbstr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int algID,
            Pointer<Pointer<Utf16>> pbstr,
          )>()(
        ptr.ref.lpVtbl,
        algID,
        pbstr,
      );

  set ReuseHardwareKeyIfUnableToGenNew(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(75)
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
          .elementAt(76)
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
        .elementAt(77)
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
          .elementAt(78)
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

  set LimitExchangeKeyToEncipherment(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(79)
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
          .elementAt(80)
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
        .elementAt(81)
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
          .elementAt(82)
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
