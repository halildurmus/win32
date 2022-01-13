// IGraphicsCaptureItemInterop.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../../combase.dart';
import '../../../../constants.dart';
import '../../../../exceptions.dart';
import '../../../../guid.dart';
import '../../../../macros.dart';
import '../../../../ole32.dart';
import '../../../../utils.dart';

import '../../../../system/com/IUnknown.dart';
import '../../../../foundation/structs.g.dart';
import '../../../../graphics/gdi/structs.g.dart';

/// @nodoc
const IID_IGraphicsCaptureItemInterop =
    '{3628E81B-3CAC-4C60-B7F4-23CE0E0C3356}';

/// {@category Interface}
/// {@category com}
class IGraphicsCaptureItemInterop extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IGraphicsCaptureItemInterop(Pointer<COMObject> ptr) : super(ptr);

  int CreateForWindow(
    int window,
    Pointer<GUID> riid,
    Pointer<Pointer> result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr window,
            Pointer<GUID> riid,
            Pointer<Pointer> result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int window,
            Pointer<GUID> riid,
            Pointer<Pointer> result,
          )>()(
        ptr.ref.lpVtbl,
        window,
        riid,
        result,
      );

  int CreateForMonitor(
    int monitor,
    Pointer<GUID> riid,
    Pointer<Pointer> result,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr monitor,
            Pointer<GUID> riid,
            Pointer<Pointer> result,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int monitor,
            Pointer<GUID> riid,
            Pointer<Pointer> result,
          )>()(
        ptr.ref.lpVtbl,
        monitor,
        riid,
        result,
      );
}
