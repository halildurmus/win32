// ITfFnGetPreferredTouchKeyboardLayout.dart

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

import '../../ui/textservices/ITfFunction.dart';
import '../../ui/textservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfFnGetPreferredTouchKeyboardLayout =
    '{5F309A41-590A-4ACC-A97F-D8EFFF13FDFC}';

/// {@category Interface}
/// {@category com}
class ITfFnGetPreferredTouchKeyboardLayout extends ITfFunction {
  // vtable begins at 4, is 1 entries long.
  ITfFnGetPreferredTouchKeyboardLayout(Pointer<COMObject> ptr) : super(ptr);

  int GetLayout(
    Pointer<Int32> pTKBLayoutType,
    Pointer<Uint16> pwPreferredLayoutId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pTKBLayoutType,
            Pointer<Uint16> pwPreferredLayoutId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pTKBLayoutType,
            Pointer<Uint16> pwPreferredLayoutId,
          )>()(
        ptr.ref.lpVtbl,
        pTKBLayoutType,
        pwPreferredLayoutId,
      );
}
