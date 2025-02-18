// ienumidlist.dart

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
const IID_IEnumIDList = '{000214f2-0000-0000-c000-000000000046}';

/// Exposes a standard set of methods used to enumerate the pointers to item
/// identifier lists (PIDLs) of the items in a Shell folder. When a folder's
/// `IShellFolder::EnumObjects` method is called, it creates an enumeration
/// object and passes a pointer to the object's [IEnumIDList] interface back
/// to the calling application.
///
/// {@category com}
class IEnumIDList extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IEnumIDList(super.ptr);

  factory IEnumIDList.from(IUnknown interface) =>
      IEnumIDList(interface.toInterface(IID_IEnumIDList));

  int next(
    int celt,
    Pointer<Pointer<ITEMIDLIST>> rgelt,
    Pointer<Uint32> pceltFetched,
  ) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Uint32 celt,
              Pointer<Pointer<ITEMIDLIST>> rgelt,
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
          Pointer<Pointer<ITEMIDLIST>> rgelt,
          Pointer<Uint32> pceltFetched,
        )
      >()(ptr.ref.lpVtbl, celt, rgelt, pceltFetched);

  int skip(int celt) => (ptr.ref.vtable + 4)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Uint32 celt)>>>()
      .value
      .asFunction<int Function(Pointer, int celt)>()(ptr.ref.lpVtbl, celt);

  int reset() => (ptr.ref.vtable + 5)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int clone(Pointer<Pointer<COMObject>> ppenum) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppenum)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<COMObject>> ppenum)>()(
    ptr.ref.lpVtbl,
    ppenum,
  );
}
