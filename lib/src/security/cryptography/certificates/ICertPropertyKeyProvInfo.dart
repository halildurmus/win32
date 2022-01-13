// ICertPropertyKeyProvInfo.dart

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
import '../../../security/cryptography/certificates/IX509PrivateKey.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICertPropertyKeyProvInfo = '{728AB336-217D-11DA-B2A4-000E7BBB2B09}';

/// {@category Interface}
/// {@category com}
class ICertPropertyKeyProvInfo extends ICertProperty {
  // vtable begins at 14, is 2 entries long.
  ICertPropertyKeyProvInfo(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pValue,
          )>()(
        ptr.ref.lpVtbl,
        pValue,
      );

  Pointer<COMObject> get PrivateKey {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppValue,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
