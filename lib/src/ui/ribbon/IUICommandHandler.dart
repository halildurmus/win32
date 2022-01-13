// IUICommandHandler.dart

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
import '../../ui/ribbon/structs.g.dart';
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../specialTypes.dart';
import '../../ui/ribbon/IUISimplePropertySet.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUICommandHandler = '{75AE0A2D-DC03-4C9F-8883-069660D0BEB6}';

/// {@category Interface}
/// {@category com}
class IUICommandHandler extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUICommandHandler(Pointer<COMObject> ptr) : super(ptr);

  int Execute(
    int commandId,
    int verb,
    Pointer<PROPERTYKEY> key,
    Pointer<PROPVARIANT> currentValue,
    Pointer<COMObject> commandExecutionProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 commandId,
            Int32 verb,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> currentValue,
            Pointer<COMObject> commandExecutionProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int commandId,
            int verb,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> currentValue,
            Pointer<COMObject> commandExecutionProperties,
          )>()(
        ptr.ref.lpVtbl,
        commandId,
        verb,
        key,
        currentValue,
        commandExecutionProperties,
      );

  int UpdateProperty(
    int commandId,
    Pointer<PROPERTYKEY> key,
    Pointer<PROPVARIANT> currentValue,
    Pointer<PROPVARIANT> newValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 commandId,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> currentValue,
            Pointer<PROPVARIANT> newValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int commandId,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> currentValue,
            Pointer<PROPVARIANT> newValue,
          )>()(
        ptr.ref.lpVtbl,
        commandId,
        key,
        currentValue,
        newValue,
      );
}
