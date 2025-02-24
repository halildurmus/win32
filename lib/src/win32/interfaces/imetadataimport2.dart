// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

import '../exception.dart';
import '../guid.dart';
import '../macros.dart';
import '../structs.dart';
import '../types.dart';
import 'imetadataimport.dart';

final IID_IMetaDataImport2 = Guid.fromComponents(
  0xfce5efa0,
  0x8bba,
  0x4f8e,
  Uint8List.fromList(const [0xa0, 0x36, 0x8f, 0x20, 0x22, 0xb0, 0x84, 0x66]),
);

class IMetaDataImport2 extends IMetaDataImport {
  IMetaDataImport2(super.ptr)
    : _vtable = ptr.value.cast<IMetaDataImport2Vtbl>().ref;

  final IMetaDataImport2Vtbl _vtable;
  late final _EnumGenericParamsFn =
      _vtable.EnumGenericParams.asFunction<
        int Function(
          VTablePointer,
          Pointer<Pointer>,
          int,
          Pointer<Uint32>,
          int,
          Pointer<Uint32>,
        )
      >();
  late final _GetGenericParamPropsFn =
      _vtable.GetGenericParamProps.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<Uint32>,
          Pointer<Uint32>,
          Pointer<Uint32>,
          Pointer<Uint32>,
          PWSTR,
          int,
          Pointer<Uint32>,
        )
      >();
  late final _GetMethodSpecPropsFn =
      _vtable.GetMethodSpecProps.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<Uint32>,
          Pointer<Pointer<Uint8>>,
          Pointer<Uint32>,
        )
      >();
  late final _EnumGenericParamConstraintsFn =
      _vtable.EnumGenericParamConstraints.asFunction<
        int Function(
          VTablePointer,
          Pointer<Pointer>,
          int,
          Pointer<Uint32>,
          int,
          Pointer<Uint32>,
        )
      >();
  late final _GetGenericParamConstraintPropsFn =
      _vtable.GetGenericParamConstraintProps.asFunction<
        int Function(VTablePointer, int, Pointer<Uint32>, Pointer<Uint32>)
      >();
  late final _GetPEKindFn =
      _vtable.GetPEKind.asFunction<
        int Function(VTablePointer, Pointer<Uint32>, Pointer<Uint32>)
      >();
  late final _GetVersionStringFn =
      _vtable.GetVersionString.asFunction<
        int Function(VTablePointer, PWSTR, int, Pointer<Uint32>)
      >();
  late final _EnumMethodSpecsFn =
      _vtable.EnumMethodSpecs.asFunction<
        int Function(
          VTablePointer,
          Pointer<Pointer>,
          int,
          Pointer<Uint32>,
          int,
          Pointer<Uint32>,
        )
      >();

  @pragma('vm:prefer-inline')
  void enumGenericParams(
    Pointer<Pointer> phEnum,
    int tk,
    Pointer<Uint32> rGenericParams,
    int cMax,
    Pointer<Uint32> pcGenericParams,
  ) {
    final hr$ = HRESULT(
      _EnumGenericParamsFn(
        ptr,
        phEnum,
        tk,
        rGenericParams,
        cMax,
        pcGenericParams,
      ),
    );
    if (FAILED(hr$)) throw WindowsException(hr$);
  }

  @pragma('vm:prefer-inline')
  void getGenericParamProps(
    int gp,
    Pointer<Uint32> pulParamSeq,
    Pointer<Uint32> pdwParamFlags,
    Pointer<Uint32> ptOwner,
    Pointer<Uint32> reserved,
    PWSTR? wzname,
    int cchName,
    Pointer<Uint32> pchName,
  ) {
    final hr$ = HRESULT(
      _GetGenericParamPropsFn(
        ptr,
        gp,
        pulParamSeq,
        pdwParamFlags,
        ptOwner,
        reserved,
        wzname ?? nullptr,
        cchName,
        pchName,
      ),
    );
    if (FAILED(hr$)) throw WindowsException(hr$);
  }

  @pragma('vm:prefer-inline')
  void getMethodSpecProps(
    int mi,
    Pointer<Uint32> tkParent,
    Pointer<Pointer<Uint8>> ppvSigBlob,
    Pointer<Uint32> pcbSigBlob,
  ) {
    final hr$ = HRESULT(
      _GetMethodSpecPropsFn(ptr, mi, tkParent, ppvSigBlob, pcbSigBlob),
    );
    if (FAILED(hr$)) throw WindowsException(hr$);
  }

  @pragma('vm:prefer-inline')
  void enumGenericParamConstraints(
    Pointer<Pointer> phEnum,
    int tk,
    Pointer<Uint32> rGenericParamConstraints,
    int cMax,
    Pointer<Uint32> pcGenericParamConstraints,
  ) {
    final hr$ = HRESULT(
      _EnumGenericParamConstraintsFn(
        ptr,
        phEnum,
        tk,
        rGenericParamConstraints,
        cMax,
        pcGenericParamConstraints,
      ),
    );
    if (FAILED(hr$)) throw WindowsException(hr$);
  }

  @pragma('vm:prefer-inline')
  void getGenericParamConstraintProps(
    int gpc,
    Pointer<Uint32> ptGenericParam,
    Pointer<Uint32> ptkConstraintType,
  ) {
    final hr$ = HRESULT(
      _GetGenericParamConstraintPropsFn(
        ptr,
        gpc,
        ptGenericParam,
        ptkConstraintType,
      ),
    );
    if (FAILED(hr$)) throw WindowsException(hr$);
  }

  @pragma('vm:prefer-inline')
  void getPEKind(Pointer<Uint32> pdwPEKind, Pointer<Uint32> pdwMAchine) {
    final hr$ = HRESULT(_GetPEKindFn(ptr, pdwPEKind, pdwMAchine));
    if (FAILED(hr$)) throw WindowsException(hr$);
  }

  @pragma('vm:prefer-inline')
  void getVersionString(
    PWSTR? pwzBuf,
    int ccBufSize,
    Pointer<Uint32> pccBufSize,
  ) {
    final hr$ = HRESULT(
      _GetVersionStringFn(ptr, pwzBuf ?? nullptr, ccBufSize, pccBufSize),
    );
    if (FAILED(hr$)) throw WindowsException(hr$);
  }

  @pragma('vm:prefer-inline')
  void enumMethodSpecs(
    Pointer<Pointer> phEnum,
    int tk,
    Pointer<Uint32> rMethodSpecs,
    int cMax,
    Pointer<Uint32> pcMethodSpecs,
  ) {
    final hr$ = HRESULT(
      _EnumMethodSpecsFn(ptr, phEnum, tk, rMethodSpecs, cMax, pcMethodSpecs),
    );
    if (FAILED(hr$)) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IMetaDataImport2(ptr: $ptr)';
}

