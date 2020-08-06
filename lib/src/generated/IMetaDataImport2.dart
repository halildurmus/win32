// IMetaDataImport2.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../com/combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';

import 'IMetaDataImport.dart';

/// @nodoc
const IID_IMetaDataImport2 = '{FCE5EFA0-8BBA-4f8E-A036-8F2022B08466}';

typedef _EnumGenericParams_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Uint32 tk,
    Pointer<Uint32> rGenericParams,
    Uint32 cMax,
    Pointer<Uint32> pcGenericParams);
typedef _EnumGenericParams_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    int tk,
    Pointer<Uint32> rGenericParams,
    int cMax,
    Pointer<Uint32> pcGenericParams);

typedef _GetGenericParamProps_Native = Int32 Function(
    Pointer obj,
    Uint32 gp,
    Pointer<Uint32> pulParamSeq,
    Pointer<Uint32> pdwParamFlags,
    Pointer<Uint32> ptOwner,
    Pointer<Uint32> reserved,
    Pointer<Utf16> wzname,
    Uint32 cchName,
    Pointer<Uint32> pchName);
typedef _GetGenericParamProps_Dart = int Function(
    Pointer obj,
    int gp,
    Pointer<Uint32> pulParamSeq,
    Pointer<Uint32> pdwParamFlags,
    Pointer<Uint32> ptOwner,
    Pointer<Uint32> reserved,
    Pointer<Utf16> wzname,
    int cchName,
    Pointer<Uint32> pchName);

typedef _GetMethodSpecProps_Native = Int32 Function(
    Pointer obj,
    Uint32 mi,
    Pointer<Uint32> tkParent,
    Pointer<Uint8> ppvSigBlob,
    Pointer<Uint32> pcbSigBlob);
typedef _GetMethodSpecProps_Dart = int Function(
    Pointer obj,
    int mi,
    Pointer<Uint32> tkParent,
    Pointer<Uint8> ppvSigBlob,
    Pointer<Uint32> pcbSigBlob);

typedef _EnumGenericParamConstraints_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Uint32 tk,
    Pointer<Uint32> rGenericParamConstraints,
    Uint32 cMax,
    Pointer<Uint32> pcGenericParamConstraints);
typedef _EnumGenericParamConstraints_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    int tk,
    Pointer<Uint32> rGenericParamConstraints,
    int cMax,
    Pointer<Uint32> pcGenericParamConstraints);

typedef _GetGenericParamConstraintProps_Native = Int32 Function(
    Pointer obj,
    Uint32 gpc,
    Pointer<Uint32> ptGenericParam,
    Pointer<Uint32> ptkConstraintType);
typedef _GetGenericParamConstraintProps_Dart = int Function(Pointer obj,
    int gpc, Pointer<Uint32> ptGenericParam, Pointer<Uint32> ptkConstraintType);

typedef _GetPEKind_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pdwPEKind, Pointer<Uint32> pdwMAchine);
typedef _GetPEKind_Dart = int Function(
    Pointer obj, Pointer<Uint32> pdwPEKind, Pointer<Uint32> pdwMAchine);

typedef _GetVersionString_Native = Int32 Function(Pointer obj,
    Pointer<Utf16> pwzBuf, Uint32 ccBufSize, Pointer<Uint32> pccBufSize);
typedef _GetVersionString_Dart = int Function(Pointer obj,
    Pointer<Utf16> pwzBuf, int ccBufSize, Pointer<Uint32> pccBufSize);

typedef _EnumMethodSpecs_Native = Int32 Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    Uint32 tk,
    Pointer<Uint32> rMethodSpecs,
    Uint32 cMax,
    Pointer<Uint32> pcMethodSpecs);
typedef _EnumMethodSpecs_Dart = int Function(
    Pointer obj,
    Pointer<IntPtr> phEnum,
    int tk,
    Pointer<Uint32> rMethodSpecs,
    int cMax,
    Pointer<Uint32> pcMethodSpecs);

