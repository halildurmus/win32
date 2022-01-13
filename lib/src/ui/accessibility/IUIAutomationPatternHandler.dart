// IUIAutomationPatternHandler.dart

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
import '../../ui/accessibility/IUIAutomationPatternInstance.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../ui/accessibility/structs.g.dart';

/// @nodoc
const IID_IUIAutomationPatternHandler =
    '{D97022F3-A947-465E-8B2A-AC4315FA54E8}';

/// {@category Interface}
/// {@category com}
class IUIAutomationPatternHandler extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUIAutomationPatternHandler(Pointer<COMObject> ptr) : super(ptr);

  int CreateClientWrapper(
    Pointer<COMObject> pPatternInstance,
    Pointer<Pointer<COMObject>> pClientWrapper,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPatternInstance,
            Pointer<Pointer<COMObject>> pClientWrapper,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPatternInstance,
            Pointer<Pointer<COMObject>> pClientWrapper,
          )>()(
        ptr.ref.lpVtbl,
        pPatternInstance,
        pClientWrapper,
      );

  int Dispatch(
    Pointer<COMObject> pTarget,
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
            Pointer<COMObject> pTarget,
            Uint32 index,
            Pointer<UIAutomationParameter> pParams,
            Uint32 cParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTarget,
            int index,
            Pointer<UIAutomationParameter> pParams,
            int cParams,
          )>()(
        ptr.ref.lpVtbl,
        pTarget,
        index,
        pParams,
        cParams,
      );
}
