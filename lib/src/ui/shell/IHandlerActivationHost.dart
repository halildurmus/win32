// IHandlerActivationHost.dart

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
import '../../ui/shell/IShellItemArray.dart';
import '../../ui/shell/IHandlerInfo.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IHandlerActivationHost = '{35094A87-8BB1-4237-96C6-C417EEBDB078}';

/// {@category Interface}
/// {@category com}
class IHandlerActivationHost extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IHandlerActivationHost(Pointer<COMObject> ptr) : super(ptr);

  int BeforeCoCreateInstance(
    Pointer<GUID> clsidHandler,
    Pointer<COMObject> itemsBeingActivated,
    Pointer<COMObject> handlerInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsidHandler,
            Pointer<COMObject> itemsBeingActivated,
            Pointer<COMObject> handlerInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsidHandler,
            Pointer<COMObject> itemsBeingActivated,
            Pointer<COMObject> handlerInfo,
          )>()(
        ptr.ref.lpVtbl,
        clsidHandler,
        itemsBeingActivated,
        handlerInfo,
      );

  int BeforeCreateProcess(
    Pointer<Utf16> applicationPath,
    Pointer<Utf16> commandLine,
    Pointer<COMObject> handlerInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> applicationPath,
            Pointer<Utf16> commandLine,
            Pointer<COMObject> handlerInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> applicationPath,
            Pointer<Utf16> commandLine,
            Pointer<COMObject> handlerInfo,
          )>()(
        ptr.ref.lpVtbl,
        applicationPath,
        commandLine,
        handlerInfo,
      );
}
