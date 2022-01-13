// IDWriteTextLayout.dart

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

import '../../graphics/directwrite/IDWriteTextFormat.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontCollection.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../specialTypes.dart';
import '../../graphics/directwrite/IDWriteInlineObject.dart';
import '../../graphics/directwrite/IDWriteTypography.dart';
import '../../graphics/directwrite/IDWriteTextRenderer.dart';

/// @nodoc
const IID_IDWriteTextLayout = '{53737037-6D14-410B-9BFE-0B182BB70961}';

/// {@category Interface}
/// {@category com}
class IDWriteTextLayout extends IDWriteTextFormat {
  // vtable begins at 28, is 39 entries long.
  IDWriteTextLayout(Pointer<COMObject> ptr) : super(ptr);

  int SetMaxWidth(
    double maxWidth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float maxWidth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double maxWidth,
          )>()(
        ptr.ref.lpVtbl,
        maxWidth,
      );

  int SetMaxHeight(
    double maxHeight,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float maxHeight,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double maxHeight,
          )>()(
        ptr.ref.lpVtbl,
        maxHeight,
      );

  int SetFontCollection(
    Pointer<COMObject> fontCollection,
    DWRITE_TEXT_RANGE textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> fontCollection,
            DWRITE_TEXT_RANGE textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> fontCollection,
            DWRITE_TEXT_RANGE textRange,
          )>()(
        ptr.ref.lpVtbl,
        fontCollection,
        textRange,
      );

  int SetFontFamilyName(
    Pointer<Utf16> fontFamilyName,
    DWRITE_TEXT_RANGE textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> fontFamilyName,
            DWRITE_TEXT_RANGE textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> fontFamilyName,
            DWRITE_TEXT_RANGE textRange,
          )>()(
        ptr.ref.lpVtbl,
        fontFamilyName,
        textRange,
      );

  int SetFontWeight(
    int fontWeight,
    DWRITE_TEXT_RANGE textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fontWeight,
            DWRITE_TEXT_RANGE textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fontWeight,
            DWRITE_TEXT_RANGE textRange,
          )>()(
        ptr.ref.lpVtbl,
        fontWeight,
        textRange,
      );

  int SetFontStyle(
    int fontStyle,
    DWRITE_TEXT_RANGE textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fontStyle,
            DWRITE_TEXT_RANGE textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fontStyle,
            DWRITE_TEXT_RANGE textRange,
          )>()(
        ptr.ref.lpVtbl,
        fontStyle,
        textRange,
      );

  int SetFontStretch(
    int fontStretch,
    DWRITE_TEXT_RANGE textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fontStretch,
            DWRITE_TEXT_RANGE textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fontStretch,
            DWRITE_TEXT_RANGE textRange,
          )>()(
        ptr.ref.lpVtbl,
        fontStretch,
        textRange,
      );

  int SetFontSize(
    double fontSize,
    DWRITE_TEXT_RANGE textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float fontSize,
            DWRITE_TEXT_RANGE textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double fontSize,
            DWRITE_TEXT_RANGE textRange,
          )>()(
        ptr.ref.lpVtbl,
        fontSize,
        textRange,
      );

  int SetUnderline(
    int hasUnderline,
    DWRITE_TEXT_RANGE textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hasUnderline,
            DWRITE_TEXT_RANGE textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hasUnderline,
            DWRITE_TEXT_RANGE textRange,
          )>()(
        ptr.ref.lpVtbl,
        hasUnderline,
        textRange,
      );

  int SetStrikethrough(
    int hasStrikethrough,
    DWRITE_TEXT_RANGE textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hasStrikethrough,
            DWRITE_TEXT_RANGE textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hasStrikethrough,
            DWRITE_TEXT_RANGE textRange,
          )>()(
        ptr.ref.lpVtbl,
        hasStrikethrough,
        textRange,
      );

