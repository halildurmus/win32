// IDeskBand2.dart

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

import '../../ui/shell/IDeskBand.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDeskBand2 = '{79D16DE4-ABEE-4021-8D9D-9169B261D657}';

/// {@category Interface}
/// {@category com}
class IDeskBand2 extends IDeskBand {
  // vtable begins at 9, is 3 entries long.
  IDeskBand2(Pointer<COMObject> ptr) : super(ptr);

  int CanRenderComposited(
    Pointer<Int32> pfCanRenderComposited,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfCanRenderComposited,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfCanRenderComposited,
          )>()(
        ptr.ref.lpVtbl,
        pfCanRenderComposited,
      );

  int SetCompositionState(
    int fCompositionEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fCompositionEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fCompositionEnabled,
          )>()(
        ptr.ref.lpVtbl,
        fCompositionEnabled,
      );

  int GetCompositionState(
    Pointer<Int32> pfCompositionEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfCompositionEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfCompositionEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pfCompositionEnabled,
      );
}
