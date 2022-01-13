// ID2D1RenderInfo.dart

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
import '../../graphics/direct2d/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1RenderInfo = '{519AE1BD-D19A-420D-B849-364F594776B7}';

/// {@category Interface}
/// {@category com}
class ID2D1RenderInfo extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ID2D1RenderInfo(Pointer<COMObject> ptr) : super(ptr);

  int SetInputDescription(
    int inputIndex,
    D2D1_INPUT_DESCRIPTION inputDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 inputIndex,
            D2D1_INPUT_DESCRIPTION inputDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int inputIndex,
            D2D1_INPUT_DESCRIPTION inputDescription,
          )>()(
        ptr.ref.lpVtbl,
        inputIndex,
        inputDescription,
      );

  int SetOutputBuffer(
    int bufferPrecision,
    int channelDepth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 bufferPrecision,
            Uint32 channelDepth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bufferPrecision,
            int channelDepth,
          )>()(
        ptr.ref.lpVtbl,
        bufferPrecision,
        channelDepth,
      );

  void SetCached(
    int isCached,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 isCached,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int isCached,
          )>()(
        ptr.ref.lpVtbl,
        isCached,
      );

  void SetInstructionCountHint(
    int instructionCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 instructionCount,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int instructionCount,
          )>()(
        ptr.ref.lpVtbl,
        instructionCount,
      );
}
