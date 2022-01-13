// ISpatialInteractionManagerInterop.dart

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
const IID_ISpatialInteractionManagerInterop =
    '{5C4EE536-6A98-4B86-A170-587013D6FD4B}';

/// {@category Interface}
/// {@category com}
class ISpatialInteractionManagerInterop extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  ISpatialInteractionManagerInterop(Pointer<COMObject> ptr) : super(ptr);

  int GetForWindow(
    int window,
    Pointer<GUID> riid,
    Pointer<Pointer> spatialInteractionManager,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr window,
            Pointer<GUID> riid,
            Pointer<Pointer> spatialInteractionManager,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int window,
            Pointer<GUID> riid,
            Pointer<Pointer> spatialInteractionManager,
          )>()(
        ptr.ref.lpVtbl,
        window,
        riid,
        spatialInteractionManager,
      );
}
