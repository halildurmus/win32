// IMFTimedTextFormattedText.dart

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
import '../../media/mediafoundation/IMFTimedTextStyle.dart';

/// @nodoc
const IID_IMFTimedTextFormattedText = '{E13AF3C1-4D47-4354-B1F5-E83AE0ECAE60}';

/// {@category Interface}
/// {@category com}
class IMFTimedTextFormattedText extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFTimedTextFormattedText(Pointer<COMObject> ptr) : super(ptr);

  int GetText(
    Pointer<Pointer<Utf16>> text,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> text,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> text,
          )>()(
        ptr.ref.lpVtbl,
        text,
      );

  int GetSubformattingCount() => ptr.ref.lpVtbl.value
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

  int GetSubformatting(
    int index,
    Pointer<Uint32> firstChar,
    Pointer<Uint32> charLength,
    Pointer<Pointer<COMObject>> style,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Uint32> firstChar,
            Pointer<Uint32> charLength,
            Pointer<Pointer<COMObject>> style,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Uint32> firstChar,
            Pointer<Uint32> charLength,
            Pointer<Pointer<COMObject>> style,
          )>()(
        ptr.ref.lpVtbl,
        index,
        firstChar,
        charLength,
        style,
      );
}
