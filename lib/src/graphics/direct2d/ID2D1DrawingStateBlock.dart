// ID2D1DrawingStateBlock.dart

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

import '../../graphics/direct2d/ID2D1Resource.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/directwrite/IDWriteRenderingParams.dart';

/// @nodoc
const IID_ID2D1DrawingStateBlock = '{28506E39-EBF6-46A1-BB47-FD85565AB957}';

/// {@category Interface}
/// {@category com}
class ID2D1DrawingStateBlock extends ID2D1Resource {
  // vtable begins at 4, is 4 entries long.
  ID2D1DrawingStateBlock(Pointer<COMObject> ptr) : super(ptr);

  void GetDescription(
    Pointer<D2D1_DRAWING_STATE_DESCRIPTION> stateDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_DRAWING_STATE_DESCRIPTION> stateDescription,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_DRAWING_STATE_DESCRIPTION> stateDescription,
          )>()(
        ptr.ref.lpVtbl,
        stateDescription,
      );

  void SetDescription(
    Pointer<D2D1_DRAWING_STATE_DESCRIPTION> stateDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<D2D1_DRAWING_STATE_DESCRIPTION> stateDescription,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<D2D1_DRAWING_STATE_DESCRIPTION> stateDescription,
          )>()(
        ptr.ref.lpVtbl,
        stateDescription,
      );

  void SetTextRenderingParams(
    Pointer<COMObject> textRenderingParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> textRenderingParams,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> textRenderingParams,
          )>()(
        ptr.ref.lpVtbl,
        textRenderingParams,
      );

  void GetTextRenderingParams(
    Pointer<Pointer<COMObject>> textRenderingParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> textRenderingParams,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> textRenderingParams,
          )>()(
        ptr.ref.lpVtbl,
        textRenderingParams,
      );
}
