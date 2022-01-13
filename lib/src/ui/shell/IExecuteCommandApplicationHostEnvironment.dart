// IExecuteCommandApplicationHostEnvironment.dart

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
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IExecuteCommandApplicationHostEnvironment =
    '{18B21AA9-E184-4FF0-9F5E-F882D03771B3}';

/// {@category Interface}
/// {@category com}
class IExecuteCommandApplicationHostEnvironment extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IExecuteCommandApplicationHostEnvironment(Pointer<COMObject> ptr)
      : super(ptr);

  int GetValue(
    Pointer<Int32> pahe,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pahe,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pahe,
          )>()(
        ptr.ref.lpVtbl,
        pahe,
      );
}
