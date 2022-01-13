// IPresentationBuffer.dart

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
const IID_IPresentationBuffer = '{2E217D3A-5ABB-4138-9A13-A775593C89CA}';

/// {@category Interface}
/// {@category com}
class IPresentationBuffer extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IPresentationBuffer(Pointer<COMObject> ptr) : super(ptr);

  int GetAvailableEvent(
    Pointer<IntPtr> availableEventHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> availableEventHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> availableEventHandle,
          )>()(
        ptr.ref.lpVtbl,
        availableEventHandle,
      );

  int IsAvailable(
    Pointer<Uint8> isAvailable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> isAvailable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> isAvailable,
          )>()(
        ptr.ref.lpVtbl,
        isAvailable,
      );
}
