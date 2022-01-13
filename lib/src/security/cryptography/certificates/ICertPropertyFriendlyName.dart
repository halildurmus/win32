// ICertPropertyFriendlyName.dart

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

import '../../../security/cryptography/certificates/ICertProperty.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICertPropertyFriendlyName = '{728AB330-217D-11DA-B2A4-000E7BBB2B09}';

/// {@category Interface}
/// {@category com}
class ICertPropertyFriendlyName extends ICertProperty {
  // vtable begins at 14, is 2 entries long.
  ICertPropertyFriendlyName(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> strFriendlyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strFriendlyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strFriendlyName,
          )>()(
        ptr.ref.lpVtbl,
        strFriendlyName,
      );

  Pointer<Utf16> get FriendlyName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
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
}
