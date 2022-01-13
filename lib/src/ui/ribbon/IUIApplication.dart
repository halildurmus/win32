// IUIApplication.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../ui/ribbon/IUICommandHandler.dart';

/// @nodoc
const IID_IUIApplication = '{D428903C-729A-491D-910D-682A08FF2522}';

/// {@category Interface}
/// {@category com}
class IUIApplication extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IUIApplication(Pointer<COMObject> ptr) : super(ptr);

  int OnViewChanged(
    int viewId,
    int typeID,
    Pointer<COMObject> view,
    int verb,
    int uReasonCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 viewId,
            Int32 typeID,
            Pointer<COMObject> view,
            Int32 verb,
            Int32 uReasonCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int viewId,
            int typeID,
            Pointer<COMObject> view,
            int verb,
            int uReasonCode,
          )>()(
        ptr.ref.lpVtbl,
        viewId,
        typeID,
        view,
        verb,
        uReasonCode,
      );

  int OnCreateUICommand(
    int commandId,
    int typeID,
    Pointer<Pointer<COMObject>> commandHandler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 commandId,
            Int32 typeID,
            Pointer<Pointer<COMObject>> commandHandler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int commandId,
            int typeID,
            Pointer<Pointer<COMObject>> commandHandler,
          )>()(
        ptr.ref.lpVtbl,
        commandId,
        typeID,
        commandHandler,
      );

  int OnDestroyUICommand(
    int commandId,
    int typeID,
    Pointer<COMObject> commandHandler,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 commandId,
            Int32 typeID,
            Pointer<COMObject> commandHandler,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int commandId,
            int typeID,
            Pointer<COMObject> commandHandler,
          )>()(
        ptr.ref.lpVtbl,
        commandId,
        typeID,
        commandHandler,
      );
}
