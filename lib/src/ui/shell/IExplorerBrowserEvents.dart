// IExplorerBrowserEvents.dart

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
import '../../ui/shell/common/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/IShellView.dart';

/// @nodoc
const IID_IExplorerBrowserEvents = '{361BBDC7-E6EE-4E13-BE58-58E2240C810F}';

/// {@category Interface}
/// {@category com}
class IExplorerBrowserEvents extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IExplorerBrowserEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnNavigationPending(
    Pointer<ITEMIDLIST> pidlFolder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlFolder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlFolder,
          )>()(
        ptr.ref.lpVtbl,
        pidlFolder,
      );

  int OnViewCreated(
    Pointer<COMObject> psv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psv,
          )>()(
        ptr.ref.lpVtbl,
        psv,
      );

  int OnNavigationComplete(
    Pointer<ITEMIDLIST> pidlFolder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlFolder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlFolder,
          )>()(
        ptr.ref.lpVtbl,
        pidlFolder,
      );

  int OnNavigationFailed(
    Pointer<ITEMIDLIST> pidlFolder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlFolder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ITEMIDLIST> pidlFolder,
          )>()(
        ptr.ref.lpVtbl,
        pidlFolder,
      );
}
