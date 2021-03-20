// IWbemContext.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const CLSID_WbemContext = '{674B6698-EE92-11D0-AD71-00C04FD8FDFF}';

/// @nodoc
const IID_IWbemContext = '{44ACA674-E8FC-11D0-A07C-00C04FB68820}';

typedef _Clone_Native = Int32 Function(Pointer obj, Pointer<Pointer> ppNewCopy);
typedef _Clone_Dart = int Function(Pointer obj, Pointer<Pointer> ppNewCopy);

typedef _GetNames_Native = Int32 Function(
    Pointer obj, Int32 lFlags, Pointer<Pointer<SAFEARRAY>> pNames);
typedef _GetNames_Dart = int Function(
    Pointer obj, int lFlags, Pointer<Pointer<SAFEARRAY>> pNames);

typedef _BeginEnumeration_Native = Int32 Function(Pointer obj, Int32 lFlags);
typedef _BeginEnumeration_Dart = int Function(Pointer obj, int lFlags);

typedef _Next_Native = Int32 Function(Pointer obj, Int32 lFlags,
    Pointer<Pointer<Utf16>> pstrName, Pointer<VARIANT> pValue);
typedef _Next_Dart = int Function(Pointer obj, int lFlags,
    Pointer<Pointer<Utf16>> pstrName, Pointer<VARIANT> pValue);

typedef _EndEnumeration_Native = Int32 Function(Pointer obj);
typedef _EndEnumeration_Dart = int Function(Pointer obj);

typedef _SetValue_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> wszName, Int32 lFlags, Pointer<VARIANT> pValue);
typedef _SetValue_Dart = int Function(
    Pointer obj, Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT> pValue);

typedef _GetValue_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> wszName, Int32 lFlags, Pointer<VARIANT> pValue);
typedef _GetValue_Dart = int Function(
    Pointer obj, Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT> pValue);

typedef _DeleteValue_Native = Int32 Function(
    Pointer obj, Pointer<Utf16> wszName, Int32 lFlags);
typedef _DeleteValue_Dart = int Function(
    Pointer obj, Pointer<Utf16> wszName, int lFlags);

typedef _DeleteAll_Native = Int32 Function(Pointer obj);
typedef _DeleteAll_Dart = int Function(Pointer obj);

/// {@category Interface}
/// {@category com}
class IWbemContext extends IUnknown {
  // vtable begins at 3, ends at 11

  IWbemContext(Pointer<COMObject> ptr) : super(ptr);

  int Clone(Pointer<Pointer> ppNewCopy) =>
      Pointer<NativeFunction<_Clone_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_Clone_Dart>()(ptr.ref.lpVtbl, ppNewCopy);

  int GetNames(int lFlags, Pointer<Pointer<SAFEARRAY>> pNames) =>
      Pointer<NativeFunction<_GetNames_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_GetNames_Dart>()(ptr.ref.lpVtbl, lFlags, pNames);

  int BeginEnumeration(int lFlags) =>
      Pointer<NativeFunction<_BeginEnumeration_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_BeginEnumeration_Dart>()(ptr.ref.lpVtbl, lFlags);

  int Next(int lFlags, Pointer<Pointer<Utf16>> pstrName,
          Pointer<VARIANT> pValue) =>
      Pointer<NativeFunction<_Next_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_Next_Dart>()(ptr.ref.lpVtbl, lFlags, pstrName, pValue);

  int EndEnumeration() =>
      Pointer<NativeFunction<_EndEnumeration_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_EndEnumeration_Dart>()(ptr.ref.lpVtbl);

  int SetValue(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT> pValue) =>
      Pointer<NativeFunction<_SetValue_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(8).value)
              .asFunction<_SetValue_Dart>()(
          ptr.ref.lpVtbl, wszName, lFlags, pValue);

  int GetValue(Pointer<Utf16> wszName, int lFlags, Pointer<VARIANT> pValue) =>
      Pointer<NativeFunction<_GetValue_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(9).value)
              .asFunction<_GetValue_Dart>()(
          ptr.ref.lpVtbl, wszName, lFlags, pValue);

  int DeleteValue(Pointer<Utf16> wszName, int lFlags) =>
      Pointer<NativeFunction<_DeleteValue_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(10).value)
          .asFunction<_DeleteValue_Dart>()(ptr.ref.lpVtbl, wszName, lFlags);

  int DeleteAll() => Pointer<NativeFunction<_DeleteAll_Native>>.fromAddress(
          ptr.ref.vtable.elementAt(11).value)
      .asFunction<_DeleteAll_Dart>()(ptr.ref.lpVtbl);
}

/// {@category com}
class WbemContext extends IWbemContext {
  WbemContext(Pointer<COMObject> ptr) : super(ptr);

  factory WbemContext.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WbemContext);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWbemContext);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WbemContext(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
