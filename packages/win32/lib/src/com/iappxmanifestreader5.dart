// iappxmanifestreader5.dart

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
const IID_IAppxManifestReader5 = '{8d7ae132-a690-4c00-b75a-6aae1feaac80}';

/// Represents an object model of the package manifest that provides methods
/// to access manifest elements and attributes.
///
/// {@category com}
class IAppxManifestReader5 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAppxManifestReader5(super.ptr);

  factory IAppxManifestReader5.from(IUnknown interface) =>
      IAppxManifestReader5(interface.toInterface(IID_IAppxManifestReader5));

  int getMainPackageDependencies(
    Pointer<Pointer<COMObject>> mainPackageDependencies,
  ) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Pointer<COMObject>> mainPackageDependencies,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Pointer<COMObject>> mainPackageDependencies,
        )
      >()(ptr.ref.lpVtbl, mainPackageDependencies);
}
