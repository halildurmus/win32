// IDWriteTextAnalysisSource.dart

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
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../graphics/directwrite/IDWriteNumberSubstitution.dart';

/// @nodoc
const IID_IDWriteTextAnalysisSource = '{688E1A58-5094-47C8-ADC8-FBCEA60AE92B}';

/// {@category Interface}
/// {@category com}
class IDWriteTextAnalysisSource extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDWriteTextAnalysisSource(Pointer<COMObject> ptr) : super(ptr);

  int GetTextAtPosition(
    int textPosition,
    Pointer<Pointer<Uint16>> textString,
    Pointer<Uint32> textLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 textPosition,
            Pointer<Pointer<Uint16>> textString,
            Pointer<Uint32> textLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int textPosition,
            Pointer<Pointer<Uint16>> textString,
            Pointer<Uint32> textLength,
          )>()(
        ptr.ref.lpVtbl,
        textPosition,
        textString,
        textLength,
      );

  int GetTextBeforePosition(
    int textPosition,
    Pointer<Pointer<Uint16>> textString,
    Pointer<Uint32> textLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 textPosition,
            Pointer<Pointer<Uint16>> textString,
            Pointer<Uint32> textLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int textPosition,
            Pointer<Pointer<Uint16>> textString,
            Pointer<Uint32> textLength,
          )>()(
        ptr.ref.lpVtbl,
        textPosition,
        textString,
        textLength,
      );

  int GetParagraphReadingDirection() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetLocaleName(
    int textPosition,
    Pointer<Uint32> textLength,
    Pointer<Pointer<Uint16>> localeName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 textPosition,
            Pointer<Uint32> textLength,
            Pointer<Pointer<Uint16>> localeName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int textPosition,
            Pointer<Uint32> textLength,
            Pointer<Pointer<Uint16>> localeName,
          )>()(
        ptr.ref.lpVtbl,
        textPosition,
        textLength,
        localeName,
      );

  int GetNumberSubstitution(
    int textPosition,
    Pointer<Uint32> textLength,
    Pointer<Pointer<COMObject>> numberSubstitution,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 textPosition,
            Pointer<Uint32> textLength,
            Pointer<Pointer<COMObject>> numberSubstitution,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int textPosition,
            Pointer<Uint32> textLength,
            Pointer<Pointer<COMObject>> numberSubstitution,
          )>()(
        ptr.ref.lpVtbl,
        textPosition,
        textLength,
        numberSubstitution,
      );
}
