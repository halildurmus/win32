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
import '../variant.dart';
import 'imetadatadispenser.g.dart';
import 'interface.g.dart';
import 'itypeinfo.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IMetaDataDispenserEx = Guid.fromComponents(
  0x31bcfce2,
  0xdafb,
  0x11d2,
  Uint8List.fromList(const [0x9f, 0x81, 0x0, 0xc0, 0x4f, 0x79, 0xa0, 0xa3]),
);

/// Extends the IMetaDataDispenser interface to provide the capability to
/// control how the metadata APIs operate on the current metadata scope.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nn-rometadataapi-imetadatadispenserex>.
///
/// {@category com}
class IMetaDataDispenserEx extends IMetaDataDispenser implements ComInterface {
  /// Creates a new instance of [IMetaDataDispenserEx] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IMetaDataDispenserEx]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IMetaDataDispenserEx(super.ptr)
    : _vtable = ptr.value.cast<IMetaDataDispenserExVtbl>().ref;

  /// Creates a new instance of [IMetaDataDispenserEx] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IMetaDataDispenserEx] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IMetaDataDispenserEx.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IMetaDataDispenserExVtbl _vtable;
  late final _SetOptionFn =
      _vtable.SetOption.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<VARIANT>)
      >();
  late final _GetOptionFn =
      _vtable.GetOption.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<VARIANT>)
      >();
  late final _OpenScopeOnITypeInfoFn =
      _vtable.OpenScopeOnITypeInfo.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<GUID>,
          Pointer<VTablePointer>,
        )
      >();
  late final _GetCORSystemDirectoryFn =
      _vtable.GetCORSystemDirectory.asFunction<
        int Function(VTablePointer, PWSTR, int, Pointer<Uint32>)
      >();
  late final _FindAssemblyFn =
      _vtable.FindAssembly.asFunction<
        int Function(
          VTablePointer,
          PCWSTR,
          PCWSTR,
          PCWSTR,
          PCWSTR,
          PCWSTR,
          int,
          Pointer<Uint32>,
        )
      >();
  late final _FindAssemblyModuleFn =
      _vtable.FindAssemblyModule.asFunction<
        int Function(
          VTablePointer,
          PCWSTR,
          PCWSTR,
          PCWSTR,
          PCWSTR,
          PCWSTR,
          PWSTR,
          int,
          Pointer<Uint32>,
        )
      >();

  /// Sets the specified option to a given value for the current metadata scope.
  ///
  /// The option controls how calls to the current metadata scope are handled.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatadispenserex-setoption>.
  @pragma('vm:prefer-inline')
  void setOption(Pointer<GUID> optionid, Pointer<VARIANT> value) {
    final hr$ = HRESULT(_SetOptionFn(ptr, optionid, value));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the value of the specified option for the current metadata scope.
  ///
  /// The option controls how calls to the current metadata scope are handled.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatadispenserex-getoption>.
  @pragma('vm:prefer-inline')
  void getOption(Pointer<GUID> optionid, Pointer<VARIANT> pvalue) {
    final hr$ = HRESULT(_GetOptionFn(ptr, optionid, pvalue));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Opens the specified scope type.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatadispenserex-openscopeonitypeinfo>.
  IUnknown? openScopeOnITypeInfo(
    ITypeInfo? pITI,
    int dwOpenFlags,
    Pointer<GUID> riid,
  ) {
    final ppIUnk = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _OpenScopeOnITypeInfoFn(
        ptr,
        pITI?.ptr ?? nullptr,
        dwOpenFlags,
        riid,
        ppIUnk,
      ),
    );
    if (hr$.isError) {
      free(ppIUnk);
      throw WindowsException(hr$);
    }
    final result$ = ppIUnk.value;
    free(ppIUnk);
    if (result$.isNull) return null;
    return IUnknown(result$);
  }

  /// Gets the directory that holds the current common language runtime (CLR).
  ///
  /// This method is supported only for use by out-of-process debuggers. If
  /// called from another component, it will return E_NOTIMPL.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatadispenserex-getcorsystemdirectory>.
  @pragma('vm:prefer-inline')
  void getCORSystemDirectory(
    PWSTR? szBuffer,
    int cchBuffer,
    Pointer<Uint32> pchBuffer,
  ) {
    final hr$ = HRESULT(
      _GetCORSystemDirectoryFn(ptr, szBuffer ?? nullptr, cchBuffer, pchBuffer),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets the name of the assembly.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatadispenserex-findassembly>.
  @pragma('vm:prefer-inline')
  void findAssembly(
    PCWSTR szAppBase,
    PCWSTR szPrivateBin,
    PCWSTR szGlobalBin,
    PCWSTR szAssemblyName,
    PCWSTR szName,
    int cchName,
    Pointer<Uint32> pcName,
  ) {
    final hr$ = HRESULT(
      _FindAssemblyFn(
        ptr,
        szAppBase,
        szPrivateBin,
        szGlobalBin,
        szAssemblyName,
        szName,
        cchName,
        pcName,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Finds the name of the assembly module.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/rometadataapi/nf-rometadataapi-imetadatadispenserex-findassemblymodule>.
  @pragma('vm:prefer-inline')
  void findAssemblyModule(
    PCWSTR szAppBase,
    PCWSTR szPrivateBin,
    PCWSTR szGlobalBin,
    PCWSTR szAssemblyName,
    PCWSTR szModuleName,
    PWSTR? szName,
    int cchName,
    Pointer<Uint32> pcName,
  ) {
    final hr$ = HRESULT(
      _FindAssemblyModuleFn(
        ptr,
        szAppBase,
        szPrivateBin,
        szGlobalBin,
        szAssemblyName,
        szModuleName,
        szName ?? nullptr,
        cchName,
        pcName,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IMetaDataDispenserEx(ptr: $ptr)';
}

/// @nodoc
base class IMetaDataDispenserExVtbl extends Struct {
  external IMetaDataDispenserVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> optionid,
        Pointer<VARIANT> value,
      )
    >
  >
  SetOption;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> optionid,
        Pointer<VARIANT> pvalue,
      )
    >
  >
  GetOption;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pITI,
        Uint32 dwOpenFlags,
        Pointer<GUID> riid,
        Pointer<VTablePointer> ppIUnk,
      )
    >
  >
  OpenScopeOnITypeInfo;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PWSTR szBuffer,
        Uint32 cchBuffer,
        Pointer<Uint32> pchBuffer,
      )
    >
  >
  GetCORSystemDirectory;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR szAppBase,
        PCWSTR szPrivateBin,
        PCWSTR szGlobalBin,
        PCWSTR szAssemblyName,
        PCWSTR szName,
        Uint32 cchName,
        Pointer<Uint32> pcName,
      )
    >
  >
  FindAssembly;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR szAppBase,
        PCWSTR szPrivateBin,
        PCWSTR szGlobalBin,
        PCWSTR szAssemblyName,
        PCWSTR szModuleName,
        PWSTR szName,
        Uint32 cchName,
        Pointer<Uint32> pcName,
      )
    >
  >
  FindAssemblyModule;
}

@internal
final class IMetaDataDispenserExCompanion
    extends ComCompanion<IMetaDataDispenserEx> {
  const IMetaDataDispenserExCompanion();

  @pragma('vm:prefer-inline')
  @override
  IMetaDataDispenserEx Function(VTablePointer) get fromPointer =>
      IMetaDataDispenserEx.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IMetaDataDispenserEx;
}
