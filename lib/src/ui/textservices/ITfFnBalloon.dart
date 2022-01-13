// ITfFnBalloon.dart

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
import '../../ui/textservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfFnBalloon = '{3BAB89E4-5FBE-45F4-A5BC-DCA36AD225A8}';

/// {@category Interface}
/// {@category com}
class ITfFnBalloon extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfFnBalloon(Pointer<COMObject> ptr) : super(ptr);

  int UpdateBalloon(
    int style,
    Pointer<Utf16> pch,
    int cch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 style,
            Pointer<Utf16> pch,
            Uint32 cch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int style,
            Pointer<Utf16> pch,
            int cch,
          )>()(
        ptr.ref.lpVtbl,
        style,
        pch,
        cch,
      );
}
