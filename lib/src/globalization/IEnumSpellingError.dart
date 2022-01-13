// IEnumSpellingError.dart

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
import '../globalization/ISpellingError.dart';
import '../foundation/structs.g.dart';

/// @nodoc
const IID_IEnumSpellingError = '{803E3BD4-2828-4410-8290-418D1D73C762}';

/// {@category Interface}
/// {@category com}
class IEnumSpellingError extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IEnumSpellingError(Pointer<COMObject> ptr) : super(ptr);

  int Next(
    Pointer<Pointer<COMObject>> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );
}
