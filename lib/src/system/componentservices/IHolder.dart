// IHolder.dart

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
const IID_IHolder = '{BF6A1850-2B45-11CF-BE10-00AA00A2FA25}';

/// {@category Interface}
/// {@category com}
class IHolder extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IHolder(Pointer<COMObject> ptr) : super(ptr);

  int AllocResource(
    int MIDL__IHolder0000,
    Pointer<IntPtr> MIDL__IHolder0001,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr MIDL__IHolder0000,
            Pointer<IntPtr> MIDL__IHolder0001,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MIDL__IHolder0000,
            Pointer<IntPtr> MIDL__IHolder0001,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IHolder0000,
        MIDL__IHolder0001,
      );

  int FreeResource(
    int MIDL__IHolder0002,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr MIDL__IHolder0002,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MIDL__IHolder0002,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IHolder0002,
      );

  int TrackResource(
    int MIDL__IHolder0003,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr MIDL__IHolder0003,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MIDL__IHolder0003,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IHolder0003,
      );

  int TrackResourceS(
    Pointer<Uint16> MIDL__IHolder0004,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> MIDL__IHolder0004,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> MIDL__IHolder0004,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IHolder0004,
      );

  int UntrackResource(
    int MIDL__IHolder0005,
    int MIDL__IHolder0006,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr MIDL__IHolder0005,
            Int32 MIDL__IHolder0006,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MIDL__IHolder0005,
            int MIDL__IHolder0006,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IHolder0005,
        MIDL__IHolder0006,
      );

  int UntrackResourceS(
    Pointer<Uint16> MIDL__IHolder0007,
    int MIDL__IHolder0008,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> MIDL__IHolder0007,
            Int32 MIDL__IHolder0008,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> MIDL__IHolder0007,
            int MIDL__IHolder0008,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IHolder0007,
        MIDL__IHolder0008,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int RequestDestroyResource(
    int MIDL__IHolder0009,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr MIDL__IHolder0009,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MIDL__IHolder0009,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IHolder0009,
      );
}
