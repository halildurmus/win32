// IDTFilterLicenseRenewal.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDTFilterLicenseRenewal = '{8A78B317-E405-4A43-994A-620D8F5CE25E}';

/// {@category Interface}
/// {@category com}
class IDTFilterLicenseRenewal extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDTFilterLicenseRenewal(Pointer<COMObject> ptr) : super(ptr);

  int GetLicenseRenewalData(
    Pointer<Pointer<Utf16>> ppwszFileName,
    Pointer<Pointer<Utf16>> ppwszExpiredKid,
    Pointer<Pointer<Utf16>> ppwszTunerId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszFileName,
            Pointer<Pointer<Utf16>> ppwszExpiredKid,
            Pointer<Pointer<Utf16>> ppwszTunerId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszFileName,
            Pointer<Pointer<Utf16>> ppwszExpiredKid,
            Pointer<Pointer<Utf16>> ppwszTunerId,
          )>()(
        ptr.ref.lpVtbl,
        ppwszFileName,
        ppwszExpiredKid,
        ppwszTunerId,
      );
}
