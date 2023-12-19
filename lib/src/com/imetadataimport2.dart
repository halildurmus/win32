// imetadataimport2.dart

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
import 'imetadataimport.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IMetaDataImport2 = '{fce5efa0-8bba-4f8e-a036-8f2022b08466}';

/// Extends the IMetaDataImport interface to provide the capability of
/// working with generic types.
///
/// {@category com}
class IMetaDataImport2 extends IMetaDataImport {
  // vtable begins at 65, is 8 entries long.
  IMetaDataImport2(super.ptr);

  factory IMetaDataImport2.from(IUnknown interface) =>
      IMetaDataImport2(interface.toInterface(IID_IMetaDataImport2));

  int enumGenericParams(
          Pointer<Pointer> phEnum,
          int tk,
          Pointer<Uint32> rGenericParams,
          int cMax,
          Pointer<Uint32> pcGenericParams) =>
      ptr.ref.vtable
              .elementAt(65)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Uint32 tk,
                              Pointer<Uint32> rGenericParams,
                              Uint32 cMax,
                              Pointer<Uint32> pcGenericParams)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      int tk,
                      Pointer<Uint32> rGenericParams,
                      int cMax,
                      Pointer<Uint32> pcGenericParams)>()(
          ptr.ref.lpVtbl, phEnum, tk, rGenericParams, cMax, pcGenericParams);

  int getGenericParamProps(
          int gp,
          Pointer<Uint32> pulParamSeq,
          Pointer<Uint32> pdwParamFlags,
          Pointer<Uint32> ptOwner,
          Pointer<Uint32> reserved,
          Pointer<Utf16> wzname,
          int cchName,
          Pointer<Uint32> pchName) =>
      ptr.ref.vtable
              .elementAt(66)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 gp,
                              Pointer<Uint32> pulParamSeq,
                              Pointer<Uint32> pdwParamFlags,
                              Pointer<Uint32> ptOwner,
                              Pointer<Uint32> reserved,
                              Pointer<Utf16> wzname,
                              Uint32 cchName,
                              Pointer<Uint32> pchName)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int gp,
                      Pointer<Uint32> pulParamSeq,
                      Pointer<Uint32> pdwParamFlags,
                      Pointer<Uint32> ptOwner,
                      Pointer<Uint32> reserved,
                      Pointer<Utf16> wzname,
                      int cchName,
                      Pointer<Uint32> pchName)>()(
          ptr.ref.lpVtbl,
          gp,
          pulParamSeq,
          pdwParamFlags,
          ptOwner,
          reserved,
          wzname,
          cchName,
          pchName);

  int getMethodSpecProps(int mi, Pointer<Uint32> tkParent,
          Pointer<Pointer<Uint8>> ppvSigBlob, Pointer<Uint32> pcbSigBlob) =>
      ptr.ref.vtable
              .elementAt(67)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 mi,
                              Pointer<Uint32> tkParent,
                              Pointer<Pointer<Uint8>> ppvSigBlob,
                              Pointer<Uint32> pcbSigBlob)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      int mi,
                      Pointer<Uint32> tkParent,
                      Pointer<Pointer<Uint8>> ppvSigBlob,
                      Pointer<Uint32> pcbSigBlob)>()(
          ptr.ref.lpVtbl, mi, tkParent, ppvSigBlob, pcbSigBlob);

  int enumGenericParamConstraints(
          Pointer<Pointer> phEnum,
          int tk,
          Pointer<Uint32> rGenericParamConstraints,
          int cMax,
          Pointer<Uint32> pcGenericParamConstraints) =>
      ptr.ref.vtable
              .elementAt(68)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Uint32 tk,
                              Pointer<Uint32> rGenericParamConstraints,
                              Uint32 cMax,
                              Pointer<Uint32> pcGenericParamConstraints)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      int tk,
                      Pointer<Uint32> rGenericParamConstraints,
                      int cMax,
                      Pointer<Uint32> pcGenericParamConstraints)>()(
          ptr.ref.lpVtbl,
          phEnum,
          tk,
          rGenericParamConstraints,
          cMax,
          pcGenericParamConstraints);

  int getGenericParamConstraintProps(int gpc, Pointer<Uint32> ptGenericParam,
          Pointer<Uint32> ptkConstraintType) =>
      ptr.ref.vtable
              .elementAt(69)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Uint32 gpc,
                              Pointer<Uint32> ptGenericParam,
                              Pointer<Uint32> ptkConstraintType)>>>()
              .value
              .asFunction<
                  int Function(Pointer, int gpc, Pointer<Uint32> ptGenericParam,
                      Pointer<Uint32> ptkConstraintType)>()(
          ptr.ref.lpVtbl, gpc, ptGenericParam, ptkConstraintType);

  int getPEKind(Pointer<Uint32> pdwPEKind, Pointer<Uint32> pdwMAchine) => ptr
          .ref.vtable
          .elementAt(70)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(Pointer, Pointer<Uint32> pdwPEKind,
                          Pointer<Uint32> pdwMAchine)>>>()
          .value
          .asFunction<
              int Function(Pointer, Pointer<Uint32> pdwPEKind,
                  Pointer<Uint32> pdwMAchine)>()(
      ptr.ref.lpVtbl, pdwPEKind, pdwMAchine);

  int getVersionString(
          Pointer<Utf16> pwzBuf, int ccBufSize, Pointer<Uint32> pccBufSize) =>
      ptr.ref.vtable
              .elementAt(71)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(Pointer, Pointer<Utf16> pwzBuf,
                              Uint32 ccBufSize, Pointer<Uint32> pccBufSize)>>>()
              .value
              .asFunction<
                  int Function(Pointer, Pointer<Utf16> pwzBuf, int ccBufSize,
                      Pointer<Uint32> pccBufSize)>()(
          ptr.ref.lpVtbl, pwzBuf, ccBufSize, pccBufSize);

  int enumMethodSpecs(
          Pointer<Pointer> phEnum,
          int tk,
          Pointer<Uint32> rMethodSpecs,
          int cMax,
          Pointer<Uint32> pcMethodSpecs) =>
      ptr.ref.vtable
              .elementAt(72)
              .cast<
                  Pointer<
                      NativeFunction<
                          Int32 Function(
                              Pointer,
                              Pointer<Pointer> phEnum,
                              Uint32 tk,
                              Pointer<Uint32> rMethodSpecs,
                              Uint32 cMax,
                              Pointer<Uint32> pcMethodSpecs)>>>()
              .value
              .asFunction<
                  int Function(
                      Pointer,
                      Pointer<Pointer> phEnum,
                      int tk,
                      Pointer<Uint32> rMethodSpecs,
                      int cMax,
                      Pointer<Uint32> pcMethodSpecs)>()(
          ptr.ref.lpVtbl, phEnum, tk, rMethodSpecs, cMax, pcMethodSpecs);
}
