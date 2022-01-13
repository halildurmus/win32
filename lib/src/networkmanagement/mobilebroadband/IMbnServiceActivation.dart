// IMbnServiceActivation.dart

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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMbnServiceActivation = '{DCBBBAB6-2017-4BBB-AAEE-338E368AF6FA}';

/// {@category Interface}
/// {@category com}
class IMbnServiceActivation extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMbnServiceActivation(Pointer<COMObject> ptr) : super(ptr);

  int Activate(
    Pointer<SAFEARRAY> vendorSpecificData,
    Pointer<Uint32> requestID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SAFEARRAY> vendorSpecificData,
            Pointer<Uint32> requestID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SAFEARRAY> vendorSpecificData,
            Pointer<Uint32> requestID,
          )>()(
        ptr.ref.lpVtbl,
        vendorSpecificData,
        requestID,
      );
}
