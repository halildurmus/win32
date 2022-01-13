// IDirectManipulationDeferContactService.dart

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
const IID_IDirectManipulationDeferContactService =
    '{652D5C71-FE60-4A98-BE70-E5F21291E7F1}';

/// {@category Interface}
/// {@category com}
class IDirectManipulationDeferContactService extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDirectManipulationDeferContactService(Pointer<COMObject> ptr) : super(ptr);

  int DeferContact(
    int pointerId,
    int timeout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 pointerId,
            Uint32 timeout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pointerId,
            int timeout,
          )>()(
        ptr.ref.lpVtbl,
        pointerId,
        timeout,
      );

  int CancelContact(
    int pointerId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 pointerId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pointerId,
          )>()(
        ptr.ref.lpVtbl,
        pointerId,
      );

  int CancelDeferral(
    int pointerId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 pointerId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int pointerId,
          )>()(
        ptr.ref.lpVtbl,
        pointerId,
      );
}