  int SetDrawingEffect(
    Pointer<COMObject> drawingEffect,
    DWRITE_TEXT_RANGE textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> drawingEffect,
            DWRITE_TEXT_RANGE textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> drawingEffect,
            DWRITE_TEXT_RANGE textRange,
          )>()(
        ptr.ref.lpVtbl,
        drawingEffect,
        textRange,
      );

  int SetInlineObject(
    Pointer<COMObject> inlineObject,
    DWRITE_TEXT_RANGE textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> inlineObject,
            DWRITE_TEXT_RANGE textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> inlineObject,
            DWRITE_TEXT_RANGE textRange,
          )>()(
        ptr.ref.lpVtbl,
        inlineObject,
        textRange,
      );

  int SetTypography(
    Pointer<COMObject> typography,
    DWRITE_TEXT_RANGE textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> typography,
            DWRITE_TEXT_RANGE textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> typography,
            DWRITE_TEXT_RANGE textRange,
          )>()(
        ptr.ref.lpVtbl,
        typography,
        textRange,
      );

  int SetLocaleName(
    Pointer<Utf16> localeName,
    DWRITE_TEXT_RANGE textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> localeName,
            DWRITE_TEXT_RANGE textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> localeName,
            DWRITE_TEXT_RANGE textRange,
          )>()(
        ptr.ref.lpVtbl,
        localeName,
        textRange,
      );

