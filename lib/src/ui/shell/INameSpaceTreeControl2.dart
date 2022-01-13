// INameSpaceTreeControl2.dart

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

import '../../ui/shell/INameSpaceTreeControl.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_INameSpaceTreeControl2 = '{7CC7AED8-290E-49BC-8945-C1401CC9306C}';

/// {@category Interface}
/// {@category com}
class INameSpaceTreeControl2 extends INameSpaceTreeControl {
  // vtable begins at 22, is 4 entries long.
  INameSpaceTreeControl2(Pointer<COMObject> ptr) : super(ptr);

  int SetControlStyle(
    int nstcsMask,
    int nstcsStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nstcsMask,
            Uint32 nstcsStyle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nstcsMask,
            int nstcsStyle,
          )>()(
        ptr.ref.lpVtbl,
        nstcsMask,
        nstcsStyle,
      );

  int GetControlStyle(
    int nstcsMask,
    Pointer<Uint32> pnstcsStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nstcsMask,
            Pointer<Uint32> pnstcsStyle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nstcsMask,
            Pointer<Uint32> pnstcsStyle,
          )>()(
        ptr.ref.lpVtbl,
        nstcsMask,
        pnstcsStyle,
      );

  int SetControlStyle2(
    int nstcsMask,
    int nstcsStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nstcsMask,
            Int32 nstcsStyle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nstcsMask,
            int nstcsStyle,
          )>()(
        ptr.ref.lpVtbl,
        nstcsMask,
        nstcsStyle,
      );

  int GetControlStyle2(
    int nstcsMask,
    Pointer<Int32> pnstcsStyle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nstcsMask,
            Pointer<Int32> pnstcsStyle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nstcsMask,
            Pointer<Int32> pnstcsStyle,
          )>()(
        ptr.ref.lpVtbl,
        nstcsMask,
        pnstcsStyle,
      );
}
