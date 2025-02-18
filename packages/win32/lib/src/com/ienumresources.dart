// ienumresources.dart

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
const IID_IEnumResources = '{2dd81fe3-a83c-4da9-a330-47249d345ba1}';

/// Exposes resource enumeration methods.
///
/// {@category com}
class IEnumResources extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumResources(super.ptr);

  factory IEnumResources.from(IUnknown interface) =>
      IEnumResources(interface.toInterface(IID_IEnumResources));

  int next(
    int celt,
    Pointer<SHELL_ITEM_RESOURCE> psir,
    Pointer<Uint32> pceltFetched,
  ) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Uint32 celt,
              Pointer<SHELL_ITEM_RESOURCE> psir,
              Pointer<Uint32> pceltFetched,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          int celt,
          Pointer<SHELL_ITEM_RESOURCE> psir,
          Pointer<Uint32> pceltFetched,
        )
      >()(ptr.ref.lpVtbl, celt, psir, pceltFetched);

  int skip(int celt) => (ptr.ref.vtable + 4)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Uint32 celt)>>>()
      .value
      .asFunction<int Function(Pointer, int celt)>()(ptr.ref.lpVtbl, celt);

  int reset() => (ptr.ref.vtable + 5)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int clone(Pointer<Pointer<COMObject>> ppenumr) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppenumr)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<COMObject>> ppenumr)>()(
    ptr.ref.lpVtbl,
    ppenumr,
  );
}
