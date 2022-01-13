// IRadialControllerIndependentInputSourceInterop.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/winrt/IInspectable.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IRadialControllerIndependentInputSourceInterop =
    '{3D577EFF-4CEE-11E6-B535-001BDC06AB3B}';

/// {@category Interface}
/// {@category com}
class IRadialControllerIndependentInputSourceInterop extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IRadialControllerIndependentInputSourceInterop(Pointer<COMObject> ptr)
      : super(ptr);

  int CreateForWindow(
    int hwnd,
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
            IntPtr hwnd,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        riid,
        ppv,
      );
}
