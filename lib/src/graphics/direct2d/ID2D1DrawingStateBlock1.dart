// ID2D1DrawingStateBlock1.dart

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

import '../../graphics/direct2d/ID2D1DrawingStateBlock.dart';
import '../../graphics/direct2d/structs.g.dart';

/// @nodoc
const IID_ID2D1DrawingStateBlock1 = '{689F1F85-C72E-4E33-8F19-85754EFD5ACE}';

/// {@category Interface}
/// {@category com}
class ID2D1DrawingStateBlock1 extends ID2D1DrawingStateBlock {
  // vtable begins at 8, is 2 entries long.
  ID2D1DrawingStateBlock1(Pointer<COMObject> ptr) : super(ptr);

  void GetDescription_1(
    Pointer<D2D1_DRAWING_STATE_DESCRIPTION1> stateDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_DRAWING_STATE_DESCRIPTION1> stateDescription,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_DRAWING_STATE_DESCRIPTION1> stateDescription,
          )>()(
        ptr.ref.lpVtbl,
        stateDescription,
      );

  void SetDescription_1(
    Pointer<D2D1_DRAWING_STATE_DESCRIPTION1> stateDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_DRAWING_STATE_DESCRIPTION1> stateDescription,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_DRAWING_STATE_DESCRIPTION1> stateDescription,
          )>()(
        ptr.ref.lpVtbl,
        stateDescription,
      );
}
