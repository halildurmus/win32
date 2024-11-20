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
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IMetaDataAssemblyImport = Guid.fromComponents(
  0xee62470b,
  0xe94b,
  0x424e,
  Uint8List.fromList(const [0x9b, 0x7c, 0x2f, 0x0, 0xc9, 0x24, 0x9f, 0x93]),
);

/// Provides methods to access and examine the contents of an assembly manifest.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nn-rometadataapi-imetadataassemblyimport>.
///
/// {@category com}
class IMetaDataAssemblyImport extends IUnknown implements ComInterface {
  /// Creates a new instance of [IMetaDataAssemblyImport] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IMetaDataAssemblyImport]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IMetaDataAssemblyImport(super.ptr)
    : _vtable = ptr.value.cast<IMetaDataAssemblyImportVtbl>().ref;

  /// Creates a new instance of [IMetaDataAssemblyImport] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IMetaDataAssemblyImport] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IMetaDataAssemblyImport.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IMetaDataAssemblyImportVtbl _vtable;
  late final _GetAssemblyPropsFn =
      _vtable.GetAssemblyProps.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<Pointer>,
          Pointer<Uint32>,
          Pointer<Uint32>,
          PWSTR,
          int,
          Pointer<Uint32>,
          Pointer<ASSEMBLYMETADATA>,
          Pointer<Uint32>,
        )
      >();
  late final _GetAssemblyRefPropsFn =
      _vtable.GetAssemblyRefProps.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<Pointer>,
          Pointer<Uint32>,
          PWSTR,
          int,
          Pointer<Uint32>,
          Pointer<ASSEMBLYMETADATA>,
          Pointer<Pointer>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _GetFilePropsFn =
      _vtable.GetFileProps.asFunction<
        int Function(
          VTablePointer,
          int,
          PWSTR,
          int,
          Pointer<Uint32>,
          Pointer<Pointer>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _GetExportedTypePropsFn =
      _vtable.GetExportedTypeProps.asFunction<
        int Function(
          VTablePointer,
          int,
          PWSTR,
          int,
          Pointer<Uint32>,
          Pointer<Uint32>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _GetManifestResourcePropsFn =
      _vtable.GetManifestResourceProps.asFunction<
        int Function(
          VTablePointer,
          int,
          PWSTR,
          int,
          Pointer<Uint32>,
          Pointer<Uint32>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _EnumAssemblyRefsFn =
      _vtable.EnumAssemblyRefs.asFunction<
        int Function(
          VTablePointer,
          Pointer<Pointer>,
          Pointer<Uint32>,
          int,
          Pointer<Uint32>,
        )
      >();
  late final _EnumFilesFn =
      _vtable.EnumFiles.asFunction<
        int Function(
          VTablePointer,
          Pointer<Pointer>,
          Pointer<Uint32>,
          int,
          Pointer<Uint32>,
        )
      >();
  late final _EnumExportedTypesFn =
      _vtable.EnumExportedTypes.asFunction<
        int Function(
          VTablePointer,
          Pointer<Pointer>,
          Pointer<Uint32>,
          int,
          Pointer<Uint32>,
        )
      >();
  late final _EnumManifestResourcesFn =
      _vtable.EnumManifestResources.asFunction<
        int Function(
          VTablePointer,
          Pointer<Pointer>,
          Pointer<Uint32>,
          int,
          Pointer<Uint32>,
        )
      >();
  late final _GetAssemblyFromScopeFn =
      _vtable.GetAssemblyFromScope.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();
  late final _FindExportedTypeByNameFn =
      _vtable.FindExportedTypeByName.asFunction<
        int Function(VTablePointer, PCWSTR, int, Pointer<Uint32>)
      >();
  late final _FindManifestResourceByNameFn =
      _vtable.FindManifestResourceByName.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<Uint32>)
      >();
  late final _CloseEnumFn =
      _vtable.CloseEnum.asFunction<void Function(VTablePointer, Pointer)>();
  late final _FindAssembliesByNameFn =
      _vtable.FindAssembliesByName.asFunction<
        int Function(
          VTablePointer,
          PCWSTR,
          PCWSTR,
          PCWSTR,
          Pointer<VTablePointer>,
          int,
          Pointer<Uint32>,
        )
      >();

  /// Gets the set of properties for the assembly with the specified metadata
  /// signature.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-getassemblyprops>.
  @pragma('vm:prefer-inline')
  void getAssemblyProps(
    int mda,
    Pointer<Pointer> ppbPublicKey,
    Pointer<Uint32> pcbPublicKey,
    Pointer<Uint32> pulHashAlgId,
    PWSTR? szName,
    int cchName,
    Pointer<Uint32> pchName,
    Pointer<ASSEMBLYMETADATA> pMetaData,
    Pointer<Uint32> pdwAssemblyFlags,
  ) {
    final hr$ = HRESULT(
      _GetAssemblyPropsFn(
        ptr,
        mda,
        ppbPublicKey,
        pcbPublicKey,
        pulHashAlgId,
        szName ?? nullptr,
        cchName,
        pchName,
        pMetaData,
        pdwAssemblyFlags,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the set of properties for the assembly reference with the specified
  /// metadata signature.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-getassemblyrefprops>.
  @pragma('vm:prefer-inline')
  void getAssemblyRefProps(
    int mdar,
    Pointer<Pointer> ppbPublicKeyOrToken,
    Pointer<Uint32> pcbPublicKeyOrToken,
    PWSTR? szName,
    int cchName,
    Pointer<Uint32> pchName,
    Pointer<ASSEMBLYMETADATA> pMetaData,
    Pointer<Pointer> ppbHashValue,
    Pointer<Uint32> pcbHashValue,
    Pointer<Uint32> pdwAssemblyRefFlags,
  ) {
    final hr$ = HRESULT(
      _GetAssemblyRefPropsFn(
        ptr,
        mdar,
        ppbPublicKeyOrToken,
        pcbPublicKeyOrToken,
        szName ?? nullptr,
        cchName,
        pchName,
        pMetaData,
        ppbHashValue,
        pcbHashValue,
        pdwAssemblyRefFlags,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the properties of the file with the specified metadata signature.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-getfileprops>.
  @pragma('vm:prefer-inline')
  void getFileProps(
    int mdf,
    PWSTR? szName,
    int cchName,
    Pointer<Uint32> pchName,
    Pointer<Pointer> ppbHashValue,
    Pointer<Uint32> pcbHashValue,
    Pointer<Uint32> pdwFileFlags,
  ) {
    final hr$ = HRESULT(
      _GetFilePropsFn(
        ptr,
        mdf,
        szName ?? nullptr,
        cchName,
        pchName,
        ppbHashValue,
        pcbHashValue,
        pdwFileFlags,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the set of properties of the exported type with the specified
  /// metadata signature.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-getexportedtypeprops>.
  @pragma('vm:prefer-inline')
  void getExportedTypeProps(
    int mdct,
    PWSTR? szName,
    int cchName,
    Pointer<Uint32> pchName,
    Pointer<Uint32> ptkImplementation,
    Pointer<Uint32> ptkTypeDef,
    Pointer<Uint32> pdwExportedTypeFlags,
  ) {
    final hr$ = HRESULT(
      _GetExportedTypePropsFn(
        ptr,
        mdct,
        szName ?? nullptr,
        cchName,
        pchName,
        ptkImplementation,
        ptkTypeDef,
        pdwExportedTypeFlags,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the set of properties of the manifest resource with the specified
  /// metadata signature.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-getmanifestresourceprops>.
  @pragma('vm:prefer-inline')
  void getManifestResourceProps(
    int mdmr,
    PWSTR? szName,
    int cchName,
    Pointer<Uint32> pchName,
    Pointer<Uint32> ptkImplementation,
    Pointer<Uint32> pdwOffset,
    Pointer<Uint32> pdwResourceFlags,
  ) {
    final hr$ = HRESULT(
      _GetManifestResourcePropsFn(
        ptr,
        mdmr,
        szName ?? nullptr,
        cchName,
        pchName,
        ptkImplementation,
        pdwOffset,
        pdwResourceFlags,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Enumerates the mdAssemblyRef instances that are defined in the assembly
  /// manifest.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-enumassemblyrefs>.
  @pragma('vm:prefer-inline')
  void enumAssemblyRefs(
    Pointer<Pointer> phEnum,
    Pointer<Uint32> rAssemblyRefs,
    int cMax,
    Pointer<Uint32> pcTokens,
  ) {
    final hr$ = HRESULT(
      _EnumAssemblyRefsFn(ptr, phEnum, rAssemblyRefs, cMax, pcTokens),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Enumerates the files referenced in the current assembly manifest.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-enumfiles>.
  @pragma('vm:prefer-inline')
  void enumFiles(
    Pointer<Pointer> phEnum,
    Pointer<Uint32> rFiles,
    int cMax,
    Pointer<Uint32> pcTokens,
  ) {
    final hr$ = HRESULT(_EnumFilesFn(ptr, phEnum, rFiles, cMax, pcTokens));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Enumerates the exported types referenced in the assembly manifest in the
  /// current metadata scope.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-enumexportedtypes>.
  @pragma('vm:prefer-inline')
  void enumExportedTypes(
    Pointer<Pointer> phEnum,
    Pointer<Uint32> rExportedTypes,
    int cMax,
    Pointer<Uint32> pcTokens,
  ) {
    final hr$ = HRESULT(
      _EnumExportedTypesFn(ptr, phEnum, rExportedTypes, cMax, pcTokens),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets a pointer to an enumerator for the resources referenced in the
  /// current assembly manifest.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-enummanifestresources>.
  @pragma('vm:prefer-inline')
  void enumManifestResources(
    Pointer<Pointer> phEnum,
    Pointer<Uint32> rManifestResources,
    int cMax,
    Pointer<Uint32> pcTokens,
  ) {
    final hr$ = HRESULT(
      _EnumManifestResourcesFn(ptr, phEnum, rManifestResources, cMax, pcTokens),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets a pointer to the assembly in the current scope.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-getassemblyfromscope>.
  @pragma('vm:prefer-inline')
  void getAssemblyFromScope(Pointer<Uint32> ptkAssembly) {
    final hr$ = HRESULT(_GetAssemblyFromScopeFn(ptr, ptkAssembly));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets a pointer to an exported type, given its name and enclosing type.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-findexportedtypebyname>.
  @pragma('vm:prefer-inline')
  void findExportedTypeByName(
    PCWSTR szName,
    int mdtExportedType,
    Pointer<Uint32> ptkExportedType,
  ) {
    final hr$ = HRESULT(
      _FindExportedTypeByNameFn(ptr, szName, mdtExportedType, ptkExportedType),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets a pointer to the manifest resource with the specified name.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-findmanifestresourcebyname>.
  @pragma('vm:prefer-inline')
  void findManifestResourceByName(
    PCWSTR szName,
    Pointer<Uint32> ptkManifestResource,
  ) {
    final hr$ = HRESULT(
      _FindManifestResourceByNameFn(ptr, szName, ptkManifestResource),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Releases a reference to the specified enumeration instance.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-closeenum>.
  @pragma('vm:prefer-inline')
  void closeEnum(Pointer hEnum) => _CloseEnumFn(ptr, hEnum);

  /// Gets an array of assemblies with the specified name, using the standard
  /// rules employed by the common language runtime (CLR) for resolving
  /// references.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadataassemblyimport-findassembliesbyname>.
  @pragma('vm:prefer-inline')
  void findAssembliesByName(
    PCWSTR szAppBase,
    PCWSTR szPrivateBin,
    PCWSTR szAssemblyName,
    Pointer<VTablePointer> ppIUnk,
    int cMax,
    Pointer<Uint32> pcAssemblies,
  ) {
    final hr$ = HRESULT(
      _FindAssembliesByNameFn(
        ptr,
        szAppBase,
        szPrivateBin,
        szAssemblyName,
        ppIUnk,
        cMax,
        pcAssemblies,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IMetaDataAssemblyImport(ptr: $ptr)';
}

/// @nodoc
base class IMetaDataAssemblyImportVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 mda,
        Pointer<Pointer> ppbPublicKey,
        Pointer<Uint32> pcbPublicKey,
        Pointer<Uint32> pulHashAlgId,
        PWSTR szName,
        Uint32 cchName,
        Pointer<Uint32> pchName,
        Pointer<ASSEMBLYMETADATA> pMetaData,
        Pointer<Uint32> pdwAssemblyFlags,
      )
    >
  >
  GetAssemblyProps;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 mdar,
        Pointer<Pointer> ppbPublicKeyOrToken,
        Pointer<Uint32> pcbPublicKeyOrToken,
        PWSTR szName,
        Uint32 cchName,
        Pointer<Uint32> pchName,
        Pointer<ASSEMBLYMETADATA> pMetaData,
        Pointer<Pointer> ppbHashValue,
        Pointer<Uint32> pcbHashValue,
        Pointer<Uint32> pdwAssemblyRefFlags,
      )
    >
  >
  GetAssemblyRefProps;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 mdf,
        PWSTR szName,
        Uint32 cchName,
        Pointer<Uint32> pchName,
        Pointer<Pointer> ppbHashValue,
        Pointer<Uint32> pcbHashValue,
        Pointer<Uint32> pdwFileFlags,
      )
    >
  >
  GetFileProps;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 mdct,
        PWSTR szName,
        Uint32 cchName,
        Pointer<Uint32> pchName,
        Pointer<Uint32> ptkImplementation,
        Pointer<Uint32> ptkTypeDef,
        Pointer<Uint32> pdwExportedTypeFlags,
      )
    >
  >
  GetExportedTypeProps;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 mdmr,
        PWSTR szName,
        Uint32 cchName,
        Pointer<Uint32> pchName,
        Pointer<Uint32> ptkImplementation,
        Pointer<Uint32> pdwOffset,
        Pointer<Uint32> pdwResourceFlags,
      )
    >
  >
  GetManifestResourceProps;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer> phEnum,
        Pointer<Uint32> rAssemblyRefs,
        Uint32 cMax,
        Pointer<Uint32> pcTokens,
      )
    >
  >
  EnumAssemblyRefs;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer> phEnum,
        Pointer<Uint32> rFiles,
        Uint32 cMax,
        Pointer<Uint32> pcTokens,
      )
    >
  >
  EnumFiles;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer> phEnum,
        Pointer<Uint32> rExportedTypes,
        Uint32 cMax,
        Pointer<Uint32> pcTokens,
      )
    >
  >
  EnumExportedTypes;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer> phEnum,
        Pointer<Uint32> rManifestResources,
        Uint32 cMax,
        Pointer<Uint32> pcTokens,
      )
    >
  >
  EnumManifestResources;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> ptkAssembly)
    >
  >
  GetAssemblyFromScope;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR szName,
        Uint32 mdtExportedType,
        Pointer<Uint32> ptkExportedType,
      )
    >
  >
  FindExportedTypeByName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR szName,
        Pointer<Uint32> ptkManifestResource,
      )
    >
  >
  FindManifestResourceByName;
  external Pointer<
    NativeFunction<Void Function(VTablePointer this$, Pointer hEnum)>
  >
  CloseEnum;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR szAppBase,
        PCWSTR szPrivateBin,
        PCWSTR szAssemblyName,
        Pointer<VTablePointer> ppIUnk,
        Uint32 cMax,
        Pointer<Uint32> pcAssemblies,
      )
    >
  >
  FindAssembliesByName;
}

@internal
final class IMetaDataAssemblyImportCompanion
    extends ComCompanion<IMetaDataAssemblyImport> {
  const IMetaDataAssemblyImportCompanion();

  @pragma('vm:prefer-inline')
  @override
  IMetaDataAssemblyImport Function(VTablePointer) get fromPointer =>
      IMetaDataAssemblyImport.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IMetaDataAssemblyImport;
}
