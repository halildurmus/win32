// ITypeInfo.dart

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

/// @nodoc
const IID_ITypeInfo = '{00020401-0000-0000-C000-000000000046}';

typedef _GetTypeAttr_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<TYPEATTR>> ppTypeAttr);
typedef _GetTypeAttr_Dart = int Function(
    Pointer obj, Pointer<Pointer<TYPEATTR>> ppTypeAttr);

typedef _GetTypeComp_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> ppTComp);
typedef _GetTypeComp_Dart = int Function(Pointer obj, Pointer<Pointer> ppTComp);

typedef _GetFuncDesc_Native = Int32 Function(
    Pointer obj, Uint32 index, Pointer<Pointer<FUNCDESC>> ppFuncDesc);
typedef _GetFuncDesc_Dart = int Function(
    Pointer obj, int index, Pointer<Pointer<FUNCDESC>> ppFuncDesc);

typedef _GetVarDesc_Native = Int32 Function(
    Pointer obj, Uint32 index, Pointer<Pointer<VARDESC>> ppVarDesc);
typedef _GetVarDesc_Dart = int Function(
    Pointer obj, int index, Pointer<Pointer<VARDESC>> ppVarDesc);

typedef _GetNames_Native = Int32 Function(
    Pointer obj,
    Int32 memid,
    Pointer<Pointer<Utf16>> rgBstrNames,
    Uint32 cMaxNames,
    Pointer<Uint32> pcNames);
typedef _GetNames_Dart = int Function(
    Pointer obj,
    int memid,
    Pointer<Pointer<Utf16>> rgBstrNames,
    int cMaxNames,
    Pointer<Uint32> pcNames);

typedef _GetRefTypeOfImplType_Native = Int32 Function(
    Pointer obj, Uint32 index, Pointer<Uint32> pRefType);
typedef _GetRefTypeOfImplType_Dart = int Function(
    Pointer obj, int index, Pointer<Uint32> pRefType);

typedef _GetImplTypeFlags_Native = Int32 Function(
    Pointer obj, Uint32 index, Pointer<Int32> pImplTypeFlags);
typedef _GetImplTypeFlags_Dart = int Function(
    Pointer obj, int index, Pointer<Int32> pImplTypeFlags);

typedef _GetIDsOfNames_Native = Int32 Function(Pointer obj,
    Pointer<Pointer<Utf16>> rgszNames, Uint32 cNames, Pointer<Int32> pMemId);
typedef _GetIDsOfNames_Dart = int Function(Pointer obj,
    Pointer<Pointer<Utf16>> rgszNames, int cNames, Pointer<Int32> pMemId);

typedef _Invoke_Native = Int32 Function(
    Pointer obj,
    Pointer pvInstance,
    Int32 memid,
    Uint16 wFlags,
    Pointer<DISPPARAMS> pDispParams,
    Pointer<VARIANT> pVarResult,
    Pointer<EXCEPINFO> pExcepInfo,
    Pointer<Uint32> puArgErr);
typedef _Invoke_Dart = int Function(
    Pointer obj,
    Pointer pvInstance,
    int memid,
    int wFlags,
    Pointer<DISPPARAMS> pDispParams,
    Pointer<VARIANT> pVarResult,
    Pointer<EXCEPINFO> pExcepInfo,
    Pointer<Uint32> puArgErr);

typedef _GetDocumentation_Native = Int32 Function(
    Pointer obj,
    Int32 memid,
    Pointer<Pointer<Utf16>> pBstrName,
    Pointer<Pointer<Utf16>> pBstrDocString,
    Pointer<Uint32> pdwHelpContext,
    Pointer<Pointer<Utf16>> pBstrHelpFile);
typedef _GetDocumentation_Dart = int Function(
    Pointer obj,
    int memid,
    Pointer<Pointer<Utf16>> pBstrName,
    Pointer<Pointer<Utf16>> pBstrDocString,
    Pointer<Uint32> pdwHelpContext,
    Pointer<Pointer<Utf16>> pBstrHelpFile);

typedef _GetDllEntry_Native = Int32 Function(
    Pointer obj,
    Int32 memid,
    Uint32 invKind,
    Pointer<Pointer<Utf16>> pBstrDllName,
    Pointer<Pointer<Utf16>> pBstrName,
    Pointer<Uint16> pwOrdinal);
typedef _GetDllEntry_Dart = int Function(
    Pointer obj,
    int memid,
    int invKind,
    Pointer<Pointer<Utf16>> pBstrDllName,
    Pointer<Pointer<Utf16>> pBstrName,
    Pointer<Uint16> pwOrdinal);

