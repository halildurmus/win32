// IDWriteFontFileEnumerator.dart

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
import '../../graphics/directwrite/IDWriteFontFile.dart';

/// @nodoc
const IID_IDWriteFontFileEnumerator = '{72755049-5FF7-435D-8348-4BE97CFA6C7C}';

/// {@category Interface}
/// {@category com}
class IDWriteFontFileEnumerator extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDWriteFontFileEnumerator(Pointer<COMObject> ptr) : super(ptr);

  int MoveNext(
    Pointer<Int32> hasCurrentFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> hasCurrentFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> hasCurrentFile,
          )>()(
        ptr.ref.lpVtbl,
        hasCurrentFile,
      );

  int GetCurrentFontFile(
    Pointer<Pointer<COMObject>> fontFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
}
