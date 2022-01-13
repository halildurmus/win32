// IWMLicenseRestore.dart

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
import '../../media/windowsmediaformat/IWMStatusCallback.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMLicenseRestore = '{C70B6334-A22E-4EFB-A245-15E65A004A13}';

/// {@category Interface}
/// {@category com}
class IWMLicenseRestore extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMLicenseRestore(Pointer<COMObject> ptr) : super(ptr);

  int RestoreLicenses(
    int dwFlags,
    Pointer<COMObject> pCallback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> pCallback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> pCallback,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pCallback,
      );

  int CancelLicenseRestore() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
