// Dart representation of a COM interface.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/iunknown.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'imetadataimport.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IMetaDataImport2 = Guid.fromComponents(
  0xfce5efa0,
  0x8bba,
  0x4f8e,
  Uint8List.fromList(const [0xa0, 0x36, 0x8f, 0x20, 0x22, 0xb0, 0x84, 0x66]),
);

/// Extends the IMetaDataImport interface to provide the capability of working
/// with generic types.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nn-rometadataapi-imetadataimport2>.
///
/// {@category com}
class IMetaDataImport2 extends IMetaDataImport implements ComInterface {
  /// Creates a new instance of [IMetaDataImport2] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IMetaDataImport2]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IMetaDataImport2(super.ptr)
    : _vtable = ptr.value.cast<IMetaDataImport2Vtbl>().ref;

  /// Creates a new instance of [IMetaDataImport2] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IMetaDataImport2] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IMetaDataImport2.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

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

  /// Gets an enumerator for an array of generic parameter tokens associated
  /// with the specified TypeDef or MethodDef token.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport2-enumgenericparams>.
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
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the metadata associated with the generic parameter represented by the
  /// specified token.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport2-getgenericparamprops>.
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
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the metadata signature of the method referenced by the specified
  /// MethodSpec token.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport2-getmethodspecprops>.
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
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets an enumerator for an array of generic parameter constraints
  /// associated with the generic parameter represented by the specified token.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport2-enumgenericparamconstraints>.
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
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the metadata associated with the generic parameter constraint
  /// represented by the specified constraint token.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport2-getgenericparamconstraintprops>.
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
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets a value identifying the nature of the code in the portable executable
  /// (PE) file, typically a DLL or EXE file, that is defined in the current
  /// metadata scope.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport2-getpekind>.
  @pragma('vm:prefer-inline')
  void getPEKind(Pointer<Uint32> pdwPEKind, Pointer<Uint32> pdwMAchine) {
    final hr$ = HRESULT(_GetPEKindFn(ptr, pdwPEKind, pdwMAchine));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the version number of the runtime that was used to build the
  /// assembly.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport2-getversionstring>.
  @pragma('vm:prefer-inline')
  void getVersionString(
    PWSTR? pwzBuf,
    int ccBufSize,
    Pointer<Uint32> pccBufSize,
  ) {
    final hr$ = HRESULT(
      _GetVersionStringFn(ptr, pwzBuf ?? nullptr, ccBufSize, pccBufSize),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets an enumerator for an array of MethodSpec tokens associated with the
  /// specified MethodDef or MemberRef token.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataimport2-enummethodspecs>.
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
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IMetaDataImport2(ptr: $ptr)';
}

/// @nodoc
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

@internal
final class IMetaDataImport2Companion extends ComCompanion<IMetaDataImport2> {
  const IMetaDataImport2Companion();

  @pragma('vm:prefer-inline')
  @override
  IMetaDataImport2 Function(VTablePointer) get fromPointer =>
      IMetaDataImport2.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IMetaDataImport2;
}