/// {@category Interface}
/// {@category com}
class IMetaDataImport2 extends IMetaDataImport {
  // vtable begins at 65, ends at 72

  IMetaDataImport2(Pointer<COMObject> ptr) : super(ptr);

  int EnumGenericParams(
          Pointer<IntPtr> phEnum,
          int tk,
          Pointer<Uint32> rGenericParams,
          int cMax,
          Pointer<Uint32> pcGenericParams) =>
      Pointer<NativeFunction<_EnumGenericParams_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(65).value)
              .asFunction<_EnumGenericParams_Dart>()(
          ptr.ref.lpVtbl, phEnum, tk, rGenericParams, cMax, pcGenericParams);

  int GetGenericParamProps(
          int gp,
          Pointer<Uint32> pulParamSeq,
          Pointer<Uint32> pdwParamFlags,
          Pointer<Uint32> ptOwner,
          Pointer<Uint32> reserved,
          Pointer<Utf16> wzname,
          int cchName,
          Pointer<Uint32> pchName) =>
      Pointer<NativeFunction<_GetGenericParamProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(66).value)
              .asFunction<_GetGenericParamProps_Dart>()(
          ptr.ref.lpVtbl,
          gp,
          pulParamSeq,
          pdwParamFlags,
          ptOwner,
          reserved,
          wzname,
          cchName,
          pchName);

  int GetMethodSpecProps(int mi, Pointer<Uint32> tkParent,
          Pointer<Uint8> ppvSigBlob, Pointer<Uint32> pcbSigBlob) =>
      Pointer<NativeFunction<_GetMethodSpecProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(67).value)
              .asFunction<_GetMethodSpecProps_Dart>()(
          ptr.ref.lpVtbl, mi, tkParent, ppvSigBlob, pcbSigBlob);

  int EnumGenericParamConstraints(
          Pointer<IntPtr> phEnum,
          int tk,
          Pointer<Uint32> rGenericParamConstraints,
          int cMax,
          Pointer<Uint32> pcGenericParamConstraints) =>
      Pointer<NativeFunction<_EnumGenericParamConstraints_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(68).value)
              .asFunction<_EnumGenericParamConstraints_Dart>()(
          ptr.ref.lpVtbl,
          phEnum,
          tk,
          rGenericParamConstraints,
          cMax,
          pcGenericParamConstraints);

  int GetGenericParamConstraintProps(int gpc, Pointer<Uint32> ptGenericParam,
          Pointer<Uint32> ptkConstraintType) =>
      Pointer<
                      NativeFunction<
                          _GetGenericParamConstraintProps_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(69).value)
              .asFunction<_GetGenericParamConstraintProps_Dart>()(
          ptr.ref.lpVtbl, gpc, ptGenericParam, ptkConstraintType);

  int GetPEKind(Pointer<Uint32> pdwPEKind, Pointer<Uint32> pdwMAchine) =>
      Pointer<NativeFunction<_GetPEKind_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(70).value)
          .asFunction<_GetPEKind_Dart>()(ptr.ref.lpVtbl, pdwPEKind, pdwMAchine);

  int GetVersionString(
          Pointer<Utf16> pwzBuf, int ccBufSize, Pointer<Uint32> pccBufSize) =>
      Pointer<NativeFunction<_GetVersionString_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(71).value)
              .asFunction<_GetVersionString_Dart>()(
          ptr.ref.lpVtbl, pwzBuf, ccBufSize, pccBufSize);

  int EnumMethodSpecs(
          Pointer<IntPtr> phEnum,
          int tk,
          Pointer<Uint32> rMethodSpecs,
          int cMax,
          Pointer<Uint32> pcMethodSpecs) =>
      Pointer<NativeFunction<_EnumMethodSpecs_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(72).value)
              .asFunction<_EnumMethodSpecs_Dart>()(
          ptr.ref.lpVtbl, phEnum, tk, rMethodSpecs, cMax, pcMethodSpecs);
}
