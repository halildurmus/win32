// ITfUIElementSink.dart

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
const IID_ITfUIElementSink = '{EA1EA136-19DF-11D7-A6D2-00065B84435C}';

/// {@category Interface}
/// {@category com}
class ITfUIElementSink extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ITfUIElementSink(Pointer<COMObject> ptr) : super(ptr);

  int BeginUIElement(
    int dwUIElementId,
    Pointer<Int32> pbShow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwUIElementId,
            Pointer<Int32> pbShow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwUIElementId,
            Pointer<Int32> pbShow,
          )>()(
        ptr.ref.lpVtbl,
        dwUIElementId,
        pbShow,
      );

  int UpdateUIElement(
    int dwUIElementId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwUIElementId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwUIElementId,
          )>()(
        ptr.ref.lpVtbl,
        dwUIElementId,
      );

  int EndUIElement(
    int dwUIElementId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwUIElementId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwUIElementId,
          )>()(
        ptr.ref.lpVtbl,
        dwUIElementId,
      );
}
