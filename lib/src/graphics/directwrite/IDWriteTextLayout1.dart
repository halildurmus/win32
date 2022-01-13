// IDWriteTextLayout1.dart

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

import '../../graphics/directwrite/IDWriteTextLayout.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/structs.g.dart';

/// @nodoc
const IID_IDWriteTextLayout1 = '{9064D822-80A7-465C-A986-DF65F78B8FEB}';

/// {@category Interface}
/// {@category com}
class IDWriteTextLayout1 extends IDWriteTextLayout {
  // vtable begins at 67, is 4 entries long.
  IDWriteTextLayout1(Pointer<COMObject> ptr) : super(ptr);

  int SetPairKerning(
    int isPairKerningEnabled,
    DWRITE_TEXT_RANGE textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(67)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 isPairKerningEnabled,
            DWRITE_TEXT_RANGE textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int isPairKerningEnabled,
            DWRITE_TEXT_RANGE textRange,
          )>()(
        ptr.ref.lpVtbl,
        isPairKerningEnabled,
        textRange,
      );

  int GetPairKerning(
    int currentPosition,
    Pointer<Int32> isPairKerningEnabled,
    Pointer<DWRITE_TEXT_RANGE> textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(68)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 currentPosition,
            Pointer<Int32> isPairKerningEnabled,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentPosition,
            Pointer<Int32> isPairKerningEnabled,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>()(
        ptr.ref.lpVtbl,
        currentPosition,
        isPairKerningEnabled,
        textRange,
      );

  int SetCharacterSpacing(
    double leadingSpacing,
    double trailingSpacing,
    double minimumAdvanceWidth,
    DWRITE_TEXT_RANGE textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(69)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float leadingSpacing,
            Float trailingSpacing,
            Float minimumAdvanceWidth,
            DWRITE_TEXT_RANGE textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double leadingSpacing,
            double trailingSpacing,
            double minimumAdvanceWidth,
            DWRITE_TEXT_RANGE textRange,
          )>()(
        ptr.ref.lpVtbl,
        leadingSpacing,
        trailingSpacing,
        minimumAdvanceWidth,
        textRange,
      );

  int GetCharacterSpacing(
    int currentPosition,
    Pointer<Float> leadingSpacing,
    Pointer<Float> trailingSpacing,
    Pointer<Float> minimumAdvanceWidth,
    Pointer<DWRITE_TEXT_RANGE> textRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(70)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 currentPosition,
            Pointer<Float> leadingSpacing,
            Pointer<Float> trailingSpacing,
            Pointer<Float> minimumAdvanceWidth,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentPosition,
            Pointer<Float> leadingSpacing,
            Pointer<Float> trailingSpacing,
            Pointer<Float> minimumAdvanceWidth,
            Pointer<DWRITE_TEXT_RANGE> textRange,
          )>()(
        ptr.ref.lpVtbl,
        currentPosition,
        leadingSpacing,
        trailingSpacing,
        minimumAdvanceWidth,
        textRange,
      );
}
