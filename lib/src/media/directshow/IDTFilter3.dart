// IDTFilter3.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../media/directshow/IDTFilter2.dart';
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDTFilter3 = '{513998CC-E929-4CDF-9FBD-BAD1E0314866}';

/// {@category Interface}
/// {@category com}
class IDTFilter3 extends IDTFilter2 {
  // vtable begins at 14, is 3 entries long.
  IDTFilter3(Pointer<COMObject> ptr) : super(ptr);

  int GetProtectionType(
    Pointer<Int32> pProtectionType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pProtectionType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pProtectionType,
          )>()(
        ptr.ref.lpVtbl,
        pProtectionType,
      );

  int LicenseHasExpirationDate(
    Pointer<Int32> pfLicenseHasExpirationDate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfLicenseHasExpirationDate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfLicenseHasExpirationDate,
          )>()(
        ptr.ref.lpVtbl,
        pfLicenseHasExpirationDate,
      );

  int SetRights(
    Pointer<Utf16> bstrRights,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRights,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRights,
          )>()(
        ptr.ref.lpVtbl,
        bstrRights,
      );
}
