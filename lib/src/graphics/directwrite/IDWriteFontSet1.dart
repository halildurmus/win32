// IDWriteFontSet1.dart

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

import '../../graphics/directwrite/IDWriteFontSet.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontSet1.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontFaceReference1.dart';
import '../../graphics/directwrite/IDWriteFontResource.dart';
import '../../graphics/directwrite/IDWriteFontFace5.dart';

/// @nodoc
const IID_IDWriteFontSet1 = '{7E9FDA85-6C92-4053-BC47-7AE3530DB4D3}';

/// {@category Interface}
/// {@category com}
class IDWriteFontSet1 extends IDWriteFontSet {
  // vtable begins at 13, is 13 entries long.
  IDWriteFontSet1(Pointer<COMObject> ptr) : super(ptr);

  int GetMatchingFonts_2(
    Pointer<DWRITE_FONT_PROPERTY> fontProperty,
    Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
    int fontAxisValueCount,
    Pointer<Pointer<COMObject>> matchingFonts,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_FONT_PROPERTY> fontProperty,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            Uint32 fontAxisValueCount,
            Pointer<Pointer<COMObject>> matchingFonts,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_FONT_PROPERTY> fontProperty,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            int fontAxisValueCount,
            Pointer<Pointer<COMObject>> matchingFonts,
          )>()(
        ptr.ref.lpVtbl,
        fontProperty,
        fontAxisValues,
        fontAxisValueCount,
        matchingFonts,
      );

  int GetFirstFontResources(
    Pointer<Pointer<COMObject>> filteredFontSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> filteredFontSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> filteredFontSet,
          )>()(
        ptr.ref.lpVtbl,
        filteredFontSet,
      );

  int GetFilteredFonts_2(
    Pointer<Uint32> indices,
    int indexCount,
    Pointer<Pointer<COMObject>> filteredFontSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> indices,
            Uint32 indexCount,
            Pointer<Pointer<COMObject>> filteredFontSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> indices,
            int indexCount,
            Pointer<Pointer<COMObject>> filteredFontSet,
          )>()(
        ptr.ref.lpVtbl,
        indices,
        indexCount,
        filteredFontSet,
      );

  int GetFilteredFonts_1(
    Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRanges,
    int fontAxisRangeCount,
    int selectAnyRange,
    Pointer<Pointer<COMObject>> filteredFontSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRanges,
            Uint32 fontAxisRangeCount,
            Int32 selectAnyRange,
            Pointer<Pointer<COMObject>> filteredFontSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRanges,
            int fontAxisRangeCount,
            int selectAnyRange,
            Pointer<Pointer<COMObject>> filteredFontSet,
          )>()(
        ptr.ref.lpVtbl,
        fontAxisRanges,
        fontAxisRangeCount,
        selectAnyRange,
        filteredFontSet,
      );

  int GetFilteredFonts(
    Pointer<DWRITE_FONT_PROPERTY> properties,
    int propertyCount,
    int selectAnyProperty,
    Pointer<Pointer<COMObject>> filteredFontSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_FONT_PROPERTY> properties,
            Uint32 propertyCount,
            Int32 selectAnyProperty,
            Pointer<Pointer<COMObject>> filteredFontSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_FONT_PROPERTY> properties,
            int propertyCount,
            int selectAnyProperty,
            Pointer<Pointer<COMObject>> filteredFontSet,
          )>()(
        ptr.ref.lpVtbl,
        properties,
        propertyCount,
        selectAnyProperty,
        filteredFontSet,
      );

  int GetFilteredFontIndices_1(
    Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRanges,
    int fontAxisRangeCount,
    int selectAnyRange,
    Pointer<Uint32> indices,
    int maxIndexCount,
    Pointer<Uint32> actualIndexCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRanges,
            Uint32 fontAxisRangeCount,
            Int32 selectAnyRange,
            Pointer<Uint32> indices,
            Uint32 maxIndexCount,
            Pointer<Uint32> actualIndexCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRanges,
            int fontAxisRangeCount,
            int selectAnyRange,
            Pointer<Uint32> indices,
            int maxIndexCount,
            Pointer<Uint32> actualIndexCount,
          )>()(
        ptr.ref.lpVtbl,
        fontAxisRanges,
        fontAxisRangeCount,
        selectAnyRange,
        indices,
        maxIndexCount,
        actualIndexCount,
      );

  int GetFilteredFontIndices(
    Pointer<DWRITE_FONT_PROPERTY> properties,
    int propertyCount,
    int selectAnyProperty,
    Pointer<Uint32> indices,
    int maxIndexCount,
    Pointer<Uint32> actualIndexCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_FONT_PROPERTY> properties,
            Uint32 propertyCount,
            Int32 selectAnyProperty,
            Pointer<Uint32> indices,
            Uint32 maxIndexCount,
            Pointer<Uint32> actualIndexCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_FONT_PROPERTY> properties,
            int propertyCount,
            int selectAnyProperty,
            Pointer<Uint32> indices,
            int maxIndexCount,
            Pointer<Uint32> actualIndexCount,
          )>()(
        ptr.ref.lpVtbl,
        properties,
        propertyCount,
        selectAnyProperty,
        indices,
        maxIndexCount,
        actualIndexCount,
      );

  int GetFontAxisRanges_1(
    int listIndex,
    Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRanges,
    int maxFontAxisRangeCount,
    Pointer<Uint32> actualFontAxisRangeCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 listIndex,
            Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRanges,
            Uint32 maxFontAxisRangeCount,
            Pointer<Uint32> actualFontAxisRangeCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int listIndex,
            Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRanges,
            int maxFontAxisRangeCount,
            Pointer<Uint32> actualFontAxisRangeCount,
          )>()(
        ptr.ref.lpVtbl,
        listIndex,
        fontAxisRanges,
        maxFontAxisRangeCount,
        actualFontAxisRangeCount,
      );

  int GetFontAxisRanges(
    Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRanges,
    int maxFontAxisRangeCount,
    Pointer<Uint32> actualFontAxisRangeCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRanges,
            Uint32 maxFontAxisRangeCount,
            Pointer<Uint32> actualFontAxisRangeCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRanges,
            int maxFontAxisRangeCount,
            Pointer<Uint32> actualFontAxisRangeCount,
          )>()(
        ptr.ref.lpVtbl,
        fontAxisRanges,
        maxFontAxisRangeCount,
        actualFontAxisRangeCount,
      );

  int GetFontFaceReference_1(
    int listIndex,
    Pointer<Pointer<COMObject>> fontFaceReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 listIndex,
            Pointer<Pointer<COMObject>> fontFaceReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int listIndex,
            Pointer<Pointer<COMObject>> fontFaceReference,
          )>()(
        ptr.ref.lpVtbl,
        listIndex,
        fontFaceReference,
      );

  int CreateFontResource(
    int listIndex,
    Pointer<Pointer<COMObject>> fontResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 listIndex,
            Pointer<Pointer<COMObject>> fontResource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int listIndex,
            Pointer<Pointer<COMObject>> fontResource,
          )>()(
        ptr.ref.lpVtbl,
        listIndex,
        fontResource,
      );

  int CreateFontFace(
    int listIndex,
    Pointer<Pointer<COMObject>> fontFace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 listIndex,
            Pointer<Pointer<COMObject>> fontFace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int listIndex,
            Pointer<Pointer<COMObject>> fontFace,
          )>()(
        ptr.ref.lpVtbl,
        listIndex,
        fontFace,
      );

  int GetFontLocality(
    int listIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 listIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int listIndex,
          )>()(
        ptr.ref.lpVtbl,
        listIndex,
      );
}