  double GetMaxWidth() => ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Float Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              double Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  double GetMaxHeight() => ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Float Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              double Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetFontCollection_1(
    int currentPosition,
    Pointer<Pointer<COMObject>> fontCollection,
    Pointer<DWRITE_TEXT_RANGE> textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 currentPosition,
            Pointer<Pointer<COMObject>> fontCollection,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentPosition,
            Pointer<Pointer<COMObject>> fontCollection,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>()(
        ptr.ref.lpVtbl,
        currentPosition,
        fontCollection,
        textRange,
      );

  int GetFontFamilyNameLength_1(
    int currentPosition,
    Pointer<Uint32> nameLength,
    Pointer<DWRITE_TEXT_RANGE> textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 currentPosition,
            Pointer<Uint32> nameLength,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentPosition,
            Pointer<Uint32> nameLength,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>()(
        ptr.ref.lpVtbl,
        currentPosition,
        nameLength,
        textRange,
      );

  int GetFontFamilyName_1(
    int currentPosition,
    Pointer<Utf16> fontFamilyName,
    int nameSize,
    Pointer<DWRITE_TEXT_RANGE> textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 currentPosition,
            Pointer<Utf16> fontFamilyName,
            Uint32 nameSize,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentPosition,
            Pointer<Utf16> fontFamilyName,
            int nameSize,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>()(
        ptr.ref.lpVtbl,
        currentPosition,
        fontFamilyName,
        nameSize,
        textRange,
      );

  int GetFontWeight_1(
    int currentPosition,
    Pointer<Int32> fontWeight,
    Pointer<DWRITE_TEXT_RANGE> textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(47)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 currentPosition,
            Pointer<Int32> fontWeight,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentPosition,
            Pointer<Int32> fontWeight,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>()(
        ptr.ref.lpVtbl,
        currentPosition,
        fontWeight,
        textRange,
      );

  int GetFontStyle_1(
    int currentPosition,
    Pointer<Int32> fontStyle,
    Pointer<DWRITE_TEXT_RANGE> textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 currentPosition,
            Pointer<Int32> fontStyle,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentPosition,
            Pointer<Int32> fontStyle,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>()(
        ptr.ref.lpVtbl,
        currentPosition,
        fontStyle,
        textRange,
      );

  int GetFontStretch_1(
    int currentPosition,
    Pointer<Int32> fontStretch,
    Pointer<DWRITE_TEXT_RANGE> textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 currentPosition,
            Pointer<Int32> fontStretch,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentPosition,
            Pointer<Int32> fontStretch,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>()(
        ptr.ref.lpVtbl,
        currentPosition,
        fontStretch,
        textRange,
      );

  int GetFontSize_1(
    int currentPosition,
    Pointer<Float> fontSize,
    Pointer<DWRITE_TEXT_RANGE> textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 currentPosition,
            Pointer<Float> fontSize,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentPosition,
            Pointer<Float> fontSize,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>()(
        ptr.ref.lpVtbl,
        currentPosition,
        fontSize,
        textRange,
      );

  int GetUnderline(
    int currentPosition,
    Pointer<Int32> hasUnderline,
    Pointer<DWRITE_TEXT_RANGE> textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 currentPosition,
            Pointer<Int32> hasUnderline,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentPosition,
            Pointer<Int32> hasUnderline,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>()(
        ptr.ref.lpVtbl,
        currentPosition,
        hasUnderline,
        textRange,
      );

  int GetStrikethrough(
    int currentPosition,
    Pointer<Int32> hasStrikethrough,
    Pointer<DWRITE_TEXT_RANGE> textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 currentPosition,
            Pointer<Int32> hasStrikethrough,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentPosition,
            Pointer<Int32> hasStrikethrough,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>()(
        ptr.ref.lpVtbl,
        currentPosition,
        hasStrikethrough,
        textRange,
      );

  int GetDrawingEffect(
    int currentPosition,
    Pointer<Pointer<COMObject>> drawingEffect,
    Pointer<DWRITE_TEXT_RANGE> textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 currentPosition,
            Pointer<Pointer<COMObject>> drawingEffect,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentPosition,
            Pointer<Pointer<COMObject>> drawingEffect,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>()(
        ptr.ref.lpVtbl,
        currentPosition,
        drawingEffect,
        textRange,
      );

  int GetInlineObject(
    int currentPosition,
    Pointer<Pointer<COMObject>> inlineObject,
    Pointer<DWRITE_TEXT_RANGE> textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 currentPosition,
            Pointer<Pointer<COMObject>> inlineObject,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentPosition,
            Pointer<Pointer<COMObject>> inlineObject,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>()(
        ptr.ref.lpVtbl,
        currentPosition,
        inlineObject,
        textRange,
      );

  int GetTypography(
    int currentPosition,
    Pointer<Pointer<COMObject>> typography,
    Pointer<DWRITE_TEXT_RANGE> textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 currentPosition,
            Pointer<Pointer<COMObject>> typography,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentPosition,
            Pointer<Pointer<COMObject>> typography,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>()(
        ptr.ref.lpVtbl,
        currentPosition,
        typography,
        textRange,
      );

  int GetLocaleNameLength_1(
    int currentPosition,
    Pointer<Uint32> nameLength,
    Pointer<DWRITE_TEXT_RANGE> textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 currentPosition,
            Pointer<Uint32> nameLength,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentPosition,
            Pointer<Uint32> nameLength,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>()(
        ptr.ref.lpVtbl,
        currentPosition,
        nameLength,
        textRange,
      );

  int GetLocaleName_1(
    int currentPosition,
    Pointer<Utf16> localeName,
    int nameSize,
    Pointer<DWRITE_TEXT_RANGE> textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 currentPosition,
            Pointer<Utf16> localeName,
            Uint32 nameSize,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentPosition,
            Pointer<Utf16> localeName,
            int nameSize,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>()(
        ptr.ref.lpVtbl,
        currentPosition,
        localeName,
        nameSize,
        textRange,
      );

  int Draw(
    Pointer clientDrawingContext,
    Pointer<COMObject> renderer,
    double originX,
    double originY,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer clientDrawingContext,
            Pointer<COMObject> renderer,
            Float originX,
            Float originY,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer clientDrawingContext,
            Pointer<COMObject> renderer,
            double originX,
            double originY,
          )>()(
        ptr.ref.lpVtbl,
        clientDrawingContext,
        renderer,
        originX,
        originY,
      );

  int GetLineMetrics(
    Pointer<DWRITE_LINE_METRICS> lineMetrics,
    int maxLineCount,
    Pointer<Uint32> actualLineCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_LINE_METRICS> lineMetrics,
            Uint32 maxLineCount,
            Pointer<Uint32> actualLineCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_LINE_METRICS> lineMetrics,
            int maxLineCount,
            Pointer<Uint32> actualLineCount,
          )>()(
        ptr.ref.lpVtbl,
        lineMetrics,
        maxLineCount,
        actualLineCount,
      );

  int GetMetrics(
    Pointer<DWRITE_TEXT_METRICS> textMetrics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_TEXT_METRICS> textMetrics,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_TEXT_METRICS> textMetrics,
          )>()(
        ptr.ref.lpVtbl,
        textMetrics,
      );

  int GetOverhangMetrics(
    Pointer<DWRITE_OVERHANG_METRICS> overhangs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
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

  int GetClusterMetrics(
    Pointer<DWRITE_CLUSTER_METRICS> clusterMetrics,
    int maxClusterCount,
    Pointer<Uint32> actualClusterCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_CLUSTER_METRICS> clusterMetrics,
            Uint32 maxClusterCount,
            Pointer<Uint32> actualClusterCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_CLUSTER_METRICS> clusterMetrics,
            int maxClusterCount,
            Pointer<Uint32> actualClusterCount,
          )>()(
        ptr.ref.lpVtbl,
        clusterMetrics,
        maxClusterCount,
        actualClusterCount,
      );

  int DetermineMinWidth(
    Pointer<Float> minWidth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Float> minWidth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Float> minWidth,
          )>()(
        ptr.ref.lpVtbl,
        minWidth,
      );

  int HitTestPoint(
    double pointX,
    double pointY,
    Pointer<Int32> isTrailingHit,
    Pointer<Int32> isInside,
    Pointer<DWRITE_HIT_TEST_METRICS> hitTestMetrics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float pointX,
            Float pointY,
            Pointer<Int32> isTrailingHit,
            Pointer<Int32> isInside,
            Pointer<DWRITE_HIT_TEST_METRICS> hitTestMetrics,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double pointX,
            double pointY,
            Pointer<Int32> isTrailingHit,
            Pointer<Int32> isInside,
            Pointer<DWRITE_HIT_TEST_METRICS> hitTestMetrics,
          )>()(
        ptr.ref.lpVtbl,
        pointX,
        pointY,
        isTrailingHit,
        isInside,
        hitTestMetrics,
      );

  int HitTestTextPosition(
    int textPosition,
    int isTrailingHit,
    Pointer<Float> pointX,
    Pointer<Float> pointY,
    Pointer<DWRITE_HIT_TEST_METRICS> hitTestMetrics,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 textPosition,
            Int32 isTrailingHit,
            Pointer<Float> pointX,
            Pointer<Float> pointY,
            Pointer<DWRITE_HIT_TEST_METRICS> hitTestMetrics,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int textPosition,
            int isTrailingHit,
            Pointer<Float> pointX,
            Pointer<Float> pointY,
            Pointer<DWRITE_HIT_TEST_METRICS> hitTestMetrics,
          )>()(
        ptr.ref.lpVtbl,
        textPosition,
        isTrailingHit,
        pointX,
        pointY,
        hitTestMetrics,
      );

  int HitTestTextRange(
    int textPosition,
    int textLength,
    double originX,
    double originY,
    Pointer<DWRITE_HIT_TEST_METRICS> hitTestMetrics,
    int maxHitTestMetricsCount,
    Pointer<Uint32> actualHitTestMetricsCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(66)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 textPosition,
            Uint32 textLength,
            Float originX,
            Float originY,
            Pointer<DWRITE_HIT_TEST_METRICS> hitTestMetrics,
            Uint32 maxHitTestMetricsCount,
            Pointer<Uint32> actualHitTestMetricsCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int textPosition,
            int textLength,
            double originX,
            double originY,
            Pointer<DWRITE_HIT_TEST_METRICS> hitTestMetrics,
            int maxHitTestMetricsCount,
            Pointer<Uint32> actualHitTestMetricsCount,
          )>()(
        ptr.ref.lpVtbl,
        textPosition,
        textLength,
        originX,
        originY,
        hitTestMetrics,
        maxHitTestMetricsCount,
        actualHitTestMetricsCount,
      );
}
