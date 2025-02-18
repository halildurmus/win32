// iwbemcontext.dart

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
const IID_IWbemContext = '{44aca674-e8fc-11d0-a07c-00c04fb68820}';

/// The IWbemContext interface is optionally used to communicate additional
/// context information to providers when submitting `IWbemServices` calls
/// to WMI. All primary calls in `IWbemServices` take an optional parameter
/// pointing to an object of this type.
///
/// {@category com}
class IWbemContext extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IWbemContext(super.ptr);

  factory IWbemContext.from(IUnknown interface) =>
      IWbemContext(interface.toInterface(IID_IWbemContext));

  int clone(Pointer<Pointer<COMObject>> ppNewCopy) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<COMObject>> ppNewCopy)
          >
        >
      >()
      .value
      .asFunction<
        int Function(Pointer, Pointer<Pointer<COMObject>> ppNewCopy)
      >()(ptr.ref.lpVtbl, ppNewCopy);

  int getNames(int lFlags, Pointer<Pointer<SAFEARRAY>> pNames) =>
      (ptr.ref.vtable + 4)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Int32 lFlags,
                  Pointer<Pointer<SAFEARRAY>> pNames,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              int lFlags,
              Pointer<Pointer<SAFEARRAY>> pNames,
            )
          >()(ptr.ref.lpVtbl, lFlags, pNames);

  int beginEnumeration(int lFlags) => (ptr.ref.vtable + 5)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer, Int32 lFlags)>>>()
      .value
      .asFunction<int Function(Pointer, int lFlags)>()(ptr.ref.lpVtbl, lFlags);

  int next(
    int lFlags,
    Pointer<Pointer<Utf16>> pstrName,
    Pointer<VARIANT> pValue,
  ) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(
              Pointer,
              Int32 lFlags,
              Pointer<Pointer<Utf16>> pstrName,
              Pointer<VARIANT> pValue,
            )
          >
        >
      >()
      .value
      .asFunction<
        int Function(
          Pointer,
          int lFlags,
          Pointer<Pointer<Utf16>> pstrName,
          Pointer<VARIANT> pValue,
        )
      >()(ptr.ref.lpVtbl, lFlags, pstrName, pValue);

  int endEnumeration() => (ptr.ref.vtable + 7)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);

  int setValue(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT> pValue) =>
      (ptr.ref.vtable + 8)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Utf16> wszName,
                  Int32 lFlags,
                  Pointer<VARIANT> pValue,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<Utf16> wszName,
              int lFlags,
              Pointer<VARIANT> pValue,
            )
          >()(ptr.ref.lpVtbl, wszName, lFlags, pValue);

  int getValue(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT> pValue) =>
      (ptr.ref.vtable + 9)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Utf16> wszName,
                  Int32 lFlags,
                  Pointer<VARIANT> pValue,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<Utf16> wszName,
              int lFlags,
              Pointer<VARIANT> pValue,
            )
          >()(ptr.ref.lpVtbl, wszName, lFlags, pValue);

  int deleteValue(Pointer<Utf16> wszName, int lFlags) => (ptr.ref.vtable + 10)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Utf16> wszName, Int32 lFlags)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Utf16> wszName, int lFlags)>()(
    ptr.ref.lpVtbl,
    wszName,
    lFlags,
  );

  int deleteAll() => (ptr.ref.vtable + 11)
      .cast<Pointer<NativeFunction<Int32 Function(Pointer)>>>()
      .value
      .asFunction<int Function(Pointer)>()(ptr.ref.lpVtbl);
}

/// @nodoc
const CLSID_WbemContext = '{674b6698-ee92-11d0-ad71-00c04fd8fdff}';

/// {@category com}
class WbemContext extends IWbemContext {
  WbemContext(super.ptr);

  factory WbemContext.createInstance() =>
      WbemContext(COMObject.createFromID(CLSID_WbemContext, IID_IWbemContext));
}