base class IMetaDataImport2Vtbl extends Struct {
  external IMetaDataImportVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer> phEnum,
        Uint32 tk,
        Pointer<Uint32> rGenericParams,
        Uint32 cMax,
        Pointer<Uint32> pcGenericParams,
      )
    >
  >
  EnumGenericParams;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 gp,
        Pointer<Uint32> pulParamSeq,
        Pointer<Uint32> pdwParamFlags,
        Pointer<Uint32> ptOwner,
        Pointer<Uint32> reserved,
        PWSTR wzname,
        Uint32 cchName,
        Pointer<Uint32> pchName,
      )
    >
  >
  GetGenericParamProps;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 mi,
        Pointer<Uint32> tkParent,
        Pointer<Pointer<Uint8>> ppvSigBlob,
        Pointer<Uint32> pcbSigBlob,
      )
    >
  >
  GetMethodSpecProps;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer> phEnum,
        Uint32 tk,
        Pointer<Uint32> rGenericParamConstraints,
        Uint32 cMax,
        Pointer<Uint32> pcGenericParamConstraints,
      )
    >
  >
  EnumGenericParamConstraints;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 gpc,
        Pointer<Uint32> ptGenericParam,
        Pointer<Uint32> ptkConstraintType,
      )
    >
  >
  GetGenericParamConstraintProps;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Uint32> pdwPEKind,
        Pointer<Uint32> pdwMAchine,
      )
    >
  >
  GetPEKind;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PWSTR pwzBuf,
        Uint32 ccBufSize,
        Pointer<Uint32> pccBufSize,
      )
    >
  >
  GetVersionString;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer> phEnum,
        Uint32 tk,
        Pointer<Uint32> rMethodSpecs,
        Uint32 cMax,
        Pointer<Uint32> pcMethodSpecs,
      )
    >
  >
  EnumMethodSpecs;
}
