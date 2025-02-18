// iwbemobjectaccess.dart

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
import 'iwbemclassobject.dart';

/// @nodoc
const IID_IWbemObjectAccess = '{49353c9a-516b-11d1-aea6-00c04fb68820}';

/// The IWbemObjectAccess interface provides access to the methods and
/// properties of an object. An IWbemObjectAccess object is a container for
/// an instance updated by a refresher. With the IWbemObjectAccess
/// interface, you can get and set properties by using property handles
/// instead of object property names.
///
/// {@category com}
class IWbemObjectAccess extends IWbemClassObject {
  // vtable begins at 27, is 10 entries long.
  IWbemObjectAccess(super.ptr);

  factory IWbemObjectAccess.from(IUnknown interface) =>
      IWbemObjectAccess(interface.toInterface(IID_IWbemObjectAccess));

  int getPropertyHandle(
    Pointer<Utf16> wszPropertyName,
    Pointer<Int32> pType,
    Pointer<Int32> plHandle,
  ) => (ptr.ref.vtable + 27)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Pointer<Utf16> wszPropertyName,
              Pointer<Int32> pType,
              Pointer<Int32> plHandle,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          Pointer<Utf16> wszPropertyName,
          Pointer<Int32> pType,
          Pointer<Int32> plHandle,
        )
      >()(ptr.ref.lpVtbl, wszPropertyName, pType, plHandle);

  int writePropertyValue(int lHandle, int lNumBytes, Pointer<Uint8> aData) =>
      (ptr.ref.vtable + 28)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Int32 lHandle,
                  Int32 lNumBytes,
                  Pointer<Uint8> aData,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              int lHandle,
              int lNumBytes,
              Pointer<Uint8> aData,
            )
          >()(ptr.ref.lpVtbl, lHandle, lNumBytes, aData);

  int readPropertyValue(
    int lHandle,
    int lBufferSize,
    Pointer<Int32> plNumBytes,
    Pointer<Uint8> aData,
  ) => (ptr.ref.vtable + 29)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Int32 lHandle,
              Int32 lBufferSize,
              Pointer<Int32> plNumBytes,
              Pointer<Uint8> aData,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          int lHandle,
          int lBufferSize,
          Pointer<Int32> plNumBytes,
          Pointer<Uint8> aData,
        )
      >()(ptr.ref.lpVtbl, lHandle, lBufferSize, plNumBytes, aData);

  int readDWORD(int lHandle, Pointer<Uint32> pdw) => (ptr.ref.vtable + 30)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Int32 lHandle, Pointer<Uint32> pdw)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, int lHandle, Pointer<Uint32> pdw)>()(
    ptr.ref.lpVtbl,
    lHandle,
    pdw,
  );

  int writeDWORD(int lHandle, int dw) => (ptr.ref.vtable + 31)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Int32 lHandle, Uint32 dw)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, int lHandle, int dw)>()(
    ptr.ref.lpVtbl,
    lHandle,
    dw,
  );

  int readQWORD(int lHandle, Pointer<Uint64> pqw) => (ptr.ref.vtable + 32)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Int32 lHandle, Pointer<Uint64> pqw)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, int lHandle, Pointer<Uint64> pqw)>()(
    ptr.ref.lpVtbl,
    lHandle,
    pqw,
  );

  int writeQWORD(int lHandle, int pw) => (ptr.ref.vtable + 33)
      .cast<
        Pointer<
          NativeFunction<Int32 Function(Pointer, Int32 lHandle, Uint64 pw)>
        >
      >()
      .value
      .asFunction<int Function(Pointer, int lHandle, int pw)>()(
    ptr.ref.lpVtbl,
    lHandle,
    pw,
  );

  int getPropertyInfoByHandle(
    int lHandle,
    Pointer<Pointer<Utf16>> pstrName,
    Pointer<Int32> pType,
  ) => (ptr.ref.vtable + 34)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Int32 lHandle,
              Pointer<Pointer<Utf16>> pstrName,
              Pointer<Int32> pType,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          int lHandle,
          Pointer<Pointer<Utf16>> pstrName,
          Pointer<Int32> pType,
        )
      >()(ptr.ref.lpVtbl, lHandle, pstrName, pType);

  int lock(int lFlags) => (ptr.ref.vtable + 35)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int32 lFlags)>>>()
      .value
      .asFunction<int Function(Pointer, int lFlags)>()(ptr.ref.lpVtbl, lFlags);

  int unlock(int lFlags) => (ptr.ref.vtable + 36)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int32 lFlags)>>>()
      .value
      .asFunction<int Function(Pointer, int lFlags)>()(ptr.ref.lpVtbl, lFlags);
}
