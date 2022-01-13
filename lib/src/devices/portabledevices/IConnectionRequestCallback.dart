// IConnectionRequestCallback.dart

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
const IID_IConnectionRequestCallback = '{272C9AE0-7161-4AE0-91BD-9F448EE9C427}';

/// {@category Interface}
/// {@category com}
class IConnectionRequestCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IConnectionRequestCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnComplete(
    int hrStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrStatus,
          )>()(
        ptr.ref.lpVtbl,
        hrStatus,
      );
}
