// IWMPPluginUI.dart

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
import '../../media/mediaplayer/IWMPCore.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../ui/windowsandmessaging/structs.g.dart';

/// @nodoc
const IID_IWMPPluginUI = '{4C5E8F9F-AD3E-4BF9-9753-FCD30D6D38DD}';

/// {@category Interface}
/// {@category com}
class IWMPPluginUI extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IWMPPluginUI(Pointer<COMObject> ptr) : super(ptr);

  int SetCore(
    Pointer<COMObject> pCore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pCore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pCore,
          )>()(
        ptr.ref.lpVtbl,
        pCore,
      );

  int Create(
    int hwndParent,
    Pointer<IntPtr> phwndWindow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
            Pointer<IntPtr> phwndWindow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
            Pointer<IntPtr> phwndWindow,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
        phwndWindow,
      );

  int Destroy() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int DisplayPropertyPage(
    int hwndParent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwndParent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwndParent,
          )>()(
        ptr.ref.lpVtbl,
        hwndParent,
      );

  int GetProperty(
    Pointer<Utf16> pwszName,
    Pointer<VARIANT> pvarProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<VARIANT> pvarProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<VARIANT> pvarProperty,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
        pvarProperty,
      );

  int SetProperty(
    Pointer<Utf16> pwszName,
    Pointer<VARIANT> pvarProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<VARIANT> pvarProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<VARIANT> pvarProperty,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
        pvarProperty,
      );

  int TranslateAccelerator(
    Pointer<MSG> lpmsg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MSG> lpmsg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MSG> lpmsg,
          )>()(
        ptr.ref.lpVtbl,
        lpmsg,
      );
}
