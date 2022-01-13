// IMILBitmapEffectPrimitiveImpl.dart

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
const IID_IMILBitmapEffectPrimitiveImpl =
    '{CE41E00B-EFA6-44E7-B007-DD042E3AE126}';

/// {@category Interface}
/// {@category com}
class IMILBitmapEffectPrimitiveImpl extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMILBitmapEffectPrimitiveImpl(Pointer<COMObject> ptr) : super(ptr);

  int IsDirty(
    int uiOutputIndex,
    Pointer<Int16> pfDirty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiOutputIndex,
            Pointer<Int16> pfDirty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiOutputIndex,
            Pointer<Int16> pfDirty,
          )>()(
        ptr.ref.lpVtbl,
        uiOutputIndex,
        pfDirty,
      );

  int IsVolatile(
    int uiOutputIndex,
    Pointer<Int16> pfVolatile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiOutputIndex,
            Pointer<Int16> pfVolatile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiOutputIndex,
            Pointer<Int16> pfVolatile,
          )>()(
        ptr.ref.lpVtbl,
        uiOutputIndex,
        pfVolatile,
      );
}
