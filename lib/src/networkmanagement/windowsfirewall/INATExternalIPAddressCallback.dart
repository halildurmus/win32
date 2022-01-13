// INATExternalIPAddressCallback.dart

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
const IID_INATExternalIPAddressCallback =
    '{9C416740-A34E-446F-BA06-ABD04C3149AE}';

/// {@category Interface}
/// {@category com}
class INATExternalIPAddressCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  INATExternalIPAddressCallback(Pointer<COMObject> ptr) : super(ptr);

  int NewExternalIPAddress(
    Pointer<Utf16> bstrNewExternalIPAddress,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrNewExternalIPAddress,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrNewExternalIPAddress,
          )>()(
        ptr.ref.lpVtbl,
        bstrNewExternalIPAddress,
      );
}