typedef _GetRefTypeInfo_Native = Int32 Function(
    Pointer obj, Uint32 hRefType, Pointer<Pointer> ppTInfo);
typedef _GetRefTypeInfo_Dart = int Function(
    Pointer obj, int hRefType, Pointer<Pointer> ppTInfo);

typedef _AddressOfMember_Native = Int32 Function(
    Pointer obj, Int32 memid, Uint32 invKind, Pointer<Pointer> ppv);
typedef _AddressOfMember_Dart = int Function(
    Pointer obj, int memid, int invKind, Pointer<Pointer> ppv);

typedef _CreateInstance_Native = Int32 Function(Pointer obj, Pointer pUnkOuter,
    Pointer<GUID> riid, Pointer<Pointer> ppvObj);
typedef _CreateInstance_Dart = int Function(Pointer obj, Pointer pUnkOuter,
    Pointer<GUID> riid, Pointer<Pointer> ppvObj);

typedef _GetMops_Native = Int32 Function(
    Pointer obj, Int32 memid, Pointer<Pointer<Utf16>> pBstrMops);
typedef _GetMops_Dart = int Function(
    Pointer obj, int memid, Pointer<Pointer<Utf16>> pBstrMops);

typedef _GetContainingTypeLib_Native = Int32 Function(
    Pointer obj, Pointer<Pointer> ppTLib, Pointer<Uint32> pIndex);
typedef _GetContainingTypeLib_Dart = int Function(
    Pointer obj, Pointer<Pointer> ppTLib, Pointer<Uint32> pIndex);

typedef _ReleaseTypeAttr_Native = Void Function(
    Pointer obj, Pointer<TYPEATTR> pTypeAttr);
typedef _ReleaseTypeAttr_Dart = void Function(
    Pointer obj, Pointer<TYPEATTR> pTypeAttr);

typedef _ReleaseFuncDesc_Native = Void Function(
    Pointer obj, Pointer<FUNCDESC> pFuncDesc);
typedef _ReleaseFuncDesc_Dart = void Function(
    Pointer obj, Pointer<FUNCDESC> pFuncDesc);

typedef _ReleaseVarDesc_Native = Void Function(
    Pointer obj, Pointer<VARDESC> pVarDesc);
typedef _ReleaseVarDesc_Dart = void Function(
    Pointer obj, Pointer<VARDESC> pVarDesc);

/// {@category Interface}
/// {@category com}
class ITypeInfo extends IUnknown {
  // vtable begins at 3, ends at 21

  ITypeInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetTypeAttr(Pointer<Pointer<TYPEATTR>> ppTypeAttr) =>
      Pointer<NativeFunction<_GetTypeAttr_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_GetTypeAttr_Dart>()(ptr.ref.lpVtbl, ppTypeAttr);

  int GetTypeComp(Pointer<Pointer> ppTComp) =>
      Pointer<NativeFunction<_GetTypeComp_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_GetTypeComp_Dart>()(ptr.ref.lpVtbl, ppTComp);

  int GetFuncDesc(int index, Pointer<Pointer<FUNCDESC>> ppFuncDesc) =>
      Pointer<NativeFunction<_GetFuncDesc_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_GetFuncDesc_Dart>()(ptr.ref.lpVtbl, index, ppFuncDesc);

  int GetVarDesc(int index, Pointer<Pointer<VARDESC>> ppVarDesc) =>
      Pointer<NativeFunction<_GetVarDesc_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_GetVarDesc_Dart>()(ptr.ref.lpVtbl, index, ppVarDesc);

