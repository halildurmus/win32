// IXpsOMMatrixTransform.dart

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

import '../../storage/xps/IXpsOMShareable.dart';
import '../../storage/xps/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../storage/xps/IXpsOMMatrixTransform.dart';

/// @nodoc
const IID_IXpsOMMatrixTransform = '{B77330FF-BB37-4501-A93E-F1B1E50BFC46}';

/// {@category Interface}
/// {@category com}
class IXpsOMMatrixTransform extends IXpsOMShareable {
  // vtable begins at 5, is 3 entries long.
  IXpsOMMatrixTransform(Pointer<COMObject> ptr) : super(ptr);

  int GetMatrix(
    Pointer<XPS_MATRIX> matrix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_MATRIX> matrix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_MATRIX> matrix,
          )>()(
        ptr.ref.lpVtbl,
        matrix,
      );

  int SetMatrix(
    Pointer<XPS_MATRIX> matrix,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<XPS_MATRIX> matrix,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<XPS_MATRIX> matrix,
          )>()(
        ptr.ref.lpVtbl,
        matrix,
      );

  int Clone(
    Pointer<Pointer<COMObject>> matrixTransform,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> matrixTransform,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> matrixTransform,
          )>()(
        ptr.ref.lpVtbl,
        matrixTransform,
      );
}
