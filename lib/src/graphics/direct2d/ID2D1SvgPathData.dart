// ID2D1SvgPathData.dart

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

import '../../graphics/direct2d/ID2D1SvgAttribute.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct2d/structs.g.dart';
import '../../graphics/direct2d/common/structs.g.dart';
import '../../graphics/direct2d/ID2D1PathGeometry1.dart';

/// @nodoc
const IID_ID2D1SvgPathData = '{C095E4F4-BB98-43D6-9745-4D1B84EC9888}';

/// {@category Interface}
/// {@category com}
class ID2D1SvgPathData extends ID2D1SvgAttribute {
  // vtable begins at 6, is 9 entries long.
  ID2D1SvgPathData(Pointer<COMObject> ptr) : super(ptr);

  int RemoveSegmentDataAtEnd(
    int dataCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dataCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dataCount,
          )>()(
        ptr.ref.lpVtbl,
        dataCount,
      );

  int UpdateSegmentData(
    Pointer<Float> data,
    int dataCount,
    int startIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> data,
            Uint32 dataCount,
            Uint32 startIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> data,
            int dataCount,
            int startIndex,
          )>()(
        ptr.ref.lpVtbl,
        data,
        dataCount,
        startIndex,
      );

  int GetSegmentData(
    Pointer<Float> data,
    int dataCount,
    int startIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> data,
            Uint32 dataCount,
            Uint32 startIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> data,
            int dataCount,
            int startIndex,
          )>()(
        ptr.ref.lpVtbl,
        data,
        dataCount,
        startIndex,
      );

  int GetSegmentDataCount() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int RemoveCommandsAtEnd(
    int commandsCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 commandsCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int commandsCount,
          )>()(
        ptr.ref.lpVtbl,
        commandsCount,
      );

  int UpdateCommands(
    Pointer<Uint32> commands,
    int commandsCount,
    int startIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> commands,
            Uint32 commandsCount,
            Uint32 startIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> commands,
            int commandsCount,
            int startIndex,
          )>()(
        ptr.ref.lpVtbl,
        commands,
        commandsCount,
        startIndex,
      );

  int GetCommands(
    Pointer<Uint32> commands,
    int commandsCount,
    int startIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> commands,
            Uint32 commandsCount,
            Uint32 startIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> commands,
            int commandsCount,
            int startIndex,
          )>()(
        ptr.ref.lpVtbl,
        commands,
        commandsCount,
        startIndex,
      );

  int GetCommandsCount() => ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int CreatePathGeometry(
    int fillMode,
    Pointer<Pointer<COMObject>> pathGeometry,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fillMode,
            Pointer<Pointer<COMObject>> pathGeometry,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fillMode,
            Pointer<Pointer<COMObject>> pathGeometry,
          )>()(
        ptr.ref.lpVtbl,
        fillMode,
        pathGeometry,
      );
}