  int GetNames(int memid, Pointer<Pointer<Utf16>> rgBstrNames, int cMaxNames,
          Pointer<Uint32> pcNames) =>
      Pointer<NativeFunction<_GetNames_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(7).value)
              .asFunction<_GetNames_Dart>()(
          ptr.ref.lpVtbl, memid, rgBstrNames, cMaxNames, pcNames);

  int GetRefTypeOfImplType(int index, Pointer<Uint32> pRefType) =>
      Pointer<NativeFunction<_GetRefTypeOfImplType_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(8).value)
              .asFunction<_GetRefTypeOfImplType_Dart>()(
          ptr.ref.lpVtbl, index, pRefType);

  int GetImplTypeFlags(int index, Pointer<Int32> pImplTypeFlags) =>
      Pointer<NativeFunction<_GetImplTypeFlags_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(9).value)
              .asFunction<_GetImplTypeFlags_Dart>()(
          ptr.ref.lpVtbl, index, pImplTypeFlags);

  int GetIDsOfNames(Pointer<Pointer<Utf16>> rgszNames, int cNames,
          Pointer<Int32> pMemId) =>
      Pointer<NativeFunction<_GetIDsOfNames_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(10).value)
              .asFunction<_GetIDsOfNames_Dart>()(
          ptr.ref.lpVtbl, rgszNames, cNames, pMemId);

  int Invoke(
          Pointer pvInstance,
          int memid,
          int wFlags,
          Pointer<DISPPARAMS> pDispParams,
          Pointer<VARIANT> pVarResult,
          Pointer<EXCEPINFO> pExcepInfo,
          Pointer<Uint32> puArgErr) =>
      Pointer<NativeFunction<_Invoke_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(11).value)
              .asFunction<_Invoke_Dart>()(ptr.ref.lpVtbl, pvInstance, memid,
          wFlags, pDispParams, pVarResult, pExcepInfo, puArgErr);

  int GetDocumentation(
          int memid,
          Pointer<Pointer<Utf16>> pBstrName,
          Pointer<Pointer<Utf16>> pBstrDocString,
          Pointer<Uint32> pdwHelpContext,
          Pointer<Pointer<Utf16>> pBstrHelpFile) =>
      Pointer<NativeFunction<_GetDocumentation_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(12).value)
              .asFunction<_GetDocumentation_Dart>()(ptr.ref.lpVtbl, memid,
          pBstrName, pBstrDocString, pdwHelpContext, pBstrHelpFile);

  int GetDllEntry(int memid, int invKind, Pointer<Pointer<Utf16>> pBstrDllName,
          Pointer<Pointer<Utf16>> pBstrName, Pointer<Uint16> pwOrdinal) =>
      Pointer<NativeFunction<_GetDllEntry_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(13).value)
              .asFunction<_GetDllEntry_Dart>()(
          ptr.ref.lpVtbl, memid, invKind, pBstrDllName, pBstrName, pwOrdinal);

  int GetRefTypeInfo(int hRefType, Pointer<Pointer> ppTInfo) =>
      Pointer<NativeFunction<_GetRefTypeInfo_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(14).value)
              .asFunction<_GetRefTypeInfo_Dart>()(
          ptr.ref.lpVtbl, hRefType, ppTInfo);

  int AddressOfMember(int memid, int invKind, Pointer<Pointer> ppv) =>
      Pointer<NativeFunction<_AddressOfMember_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(15).value)
              .asFunction<_AddressOfMember_Dart>()(
          ptr.ref.lpVtbl, memid, invKind, ppv);

  int CreateInstance(
          Pointer pUnkOuter, Pointer<GUID> riid, Pointer<Pointer> ppvObj) =>
      Pointer<NativeFunction<_CreateInstance_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(16).value)
              .asFunction<_CreateInstance_Dart>()(
          ptr.ref.lpVtbl, pUnkOuter, riid, ppvObj);

  int GetMops(int memid, Pointer<Pointer<Utf16>> pBstrMops) =>
      Pointer<NativeFunction<_GetMops_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(17).value)
          .asFunction<_GetMops_Dart>()(ptr.ref.lpVtbl, memid, pBstrMops);

  int GetContainingTypeLib(Pointer<Pointer> ppTLib, Pointer<Uint32> pIndex) =>
      Pointer<NativeFunction<_GetContainingTypeLib_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(18).value)
              .asFunction<_GetContainingTypeLib_Dart>()(
          ptr.ref.lpVtbl, ppTLib, pIndex);

  void ReleaseTypeAttr(Pointer<TYPEATTR> pTypeAttr) =>
      Pointer<NativeFunction<_ReleaseTypeAttr_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(19).value)
          .asFunction<_ReleaseTypeAttr_Dart>()(ptr.ref.lpVtbl, pTypeAttr);

  void ReleaseFuncDesc(Pointer<FUNCDESC> pFuncDesc) =>
      Pointer<NativeFunction<_ReleaseFuncDesc_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(20).value)
          .asFunction<_ReleaseFuncDesc_Dart>()(ptr.ref.lpVtbl, pFuncDesc);

  void ReleaseVarDesc(Pointer<VARDESC> pVarDesc) =>
      Pointer<NativeFunction<_ReleaseVarDesc_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(21).value)
          .asFunction<_ReleaseVarDesc_Dart>()(ptr.ref.lpVtbl, pVarDesc);
}
