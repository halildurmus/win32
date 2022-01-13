// IAccountsSettingsPaneInterop.dart

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

import '../../system/winrt/IInspectable.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAccountsSettingsPaneInterop =
    '{D3EE12AD-3865-4362-9746-B75A682DF0E6}';

/// {@category Interface}
/// {@category com}
class IAccountsSettingsPaneInterop extends IInspectable {
  // vtable begins at 6, is 3 entries long.
  IAccountsSettingsPaneInterop(Pointer<COMObject> ptr) : super(ptr);

  int GetForWindow(
    int appWindow,
    Pointer<GUID> riid,
    Pointer<Pointer> accountsSettingsPane,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr appWindow,
            Pointer<GUID> riid,
            Pointer<Pointer> accountsSettingsPane,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
            Pointer<GUID> riid,
            Pointer<Pointer> accountsSettingsPane,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        riid,
        accountsSettingsPane,
      );

  int ShowManageAccountsForWindowAsync(
    int appWindow,
    Pointer<GUID> riid,
    Pointer<Pointer> asyncAction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr appWindow,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncAction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncAction,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        riid,
        asyncAction,
      );

  int ShowAddAccountForWindowAsync(
    int appWindow,
    Pointer<GUID> riid,
    Pointer<Pointer> asyncAction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr appWindow,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncAction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
            Pointer<GUID> riid,
            Pointer<Pointer> asyncAction,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        riid,
        asyncAction,
      );
}
