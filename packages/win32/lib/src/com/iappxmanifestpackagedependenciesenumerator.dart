// iappxmanifestpackagedependenciesenumerator.dart

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
const IID_IAppxManifestPackageDependenciesEnumerator =
    '{b43bbcf9-65a6-42dd-bac0-8c6741e7f5a4}';

/// Enumerates the package dependencies defined in the package manifest.
///
/// {@category com}
class IAppxManifestPackageDependenciesEnumerator extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAppxManifestPackageDependenciesEnumerator(super.ptr);

  factory IAppxManifestPackageDependenciesEnumerator.from(IUnknown interface) =>
      IAppxManifestPackageDependenciesEnumerator(
        interface.toInterface(IID_IAppxManifestPackageDependenciesEnumerator),
      );

  int getCurrent(Pointer<Pointer<COMObject>> dependency) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<COMObject>> dependency)
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, Pointer<Pointer<COMObject>> dependency)
      >()(ptr.ref.lpVtbl, dependency);

  int getHasCurrent(Pointer<Int32> hasCurrent) => (ptr.ref.vtable + 4)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Int32> hasCurrent)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Int32> hasCurrent)>()(
    ptr.ref.lpVtbl,
    hasCurrent,
  );

  int moveNext(Pointer<Int32> hasNext) => (ptr.ref.vtable + 5)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Int32> hasNext)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Int32> hasNext)>()(
    ptr.ref.lpVtbl,
    hasNext,
  );
}
