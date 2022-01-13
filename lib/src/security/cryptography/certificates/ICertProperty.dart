// ICertProperty.dart

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
const IID_ICertProperty = '{728AB32E-217D-11DA-B2A4-000E7BBB2B09}';

/// {@category Interface}
/// {@category com}
class ICertProperty extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  ICertProperty(Pointer<COMObject> ptr) : super(ptr);

  int InitializeFromCertificate(
    int MachineContext,
    int Encoding,
    Pointer<Utf16> strCertificate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 MachineContext,
            Int32 Encoding,
            Pointer<Utf16> strCertificate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MachineContext,
            int Encoding,
            Pointer<Utf16> strCertificate,
          )>()(
        ptr.ref.lpVtbl,
        MachineContext,
        Encoding,
        strCertificate,
      );

  int InitializeDecode(
    int Encoding,
    Pointer<Utf16> strEncodedData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Encoding,
            Pointer<Utf16> strEncodedData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Encoding,
            Pointer<Utf16> strEncodedData,
          )>()(
        ptr.ref.lpVtbl,
        Encoding,
        strEncodedData,
      );

  int get PropertyId {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
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

  set PropertyId(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 Value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int Value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get_RawData(
    int Encoding,
    Pointer<Pointer<Utf16>> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Encoding,
            Pointer<Pointer<Utf16>> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Encoding,
            Pointer<Pointer<Utf16>> pValue,
          )>()(
        ptr.ref.lpVtbl,
        Encoding,
        pValue,
      );

  int RemoveFromCertificate(
    int MachineContext,
    int Encoding,
    Pointer<Utf16> strCertificate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 MachineContext,
            Int32 Encoding,
            Pointer<Utf16> strCertificate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MachineContext,
            int Encoding,
            Pointer<Utf16> strCertificate,
          )>()(
        ptr.ref.lpVtbl,
        MachineContext,
        Encoding,
        strCertificate,
      );

  int SetValueOnCertificate(
    int MachineContext,
    int Encoding,
    Pointer<Utf16> strCertificate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 MachineContext,
            Int32 Encoding,
            Pointer<Utf16> strCertificate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MachineContext,
            int Encoding,
            Pointer<Utf16> strCertificate,
          )>()(
        ptr.ref.lpVtbl,
        MachineContext,
        Encoding,
        strCertificate,
      );
}
