// IMallocSpy.dart

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
const IID_IMallocSpy = '{0000001D-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IMallocSpy extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IMallocSpy(Pointer<COMObject> ptr) : super(ptr);

  int PreAlloc(
    int cbRequest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
            Pointer,
            IntPtr cbRequest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbRequest,
          )>()(
        ptr.ref.lpVtbl,
        cbRequest,
      );

  Pointer PostAlloc(
    Pointer pActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer Function(
            Pointer,
            Pointer pActual,
          )>>>()
          .value
          .asFunction<
              Pointer Function(
            Pointer,
            Pointer pActual,
          )>()(
        ptr.ref.lpVtbl,
        pActual,
      );

  Pointer PreFree(
    Pointer pRequest,
    int fSpyed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer Function(
            Pointer,
            Pointer pRequest,
            Int32 fSpyed,
          )>>>()
          .value
          .asFunction<
              Pointer Function(
            Pointer,
            Pointer pRequest,
            int fSpyed,
          )>()(
        ptr.ref.lpVtbl,
        pRequest,
        fSpyed,
      );

  void PostFree(
    int fSpyed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 fSpyed,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int fSpyed,
          )>()(
        ptr.ref.lpVtbl,
        fSpyed,
      );

  int PreRealloc(
    Pointer pRequest,
    int cbRequest,
    Pointer<Pointer> ppNewRequest,
    int fSpyed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
            Pointer,
            Pointer pRequest,
            IntPtr cbRequest,
            Pointer<Pointer> ppNewRequest,
            Int32 fSpyed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pRequest,
            int cbRequest,
            Pointer<Pointer> ppNewRequest,
            int fSpyed,
          )>()(
        ptr.ref.lpVtbl,
        pRequest,
        cbRequest,
        ppNewRequest,
        fSpyed,
      );

  Pointer PostRealloc(
    Pointer pActual,
    int fSpyed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer Function(
            Pointer,
            Pointer pActual,
            Int32 fSpyed,
          )>>>()
          .value
          .asFunction<
              Pointer Function(
            Pointer,
            Pointer pActual,
            int fSpyed,
          )>()(
        ptr.ref.lpVtbl,
        pActual,
        fSpyed,
      );

  Pointer PreGetSize(
    Pointer pRequest,
    int fSpyed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer Function(
            Pointer,
            Pointer pRequest,
            Int32 fSpyed,
          )>>>()
          .value
          .asFunction<
              Pointer Function(
            Pointer,
            Pointer pRequest,
            int fSpyed,
          )>()(
        ptr.ref.lpVtbl,
        pRequest,
        fSpyed,
      );

  int PostGetSize(
    int cbActual,
    int fSpyed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
            Pointer,
            IntPtr cbActual,
            Int32 fSpyed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbActual,
            int fSpyed,
          )>()(
        ptr.ref.lpVtbl,
        cbActual,
        fSpyed,
      );

  Pointer PreDidAlloc(
    Pointer pRequest,
    int fSpyed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer Function(
            Pointer,
            Pointer pRequest,
            Int32 fSpyed,
          )>>>()
          .value
          .asFunction<
              Pointer Function(
            Pointer,
            Pointer pRequest,
            int fSpyed,
          )>()(
        ptr.ref.lpVtbl,
        pRequest,
        fSpyed,
      );

  int PostDidAlloc(
    Pointer pRequest,
    int fSpyed,
    int fActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pRequest,
            Int32 fSpyed,
            Int32 fActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pRequest,
            int fSpyed,
            int fActual,
          )>()(
        ptr.ref.lpVtbl,
        pRequest,
        fSpyed,
        fActual,
      );

  void PreHeapMinimize() => ptr.ref.lpVtbl.value
          .elementAt(13)
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

  void PostHeapMinimize() => ptr.ref.lpVtbl.value
          .elementAt(14)
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
