// IShareWindowCommandEventArgsInterop.dart

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
const IID_IShareWindowCommandEventArgsInterop =
    '{6571A721-643D-43D4-ACA4-6B6F5F30F1AD}';

/// {@category Interface}
/// {@category com}
class IShareWindowCommandEventArgsInterop extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IShareWindowCommandEventArgsInterop(Pointer<COMObject> ptr) : super(ptr);

  int GetWindow(
    Pointer<IntPtr> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );
}
