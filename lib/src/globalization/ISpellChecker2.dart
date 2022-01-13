// ISpellChecker2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../utils.dart';

import '../globalization/ISpellChecker.dart';
import '../foundation/structs.g.dart';

/// @nodoc
const IID_ISpellChecker2 = '{E7ED1C71-87F7-4378-A840-C9200DACEE47}';

/// {@category Interface}
/// {@category com}
class ISpellChecker2 extends ISpellChecker {
  // vtable begins at 17, is 1 entries long.
  ISpellChecker2(Pointer<COMObject> ptr) : super(ptr);

  int Remove(
    Pointer<Utf16> word,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> word,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> word,
          )>()(
        ptr.ref.lpVtbl,
        word,
      );
}
