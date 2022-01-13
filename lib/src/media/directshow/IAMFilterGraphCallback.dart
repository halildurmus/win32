// IAMFilterGraphCallback.dart

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
import '../../media/directshow/IPin.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAMFilterGraphCallback = '{56A868FD-0AD4-11CE-B0A3-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IAMFilterGraphCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAMFilterGraphCallback(Pointer<COMObject> ptr) : super(ptr);

  int UnableToRender(
    Pointer<COMObject> pPin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPin,
          )>()(
        ptr.ref.lpVtbl,
        pPin,
      );
}
