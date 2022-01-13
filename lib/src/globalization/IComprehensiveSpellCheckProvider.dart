// IComprehensiveSpellCheckProvider.dart

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

import '../system/com/IUnknown.dart';
import '../foundation/structs.g.dart';
import '../globalization/IEnumSpellingError.dart';

/// @nodoc
const IID_IComprehensiveSpellCheckProvider =
    '{0C58F8DE-8E94-479E-9717-70C42C4AD2C3}';

/// {@category Interface}
/// {@category com}
class IComprehensiveSpellCheckProvider extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IComprehensiveSpellCheckProvider(Pointer<COMObject> ptr) : super(ptr);

  int ComprehensiveCheck(
    Pointer<Utf16> text,
    Pointer<Pointer<COMObject>> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> text,
            Pointer<Pointer<COMObject>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> text,
            Pointer<Pointer<COMObject>> value,
          )>()(
        ptr.ref.lpVtbl,
        text,
        value,
      );
}
