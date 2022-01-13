// IObjectId.dart

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
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IObjectId = '{728AB300-217D-11DA-B2A4-000E7BBB2B09}';

/// {@category Interface}
/// {@category com}
class IObjectId extends IDispatch {
  // vtable begins at 7, is 8 entries long.
  IObjectId(Pointer<COMObject> ptr) : super(ptr);

  int InitializeFromName(
    int Name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Name,
          )>()(
        ptr.ref.lpVtbl,
        Name,
      );

  int InitializeFromValue(
    Pointer<Utf16> strValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strValue,
          )>()(
        ptr.ref.lpVtbl,
        strValue,
      );

  int InitializeFromAlgorithmName(
    int GroupId,
    int KeyFlags,
    int AlgFlags,
    Pointer<Utf16> strAlgorithmName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 GroupId,
            Int32 KeyFlags,
            Int32 AlgFlags,
            Pointer<Utf16> strAlgorithmName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int GroupId,
            int KeyFlags,
            int AlgFlags,
            Pointer<Utf16> strAlgorithmName,
          )>()(
        ptr.ref.lpVtbl,
        GroupId,
        KeyFlags,
        AlgFlags,
        strAlgorithmName,
      );

  int get Name {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
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
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get FriendlyName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
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
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set FriendlyName(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(12)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> Value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> Value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get Value {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
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
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetAlgorithmName(
    int GroupId,
    int KeyFlags,
    Pointer<Pointer<Utf16>> pstrAlgorithmName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 GroupId,
            Int32 KeyFlags,
            Pointer<Pointer<Utf16>> pstrAlgorithmName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int GroupId,
            int KeyFlags,
            Pointer<Pointer<Utf16>> pstrAlgorithmName,
          )>()(
        ptr.ref.lpVtbl,
        GroupId,
        KeyFlags,
        pstrAlgorithmName,
      );
}
