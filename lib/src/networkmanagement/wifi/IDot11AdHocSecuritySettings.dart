// IDot11AdHocSecuritySettings.dart

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
import '../../networkmanagement/wifi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDot11AdHocSecuritySettings =
    '{8F10CC2E-CF0D-42A0-ACBE-E2DE7007384D}';

/// {@category Interface}
/// {@category com}
class IDot11AdHocSecuritySettings extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDot11AdHocSecuritySettings(Pointer<COMObject> ptr) : super(ptr);

  int GetDot11AuthAlgorithm(
    Pointer<Int32> pAuth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pAuth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pAuth,
          )>()(
        ptr.ref.lpVtbl,
        pAuth,
      );

  int GetDot11CipherAlgorithm(
    Pointer<Int32> pCipher,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pCipher,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pCipher,
          )>()(
        ptr.ref.lpVtbl,
        pCipher,
      );
}
