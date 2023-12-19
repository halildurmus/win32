// ipropertystore.dart

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
const IID_IPropertyStore = '{886d8eeb-8cf2-4446-8d02-cdba1dbdcf99}';

/// This interface exposes methods used to enumerate and manipulate property
/// values.
///
/// {@category com}
class IPropertyStore extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IPropertyStore(super.ptr);

  factory IPropertyStore.from(IUnknown interface) =>
      IPropertyStore(interface.toInterface(IID_IPropertyStore));

  int getCount(Pointer<Uint32> cProps) => ptr.ref.vtable
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Uint32> cProps)>>>()
          .value
          .asFunction<int Function(Pointer, Pointer<Uint32> cProps)>()(
      ptr.ref.lpVtbl, cProps);

  int getAt(int iProp, Pointer<PROPERTYKEY> pkey) => ptr.ref.vtable
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
                          Pointer, Uint32 iProp, Pointer<PROPERTYKEY> pkey)>>>()
          .value
          .asFunction<
              int Function(Pointer, int iProp, Pointer<PROPERTYKEY> pkey)>()(
      ptr.ref.lpVtbl, iProp, pkey);

  int getValue(Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> pv) =>
      ptr.ref.vtable
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<PROPERTYKEY> key,
                          Pointer<PROPVARIANT> pv)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<PROPERTYKEY> key,
                  Pointer<PROPVARIANT> pv)>()(ptr.ref.lpVtbl, key, pv);

  int setValue(Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> propvar) => ptr
      .ref.vtable
      .elementAt(6)
      .cast<
          Pointer<
              NativeFunction<
                  Int32 Function(Pointer, Pointer<PROPERTYKEY> key,
                      Pointer<PROPVARIANT> propvar)>>>()
      .value
      .asFunction<
          int Function(Pointer, Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> propvar)>()(ptr.ref.lpVtbl, key, propvar);

  int commit() => ptr.ref.vtable
      .elementAt(7)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);
}
