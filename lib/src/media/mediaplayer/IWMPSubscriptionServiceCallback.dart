// IWMPSubscriptionServiceCallback.dart

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
const IID_IWMPSubscriptionServiceCallback =
    '{DD01D127-2DC2-4C3A-876E-63312079F9B0}';

/// {@category Interface}
/// {@category com}
class IWMPSubscriptionServiceCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWMPSubscriptionServiceCallback(Pointer<COMObject> ptr) : super(ptr);

  int onComplete(
    int hrResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrResult,
          )>()(
        ptr.ref.lpVtbl,
        hrResult,
      );
}
