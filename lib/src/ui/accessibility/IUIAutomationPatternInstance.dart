// IUIAutomationPatternInstance.dart

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
import '../../ui/accessibility/structs.g.dart';

/// @nodoc
const IID_IUIAutomationPatternInstance =
    '{C03A7FE4-9431-409F-BED8-AE7C2299BC8D}';

/// {@category Interface}
/// {@category com}
class IUIAutomationPatternInstance extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUIAutomationPatternInstance(Pointer<COMObject> ptr) : super(ptr);

  int GetProperty(
    int index,
    int cached,
    int type,
    Pointer pPtr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Int32 cached,
            Int32 type,
            Pointer pPtr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            int cached,
            int type,
            Pointer pPtr,
          )>()(
        ptr.ref.lpVtbl,
        index,
        cached,
        type,
        pPtr,
      );

  int CallMethod(
    int index,
    Pointer<UIAutomationParameter> pParams,
    int cParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<UIAutomationParameter> pParams,
            Uint32 cParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<UIAutomationParameter> pParams,
            int cParams,
          )>()(
        ptr.ref.lpVtbl,
        index,
        pParams,
        cParams,
      );
}
