// ienumvariant.dart

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
const IID_IEnumVARIANT = '{00020404-0000-0000-c000-000000000046}';

/// Provides a method for enumerating a collection of variants, including
/// heterogeneous collections of objects and intrinsic types. Callers of
/// this interface do not need to know the specific type (or types) of the
/// elements in the collection.
///
/// {@category com}
class IEnumVARIANT extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumVARIANT(super.ptr);

  factory IEnumVARIANT.from(IUnknown interface) =>
      IEnumVARIANT(interface.toInterface(IID_IEnumVARIANT));

  int next(int celt, Pointer<VARIANT> rgVar, Pointer<Uint32> pCeltFetched) =>
      (ptr.ref.vtable + 3)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Uint32 celt,
                  Pointer<VARIANT> rgVar,
                  Pointer<Uint32> pCeltFetched,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              int celt,
              Pointer<VARIANT> rgVar,
              Pointer<Uint32> pCeltFetched,
            )
          >()(ptr.ref.lpVtbl, celt, rgVar, pCeltFetched);

  int skip(int celt) => (ptr.ref.vtable + 4)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Uint32 celt)>>>()
      .value
      .asFunction<int Function(Pointer, int celt)>()(ptr.ref.lpVtbl, celt);

  int reset() => (ptr.ref.vtable + 5)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int clone(Pointer<Pointer<COMObject>> ppEnum) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppEnum)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<COMObject>> ppEnum)>()(
    ptr.ref.lpVtbl,
    ppEnum,
  );
}
