// IActiveIME2.dart

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

import '../../../ui/input/ime/IActiveIME.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IActiveIME2 = '{E1C4BF0E-2D53-11D2-93E1-0060B067B86E}';

/// {@category Interface}
/// {@category com}
class IActiveIME2 extends IActiveIME {
  // vtable begins at 20, is 2 entries long.
  IActiveIME2(Pointer<COMObject> ptr) : super(ptr);

  int Sleep() => ptr.ref.lpVtbl.value
          .elementAt(20)
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

  int Unsleep(
    int fDead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fDead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fDead,
          )>()(
        ptr.ref.lpVtbl,
        fDead,
      );
}
