// IDWriteInlineObject.dart

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
import '../../graphics/directwrite/IDWriteTextRenderer.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../graphics/directwrite/structs.g.dart';

/// @nodoc
const IID_IDWriteInlineObject = '{8339FDE3-106F-47AB-8373-1C6295EB10B3}';

/// {@category Interface}
/// {@category com}
class IDWriteInlineObject extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IDWriteInlineObject(Pointer<COMObject> ptr) : super(ptr);

  int Draw(
    Pointer clientDrawingContext,
    Pointer<COMObject> renderer,
    double originX,
    double originY,
    int isSideways,
    int isRightToLeft,
    Pointer<COMObject> clientDrawingEffect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer clientDrawingContext,
            Pointer<COMObject> renderer,
            Float originX,
            Float originY,
            Int32 isSideways,
            Int32 isRightToLeft,
            Pointer<COMObject> clientDrawingEffect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer clientDrawingContext,
            Pointer<COMObject> renderer,
            double originX,
            double originY,
            int isSideways,
            int isRightToLeft,
            Pointer<COMObject> clientDrawingEffect,
          )>()(
        ptr.ref.lpVtbl,
        clientDrawingContext,
        renderer,
        originX,
        originY,
        isSideways,
        isRightToLeft,
        clientDrawingEffect,
      );

  int GetMetrics(
    Pointer<DWRITE_INLINE_OBJECT_METRICS> metrics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_INLINE_OBJECT_METRICS> metrics,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_INLINE_OBJECT_METRICS> metrics,
          )>()(
        ptr.ref.lpVtbl,
        metrics,
      );

  int GetOverhangMetrics(
    Pointer<DWRITE_OVERHANG_METRICS> overhangs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_OVERHANG_METRICS> overhangs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_OVERHANG_METRICS> overhangs,
          )>()(
        ptr.ref.lpVtbl,
        overhangs,
      );

  int GetBreakConditions(
    Pointer<Int32> breakConditionBefore,
    Pointer<Int32> breakConditionAfter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> breakConditionBefore,
            Pointer<Int32> breakConditionAfter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> breakConditionBefore,
            Pointer<Int32> breakConditionAfter,
          )>()(
        ptr.ref.lpVtbl,
        breakConditionBefore,
        breakConditionAfter,
      );
}
