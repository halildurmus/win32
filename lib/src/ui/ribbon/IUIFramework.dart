// IUIFramework.dart

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
import '../../ui/ribbon/IUIApplication.dart';
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../specialTypes.dart';
import '../../ui/ribbon/structs.g.dart';

/// @nodoc
const IID_IUIFramework = '{F4F0385D-6872-43A8-AD09-4C339CB3F5C5}';

/// {@category Interface}
/// {@category com}
class IUIFramework extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IUIFramework(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int frameWnd,
    Pointer<COMObject> application,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr frameWnd,
            Pointer<COMObject> application,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int frameWnd,
            Pointer<COMObject> application,
          )>()(
        ptr.ref.lpVtbl,
        frameWnd,
        application,
      );

  int Destroy() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int LoadUI(
    int instance,
    Pointer<Utf16> resourceName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr instance,
            Pointer<Utf16> resourceName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int instance,
            Pointer<Utf16> resourceName,
          )>()(
        ptr.ref.lpVtbl,
        instance,
        resourceName,
      );

  int GetView(
    int viewId,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 viewId,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int viewId,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        viewId,
        riid,
        ppv,
      );

  int GetUICommandProperty(
    int commandId,
    Pointer<PROPERTYKEY> key,
    Pointer<PROPVARIANT> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 commandId,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int commandId,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> value,
          )>()(
        ptr.ref.lpVtbl,
        commandId,
        key,
        value,
      );

  int SetUICommandProperty(
    int commandId,
    Pointer<PROPERTYKEY> key,
    Pointer<PROPVARIANT> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 commandId,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int commandId,
            Pointer<PROPERTYKEY> key,
            Pointer<PROPVARIANT> value,
          )>()(
        ptr.ref.lpVtbl,
        commandId,
        key,
        value,
      );

  int InvalidateUICommand(
    int commandId,
    int flags,
    Pointer<PROPERTYKEY> key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 commandId,
            Int32 flags,
            Pointer<PROPERTYKEY> key,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int commandId,
            int flags,
            Pointer<PROPERTYKEY> key,
          )>()(
        ptr.ref.lpVtbl,
        commandId,
        flags,
        key,
      );

  int FlushPendingInvalidations() => ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int SetModes(
    int iModes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iModes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iModes,
          )>()(
        ptr.ref.lpVtbl,
        iModes,
      );
}
