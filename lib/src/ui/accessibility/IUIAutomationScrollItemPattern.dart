// IUIAutomationScrollItemPattern.dart

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
const IID_IUIAutomationScrollItemPattern =
    '{B488300F-D015-4F19-9C29-BB595E3645EF}';

/// {@category Interface}
/// {@category com}
class IUIAutomationScrollItemPattern extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationScrollItemPattern(Pointer<COMObject> ptr) : super(ptr);

  int ScrollIntoView() => ptr.ref.lpVtbl.value
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
}
