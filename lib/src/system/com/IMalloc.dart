// IMalloc.dart

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

/// @nodoc
const IID_IMalloc = '{00000002-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IMalloc extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMalloc(Pointer<COMObject> ptr) : super(ptr);

  Pointer Alloc(
    int cb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer Function(
            Pointer,
            IntPtr cb,
          )>>>()
          .value
          .asFunction<
              Pointer Function(
            Pointer,
            int cb,
          )>()(
        ptr.ref.lpVtbl,
        cb,
      );

  Pointer Realloc(
    Pointer pv,
    int cb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer Function(
            Pointer,
            Pointer pv,
            IntPtr cb,
          )>>>()
          .value
          .asFunction<
              Pointer Function(
            Pointer,
            Pointer pv,
            int cb,
          )>()(
        ptr.ref.lpVtbl,
        pv,
        cb,
      );

  void Free(
    Pointer pv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer pv,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer pv,
          )>()(
        ptr.ref.lpVtbl,
        pv,
      );

  int GetSize(
    Pointer pv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
            Pointer,
            Pointer pv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pv,
          )>()(
        ptr.ref.lpVtbl,
        pv,
      );

  int DidAlloc(
    Pointer pv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pv,
          )>()(
        ptr.ref.lpVtbl,
        pv,
      );

  void HeapMinimize() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
