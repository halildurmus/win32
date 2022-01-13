// IUIAutomationRegistrar.dart

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
import '../../ui/accessibility/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUIAutomationRegistrar = '{8609C4EC-4A1A-4D88-A357-5A66E060E1CF}';

/// {@category Interface}
/// {@category com}
class IUIAutomationRegistrar extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IUIAutomationRegistrar(Pointer<COMObject> ptr) : super(ptr);

  int RegisterProperty(
    Pointer<UIAutomationPropertyInfo> property,
    Pointer<Int32> propertyId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<UIAutomationPropertyInfo> property,
            Pointer<Int32> propertyId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<UIAutomationPropertyInfo> property,
            Pointer<Int32> propertyId,
          )>()(
        ptr.ref.lpVtbl,
        property,
        propertyId,
      );

  int RegisterEvent(
    Pointer<UIAutomationEventInfo> event,
    Pointer<Int32> eventId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<UIAutomationEventInfo> event,
            Pointer<Int32> eventId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<UIAutomationEventInfo> event,
            Pointer<Int32> eventId,
          )>()(
        ptr.ref.lpVtbl,
        event,
        eventId,
      );

  int RegisterPattern(
    Pointer<UIAutomationPatternInfo> pattern,
    Pointer<Int32> pPatternId,
    Pointer<Int32> pPatternAvailablePropertyId,
    int propertyIdCount,
    Pointer<Int32> pPropertyIds,
    int eventIdCount,
    Pointer<Int32> pEventIds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<UIAutomationPatternInfo> pattern,
            Pointer<Int32> pPatternId,
            Pointer<Int32> pPatternAvailablePropertyId,
            Uint32 propertyIdCount,
            Pointer<Int32> pPropertyIds,
            Uint32 eventIdCount,
            Pointer<Int32> pEventIds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<UIAutomationPatternInfo> pattern,
            Pointer<Int32> pPatternId,
            Pointer<Int32> pPatternAvailablePropertyId,
            int propertyIdCount,
            Pointer<Int32> pPropertyIds,
            int eventIdCount,
            Pointer<Int32> pEventIds,
          )>()(
        ptr.ref.lpVtbl,
        pattern,
        pPatternId,
        pPatternAvailablePropertyId,
        propertyIdCount,
        pPropertyIds,
        eventIdCount,
        pEventIds,
      );
}
