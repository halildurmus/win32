// ishellitemarray.dart

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
const IID_IShellItemArray = '{b63ea76d-1f85-456f-a19c-48159efa858b}';

/// Exposes methods that create and manipulate Shell item arrays.
///
/// {@category com}
class IShellItemArray extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IShellItemArray(super.ptr);

  factory IShellItemArray.from(IUnknown interface) =>
      IShellItemArray(interface.toInterface(IID_IShellItemArray));

  int bindToHandler(
    Pointer<COMObject> pbc,
    Pointer<GUID> bhid,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvOut,
  ) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<COMObject> pbc,
              Pointer<GUID> bhid,
              Pointer<GUID> riid,
              Pointer<Pointer> ppvOut,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<COMObject> pbc,
          Pointer<GUID> bhid,
          Pointer<GUID> riid,
          Pointer<Pointer> ppvOut,
        )
      >()(ptr.ref.lpVtbl, pbc, bhid, riid, ppvOut);

  int getPropertyStore(int flags, Pointer<GUID> riid, Pointer<Pointer> ppv) =>
      (ptr.ref.vtable + 4)
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

  int getPropertyDescriptionList(
    Pointer<PROPERTYKEY> keyType,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) => (ptr.ref.vtable + 5)
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

  int getAttributes(
    int AttribFlags,
    int sfgaoMask,
    Pointer<Uint32> psfgaoAttribs,
  ) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Int32 AttribFlags,
              Uint32 sfgaoMask,
              Pointer<Uint32> psfgaoAttribs,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          int AttribFlags,
          int sfgaoMask,
          Pointer<Uint32> psfgaoAttribs,
        )
      >()(ptr.ref.lpVtbl, AttribFlags, sfgaoMask, psfgaoAttribs);

  int getCount(Pointer<Uint32> pdwNumItems) => (ptr.ref.vtable + 7)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Pointer<Uint32> pdwNumItems)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Uint32> pdwNumItems)>()(
    ptr.ref.lpVtbl,
    pdwNumItems,
  );

  int getItemAt(int dwIndex, Pointer<Pointer<COMObject>> ppsi) =>
      (ptr.ref.vtable + 8)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Uint32 dwIndex,
                  Pointer<Pointer<COMObject>> ppsi,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, int dwIndex, Pointer<Pointer<COMObject>> ppsi)
          >()(ptr.ref.lpVtbl, dwIndex, ppsi);

  int enumItems(Pointer<Pointer<COMObject>> ppenumShellItems) =>
      (ptr.ref.vtable + 9)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Pointer<COMObject>> ppenumShellItems,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(Pointer, Pointer<Pointer<COMObject>> ppenumShellItems)
          >()(ptr.ref.lpVtbl, ppenumShellItems);
}
