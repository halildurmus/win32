// ienumspellingerror.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IEnumSpellingError = '{803e3bd4-2828-4410-8290-418d1d73c762}';

/// An enumeration of the spelling errors.
///
/// {@category com}
class IEnumSpellingError extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IEnumSpellingError(super.ptr);

  factory IEnumSpellingError.from(IUnknown interface) =>
      IEnumSpellingError(interface.toInterface(IID_IEnumSpellingError));

  int next(Pointer<Pointer<COMObject>> value) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<COMObject>> value)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<COMObject>> value)>()(
    ptr.ref.lpVtbl,
    value,
  );
}
