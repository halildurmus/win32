// IDXGIDisplayControl.dart

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
const IID_IDXGIDisplayControl = '{EA9DBF1A-C88E-4486-854A-98AA0138F30C}';

/// {@category Interface}
/// {@category com}
class IDXGIDisplayControl extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDXGIDisplayControl(Pointer<COMObject> ptr) : super(ptr);

  int IsStereoEnabled() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  void SetStereoEnabled(
    int enabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 enabled,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int enabled,
          )>()(
        ptr.ref.lpVtbl,
        enabled,
      );
}
