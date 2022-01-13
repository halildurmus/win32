// IPlayToManagerInterop.dart

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
const IID_IPlayToManagerInterop = '{24394699-1F2C-4EB3-8CD7-0EC1DA42A540}';

/// {@category Interface}
/// {@category com}
class IPlayToManagerInterop extends IInspectable {
  // vtable begins at 6, is 2 entries long.
  IPlayToManagerInterop(Pointer<COMObject> ptr) : super(ptr);

  int GetForWindow(
    int appWindow,
    Pointer<GUID> riid,
    Pointer<Pointer> playToManager,
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
            Pointer<Pointer> playToManager,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
            Pointer<GUID> riid,
            Pointer<Pointer> playToManager,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        riid,
        playToManager,
      );

  int ShowPlayToUIForWindow(
    int appWindow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr appWindow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
      );
}
