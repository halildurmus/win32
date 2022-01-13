// IDWriteFontSet3.dart

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

import '../../graphics/directwrite/IDWriteFontSet2.dart';
import '../../graphics/directwrite/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteFontSet3 = '{7C073EF2-A7F4-4045-8C32-8AB8AE640F90}';

/// {@category Interface}
/// {@category com}
class IDWriteFontSet3 extends IDWriteFontSet2 {
  // vtable begins at 27, is 3 entries long.
  IDWriteFontSet3(Pointer<COMObject> ptr) : super(ptr);

  int GetFontSourceType(
    int fontIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fontIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fontIndex,
          )>()(
        ptr.ref.lpVtbl,
        fontIndex,
      );

  int GetFontSourceNameLength(
    int listIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
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

  int GetFontSourceName(
    int listIndex,
    Pointer<Utf16> stringBuffer,
    int stringBufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 listIndex,
            Pointer<Utf16> stringBuffer,
            Uint32 stringBufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int listIndex,
            Pointer<Utf16> stringBuffer,
            int stringBufferSize,
          )>()(
        ptr.ref.lpVtbl,
        listIndex,
        stringBuffer,
        stringBufferSize,
      );
}
