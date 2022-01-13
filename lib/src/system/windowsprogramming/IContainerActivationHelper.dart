// IContainerActivationHelper.dart

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
const IID_IContainerActivationHelper = '{B524F93F-80D5-4EC7-AE9E-D66E93ADE1FA}';

/// {@category Interface}
/// {@category com}
class IContainerActivationHelper extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IContainerActivationHelper(Pointer<COMObject> ptr) : super(ptr);

  int CanActivateClientVM(
    Pointer<Int16> isAllowed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> isAllowed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> isAllowed,
          )>()(
        ptr.ref.lpVtbl,
        isAllowed,
      );
}
