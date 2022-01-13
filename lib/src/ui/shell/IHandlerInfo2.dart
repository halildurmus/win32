// IHandlerInfo2.dart

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

import '../../ui/shell/IHandlerInfo.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IHandlerInfo2 = '{31CCA04C-04D3-4EA9-90DE-97B15E87A532}';

/// {@category Interface}
/// {@category com}
class IHandlerInfo2 extends IHandlerInfo {
  // vtable begins at 6, is 1 entries long.
  IHandlerInfo2(Pointer<COMObject> ptr) : super(ptr);

  int GetApplicationId(
    Pointer<Pointer<Utf16>> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );
}
