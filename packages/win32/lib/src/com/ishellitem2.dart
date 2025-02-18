// ishellitem2.dart

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
import 'ishellitem.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IShellItem2 = '{7e9fb0d3-919f-4307-ab2e-9b1860310c93}';

/// Extends [IShellItem] with methods that retrieve various property values
/// of the item. [IShellItem] and [IShellItem2] are the preferred
/// representations of items in any new code.
///
/// {@category com}
class IShellItem2 extends IShellItem {
  // vtable begins at 8, is 13 entries long.
  IShellItem2(super.ptr);

  factory IShellItem2.from(IUnknown interface) =>
      IShellItem2(interface.toInterface(IID_IShellItem2));

  int getPropertyStore(int flags, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      (ptr.ref.vtable + 8)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Int32 flags,
                  Pointer<GUID> riid,
                  Pointer<Pointer> ppv,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              int flags,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv,
            )
          >()(ptr.ref.lpVtbl, flags, riid, ppv);

  int getPropertyStoreWithCreateObject(
    int flags,
    Pointer<COMObject> punkCreateObject,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) => (ptr.ref.vtable + 9)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Int32 flags,
              Pointer<COMObject> punkCreateObject,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          int flags,
          Pointer<COMObject> punkCreateObject,
          Pointer<GUID> riid,
          Pointer<Pointer> ppv,
        )
      >()(ptr.ref.lpVtbl, flags, punkCreateObject, riid, ppv);

  int getPropertyStoreForKeys(
    Pointer<PROPERTYKEY> rgKeys,
    int cKeys,
    int flags,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) => (ptr.ref.vtable + 10)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<PROPERTYKEY> rgKeys,
              Uint32 cKeys,
              Int32 flags,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<PROPERTYKEY> rgKeys,
          int cKeys,
          int flags,
          Pointer<GUID> riid,
          Pointer<Pointer> ppv,
        )
      >()(ptr.ref.lpVtbl, rgKeys, cKeys, flags, riid, ppv);

  int getPropertyDescriptionList(
    Pointer<PROPERTYKEY> keyType,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) => (ptr.ref.vtable + 11)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<PROPERTYKEY> keyType,
              Pointer<GUID> riid,
              Pointer<Pointer> ppv,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<PROPERTYKEY> keyType,
          Pointer<GUID> riid,
          Pointer<Pointer> ppv,
        )
      >()(ptr.ref.lpVtbl, keyType, riid, ppv);

  int update(Pointer<COMObject> pbc) => (ptr.ref.vtable + 12)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<COMObject> pbc)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<COMObject> pbc)>()(
    ptr.ref.lpVtbl,
    pbc,
  );

  int getProperty(Pointer<PROPERTYKEY> key, Pointer<PROPVARIANT> ppropvar) =>
      (ptr.ref.vtable + 13)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<PROPERTYKEY> key,
                  Pointer<PROPVARIANT> ppropvar,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<PROPERTYKEY> key,
              Pointer<PROPVARIANT> ppropvar,
            )
          >()(ptr.ref.lpVtbl, key, ppropvar);

  int getCLSID(Pointer<PROPERTYKEY> key, Pointer<GUID> pclsid) =>
      (ptr.ref.vtable + 14)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<PROPERTYKEY> key,
                  Pointer<GUID> pclsid,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<PROPERTYKEY> key,
              Pointer<GUID> pclsid,
            )
          >()(ptr.ref.lpVtbl, key, pclsid);

  int getFileTime(Pointer<PROPERTYKEY> key, Pointer<FILETIME> pft) =>
      (ptr.ref.vtable + 15)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<PROPERTYKEY> key,
                  Pointer<FILETIME> pft,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<PROPERTYKEY> key,
              Pointer<FILETIME> pft,
            )
          >()(ptr.ref.lpVtbl, key, pft);

  int getInt32(Pointer<PROPERTYKEY> key, Pointer<Int32> pi) => (ptr.ref.vtable +
          16)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<PROPERTYKEY> key, Pointer<Int32> pi)
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, Pointer<PROPERTYKEY> key, Pointer<Int32> pi)
      >()(ptr.ref.lpVtbl, key, pi);

  int getString(Pointer<PROPERTYKEY> key, Pointer<Pointer<Utf16>> ppsz) =>
      (ptr.ref.vtable + 17)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<PROPERTYKEY> key,
                  Pointer<Pointer<Utf16>> ppsz,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<PROPERTYKEY> key,
              Pointer<Pointer<Utf16>> ppsz,
            )
          >()(ptr.ref.lpVtbl, key, ppsz);

  int getUInt32(Pointer<PROPERTYKEY> key, Pointer<Uint32> pui) =>
      (ptr.ref.vtable + 18)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<PROPERTYKEY> key,
                  Pointer<Uint32> pui,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<PROPERTYKEY> key, Pointer<Uint32> pui)
          >()(ptr.ref.lpVtbl, key, pui);

  int getUInt64(Pointer<PROPERTYKEY> key, Pointer<Uint64> pull) =>
      (ptr.ref.vtable + 19)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<PROPERTYKEY> key,
                  Pointer<Uint64> pull,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<PROPERTYKEY> key,
              Pointer<Uint64> pull,
            )
          >()(ptr.ref.lpVtbl, key, pull);

  int getBool(Pointer<PROPERTYKEY> key, Pointer<Int32> pf) => (ptr.ref.vtable +
          20)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<PROPERTYKEY> key, Pointer<Int32> pf)
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, Pointer<PROPERTYKEY> key, Pointer<Int32> pf)
      >()(ptr.ref.lpVtbl, key, pf);
}
