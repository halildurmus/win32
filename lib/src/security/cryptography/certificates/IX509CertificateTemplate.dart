// IX509CertificateTemplate.dart

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
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IX509CertificateTemplate = '{54244A13-555A-4E22-896D-1B0E52F76406}';

/// {@category Interface}
/// {@category com}
class IX509CertificateTemplate extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IX509CertificateTemplate(Pointer<COMObject> ptr) : super(ptr);

  int get_Property(
    int property,
    Pointer<VARIANT> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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
}
