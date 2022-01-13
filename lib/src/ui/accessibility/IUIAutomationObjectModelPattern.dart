// IUIAutomationObjectModelPattern.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAutomationObjectModelPattern =
    '{71C284B3-C14D-4D14-981E-19751B0D756D}';

/// {@category Interface}
/// {@category com}
class IUIAutomationObjectModelPattern extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUIAutomationObjectModelPattern(Pointer<COMObject> ptr) : super(ptr);

  int GetUnderlyingObjectModel(
    Pointer<Pointer<COMObject>> retVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> retVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> retVal,
          )>()(
        ptr.ref.lpVtbl,
        retVal,
      );
}
