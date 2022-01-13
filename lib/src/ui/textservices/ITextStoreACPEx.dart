// ITextStoreACPEx.dart

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

/// @nodoc
const IID_ITextStoreACPEx = '{A2DE3BC2-3D8E-11D3-81A9-F753FBE61A00}';

/// {@category Interface}
/// {@category com}
class ITextStoreACPEx extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITextStoreACPEx(Pointer<COMObject> ptr) : super(ptr);

  int ScrollToRect(
    int acpStart,
    int acpEnd,
    RECT rc,
    int dwPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 acpStart,
            Int32 acpEnd,
            RECT rc,
            Uint32 dwPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int acpStart,
            int acpEnd,
            RECT rc,
            int dwPosition,
          )>()(
        ptr.ref.lpVtbl,
        acpStart,
        acpEnd,
        rc,
        dwPosition,
      );
}
