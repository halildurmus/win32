// IX509MachineEnrollmentFactory.dart

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
import '../../../security/cryptography/certificates/IX509EnrollmentHelper.dart';

/// @nodoc
const IID_IX509MachineEnrollmentFactory =
    '{728AB352-217D-11DA-B2A4-000E7BBB2B09}';

/// {@category Interface}
/// {@category com}
class IX509MachineEnrollmentFactory extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IX509MachineEnrollmentFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateObject(
    Pointer<Utf16> strProgID,
    Pointer<Pointer<COMObject>> ppIHelper,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strProgID,
            Pointer<Pointer<COMObject>> ppIHelper,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strProgID,
            Pointer<Pointer<COMObject>> ppIHelper,
          )>()(
        ptr.ref.lpVtbl,
        strProgID,
        ppIHelper,
      );
}
