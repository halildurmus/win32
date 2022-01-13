// IX509CertificateTemplateWritable.dart

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
import '../../../security/cryptography/certificates/IX509CertificateTemplate.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../specialTypes.dart';

/// @nodoc
const IID_IX509CertificateTemplateWritable =
    '{F49466A7-395A-4E9E-B6E7-32B331600DC0}';

/// {@category Interface}
/// {@category com}
class IX509CertificateTemplateWritable extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  IX509CertificateTemplateWritable(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int Commit(
    int commitFlags,
    Pointer<Utf16> strServerContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 commitFlags,
            Pointer<Utf16> strServerContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int commitFlags,
            Pointer<Utf16> strServerContext,
          )>()(
        ptr.ref.lpVtbl,
        commitFlags,
        strServerContext,
      );

  int get_Property(
    int property,
    Pointer<VARIANT> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 property,
            Pointer<VARIANT> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int property,
            Pointer<VARIANT> pValue,
          )>()(
        ptr.ref.lpVtbl,
        property,
        pValue,
      );

  int put_Property(
    int property,
    VARIANT value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 property,
            VARIANT value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int property,
            VARIANT value,
          )>()(
        ptr.ref.lpVtbl,
        property,
        value,
      );

  Pointer<COMObject> get Template {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(11)
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
