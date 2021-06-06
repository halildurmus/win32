// IDispatch.dart

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
const IID_IDispatch = '{00020400-0000-0000-C000-000000000046}';

typedef _GetTypeInfoCount_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pctinfo);
typedef _GetTypeInfoCount_Dart = int Function(
    Pointer obj, Pointer<Uint32> pctinfo);

typedef _GetTypeInfo_Native = Int32 Function(
    Pointer obj, Uint32 iTInfo, Uint32 lcid, Pointer<Pointer> ppTInfo);
typedef _GetTypeInfo_Dart = int Function(
    Pointer obj, int iTInfo, int lcid, Pointer<Pointer> ppTInfo);

typedef _GetIDsOfNames_Native = Int32 Function(
    Pointer obj,
    Pointer<GUID> riid,
    Pointer<Pointer<Utf16>> rgszNames,
    Uint32 cNames,
    Uint32 lcid,
    Pointer<Int32> rgDispId);
typedef _GetIDsOfNames_Dart = int Function(
    Pointer obj,
    Pointer<GUID> riid,
    Pointer<Pointer<Utf16>> rgszNames,
    int cNames,
    int lcid,
    Pointer<Int32> rgDispId);

typedef _Invoke_Native = Int32 Function(
    Pointer obj,
    Int32 dispIdMember,
    Pointer<GUID> riid,
    Uint32 lcid,
    Uint16 wFlags,
    Pointer<DISPPARAMS> pDispParams,
    Pointer<VARIANT> pVarResult,
    Pointer<EXCEPINFO> pExcepInfo,
    Pointer<Uint32> puArgErr);
typedef _Invoke_Dart = int Function(
    Pointer obj,
    int dispIdMember,
    Pointer<GUID> riid,
    int lcid,
    int wFlags,
    Pointer<DISPPARAMS> pDispParams,
    Pointer<VARIANT> pVarResult,
    Pointer<EXCEPINFO> pExcepInfo,
    Pointer<Uint32> puArgErr);

/// {@category Interface}
/// {@category com}
class IDispatch extends IUnknown {
  // vtable begins at 3, ends at 6

  IDispatch(Pointer<COMObject> ptr) : super(ptr);

  int GetTypeInfoCount(Pointer<Uint32> pctinfo) =>
      Pointer<NativeFunction<_GetTypeInfoCount_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_GetTypeInfoCount_Dart>()(ptr.ref.lpVtbl, pctinfo);

  int GetTypeInfo(int iTInfo, int lcid, Pointer<Pointer> ppTInfo) =>
      Pointer<NativeFunction<_GetTypeInfo_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(4).value)
              .asFunction<_GetTypeInfo_Dart>()(
          ptr.ref.lpVtbl, iTInfo, lcid, ppTInfo);

  int GetIDsOfNames(Pointer<GUID> riid, Pointer<Pointer<Utf16>> rgszNames,
          int cNames, int lcid, Pointer<Int32> rgDispId) =>
      Pointer<NativeFunction<_GetIDsOfNames_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(5).value)
              .asFunction<_GetIDsOfNames_Dart>()(
          ptr.ref.lpVtbl, riid, rgszNames, cNames, lcid, rgDispId);

  int Invoke(
          int dispIdMember,
          Pointer<GUID> riid,
          int lcid,
          int wFlags,
          Pointer<DISPPARAMS> pDispParams,
          Pointer<VARIANT> pVarResult,
          Pointer<EXCEPINFO> pExcepInfo,
          Pointer<Uint32> puArgErr) =>
      Pointer<NativeFunction<_Invoke_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(6).value)
              .asFunction<_Invoke_Dart>()(ptr.ref.lpVtbl, dispIdMember, riid,
          lcid, wFlags, pDispParams, pVarResult, pExcepInfo, puArgErr);
}
