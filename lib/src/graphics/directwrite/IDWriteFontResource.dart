// IDWriteFontResource.dart

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
import '../../graphics/directwrite/IDWriteFontFile.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteLocalizedStrings.dart';
import '../../graphics/directwrite/IDWriteFontFace5.dart';
import '../../graphics/directwrite/IDWriteFontFaceReference1.dart';

/// @nodoc
const IID_IDWriteFontResource = '{1F803A76-6871-48E8-987F-B975551C50F2}';

/// {@category Interface}
/// {@category com}
class IDWriteFontResource extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IDWriteFontResource(Pointer<COMObject> ptr) : super(ptr);

  int GetFontFile(
    Pointer<Pointer<COMObject>> fontFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontFile,
          )>()(
        ptr.ref.lpVtbl,
        fontFile,
      );

  int GetFontFaceIndex() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetFontAxisCount() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetDefaultFontAxisValues(
    Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
    int fontAxisValueCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            Uint32 fontAxisValueCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            int fontAxisValueCount,
          )>()(
        ptr.ref.lpVtbl,
        fontAxisValues,
        fontAxisValueCount,
      );

  int GetFontAxisRanges(
    Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRanges,
    int fontAxisRangeCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRanges,
            Uint32 fontAxisRangeCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRanges,
            int fontAxisRangeCount,
          )>()(
        ptr.ref.lpVtbl,
        fontAxisRanges,
        fontAxisRangeCount,
      );

  int GetFontAxisAttributes(
    int axisIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Uint32 axisIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int axisIndex,
          )>()(
        ptr.ref.lpVtbl,
        axisIndex,
      );

  int GetAxisNames(
    int axisIndex,
    Pointer<Pointer<COMObject>> names,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 axisIndex,
            Pointer<Pointer<COMObject>> names,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int axisIndex,
            Pointer<Pointer<COMObject>> names,
          )>()(
        ptr.ref.lpVtbl,
        axisIndex,
        names,
      );

  int GetAxisValueNameCount(
    int axisIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Uint32 axisIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int axisIndex,
          )>()(
        ptr.ref.lpVtbl,
        axisIndex,
      );

  int GetAxisValueNames(
    int axisIndex,
    int axisValueIndex,
    Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRange,
    Pointer<Pointer<COMObject>> names,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 axisIndex,
            Uint32 axisValueIndex,
            Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRange,
            Pointer<Pointer<COMObject>> names,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int axisIndex,
            int axisValueIndex,
            Pointer<DWRITE_FONT_AXIS_RANGE> fontAxisRange,
            Pointer<Pointer<COMObject>> names,
          )>()(
        ptr.ref.lpVtbl,
        axisIndex,
        axisValueIndex,
        fontAxisRange,
        names,
      );

  int HasVariations() => ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int CreateFontFace(
    int fontSimulations,
    Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
    int fontAxisValueCount,
    Pointer<Pointer<COMObject>> fontFace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fontSimulations,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            Uint32 fontAxisValueCount,
            Pointer<Pointer<COMObject>> fontFace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fontSimulations,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            int fontAxisValueCount,
            Pointer<Pointer<COMObject>> fontFace,
          )>()(
        ptr.ref.lpVtbl,
        fontSimulations,
        fontAxisValues,
        fontAxisValueCount,
        fontFace,
      );

  int CreateFontFaceReference(
    int fontSimulations,
    Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
    int fontAxisValueCount,
    Pointer<Pointer<COMObject>> fontFaceReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fontSimulations,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            Uint32 fontAxisValueCount,
            Pointer<Pointer<COMObject>> fontFaceReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fontSimulations,
            Pointer<DWRITE_FONT_AXIS_VALUE> fontAxisValues,
            int fontAxisValueCount,
            Pointer<Pointer<COMObject>> fontFaceReference,
          )>()(
        ptr.ref.lpVtbl,
        fontSimulations,
        fontAxisValues,
        fontAxisValueCount,
        fontFaceReference,
      );
}
