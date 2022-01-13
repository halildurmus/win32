// IDWriteTextFormat.dart

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
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteInlineObject.dart';
import '../../graphics/directwrite/IDWriteFontCollection.dart';

/// @nodoc
const IID_IDWriteTextFormat = '{9C906818-31D7-4FD3-A151-7C5E225DB55A}';

/// {@category Interface}
/// {@category com}
class IDWriteTextFormat extends IUnknown {
  // vtable begins at 3, is 25 entries long.
  IDWriteTextFormat(Pointer<COMObject> ptr) : super(ptr);

  int SetTextAlignment(
    int textAlignment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 textAlignment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int textAlignment,
          )>()(
        ptr.ref.lpVtbl,
        textAlignment,
      );

  int SetParagraphAlignment(
    int paragraphAlignment,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 paragraphAlignment,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int paragraphAlignment,
          )>()(
        ptr.ref.lpVtbl,
        paragraphAlignment,
      );

  int SetWordWrapping(
    int wordWrapping,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 wordWrapping,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wordWrapping,
          )>()(
        ptr.ref.lpVtbl,
        wordWrapping,
      );

  int SetReadingDirection(
    int readingDirection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 readingDirection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int readingDirection,
          )>()(
        ptr.ref.lpVtbl,
        readingDirection,
      );

  int SetFlowDirection(
    int flowDirection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 flowDirection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flowDirection,
          )>()(
        ptr.ref.lpVtbl,
        flowDirection,
      );

  int SetIncrementalTabStop(
    double incrementalTabStop,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float incrementalTabStop,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double incrementalTabStop,
          )>()(
        ptr.ref.lpVtbl,
        incrementalTabStop,
      );

  int SetTrimming(
    Pointer<DWRITE_TRIMMING> trimmingOptions,
    Pointer<COMObject> trimmingSign,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_TRIMMING> trimmingOptions,
            Pointer<COMObject> trimmingSign,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_TRIMMING> trimmingOptions,
            Pointer<COMObject> trimmingSign,
          )>()(
        ptr.ref.lpVtbl,
        trimmingOptions,
        trimmingSign,
      );

  int SetLineSpacing(
    int lineSpacingMethod,
    double lineSpacing,
    double baseline,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lineSpacingMethod,
            Float lineSpacing,
            Float baseline,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lineSpacingMethod,
            double lineSpacing,
            double baseline,
          )>()(
        ptr.ref.lpVtbl,
        lineSpacingMethod,
        lineSpacing,
        baseline,
      );

  int GetTextAlignment() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int GetParagraphAlignment() => ptr.ref.lpVtbl.value
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

  int GetWordWrapping() => ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int GetReadingDirection() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int GetFlowDirection() => ptr.ref.lpVtbl.value
          .elementAt(15)
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

  double GetIncrementalTabStop() => ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int GetTrimming(
    Pointer<DWRITE_TRIMMING> trimmingOptions,
    Pointer<Pointer<COMObject>> trimmingSign,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DWRITE_TRIMMING> trimmingOptions,
            Pointer<Pointer<COMObject>> trimmingSign,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DWRITE_TRIMMING> trimmingOptions,
            Pointer<Pointer<COMObject>> trimmingSign,
          )>()(
        ptr.ref.lpVtbl,
        trimmingOptions,
        trimmingSign,
      );

  int GetLineSpacing(
    Pointer<Int32> lineSpacingMethod,
    Pointer<Float> lineSpacing,
    Pointer<Float> baseline,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> lineSpacingMethod,
            Pointer<Float> lineSpacing,
            Pointer<Float> baseline,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> lineSpacingMethod,
            Pointer<Float> lineSpacing,
            Pointer<Float> baseline,
          )>()(
        ptr.ref.lpVtbl,
        lineSpacingMethod,
        lineSpacing,
        baseline,
      );

  int GetFontCollection(
    Pointer<Pointer<COMObject>> fontCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontCollection,
          )>()(
        ptr.ref.lpVtbl,
        fontCollection,
      );

  int GetFontFamilyNameLength() => ptr.ref.lpVtbl.value
          .elementAt(20)
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

  int GetFontFamilyName(
    Pointer<Utf16> fontFamilyName,
    int nameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> fontFamilyName,
            Uint32 nameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> fontFamilyName,
            int nameSize,
          )>()(
        ptr.ref.lpVtbl,
        fontFamilyName,
        nameSize,
      );

  int GetFontWeight() => ptr.ref.lpVtbl.value
          .elementAt(22)
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

  int GetFontStyle() => ptr.ref.lpVtbl.value
          .elementAt(23)
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

  int GetFontStretch() => ptr.ref.lpVtbl.value
          .elementAt(24)
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

  double GetFontSize() => ptr.ref.lpVtbl.value
          .elementAt(25)
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

  int GetLocaleNameLength() => ptr.ref.lpVtbl.value
          .elementAt(26)
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

  int GetLocaleName(
    Pointer<Utf16> localeName,
    int nameSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> localeName,
            Uint32 nameSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> localeName,
            int nameSize,
          )>()(
        ptr.ref.lpVtbl,
        localeName,
        nameSize,
      );
}
