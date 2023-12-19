// iagileobject.dart

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
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAgileObject = '{94ea2b94-e9cc-49e0-c0ff-ee64ca8f5b90}';

/// Marks an interface as agile across apartments.
///
/// {@category com}
class IAgileObject extends IUnknown {
  // vtable begins at 3, is 0 entries long.
  IAgileObject(super.ptr);

  factory IAgileObject.from(IUnknown interface) =>
      IAgileObject(interface.toInterface(IID_IAgileObject));
}
