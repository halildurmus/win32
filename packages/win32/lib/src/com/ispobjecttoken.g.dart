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
import 'ispdatakey.g.dart';
import 'ispobjecttokencategory.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpObjectToken = Guid.fromComponents(
  0x14056589,
  0xe16c,
  0x11d2,
  Uint8List.fromList(const [0xbb, 0x90, 0x0, 0xc0, 0x4f, 0x8e, 0xe6, 0xc0]),
);

/// {@category com}
class ISpObjectToken extends ISpDataKey implements ComInterface {
  /// Creates a new instance of [ISpObjectToken] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpObjectToken]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISpObjectToken(super.ptr)
    : _vtable = ptr.value.cast<ISpObjectTokenVtbl>().ref;

  /// Creates a new instance of [ISpObjectToken] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISpObjectToken] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpObjectToken.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISpObjectTokenVtbl _vtable;
  late final _SetIdFn = _vtable
      .SetId.asFunction<int Function(VTablePointer, PCWSTR, PCWSTR, int)>();
  late final _GetIdFn =
      _vtable.GetId.asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _GetCategoryFn =
      _vtable.GetCategory.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _CreateInstanceFn =
      _vtable.CreateInstance.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<GUID>,
          Pointer<Pointer>,
        )
      >();
  late final _GetStorageFileNameFn =
      _vtable.GetStorageFileName.asFunction<
        int Function(
          VTablePointer,
          Pointer<GUID>,
          PCWSTR,
          PCWSTR,
          int,
          Pointer<PWSTR>,
        )
      >();
  late final _RemoveStorageFileNameFn =
      _vtable.RemoveStorageFileName.asFunction<
        int Function(VTablePointer, Pointer<GUID>, PCWSTR, int)
      >();
  late final _RemoveFn =
      _vtable.Remove.asFunction<int Function(VTablePointer, Pointer<GUID>)>();
  late final _IsUISupportedFn =
      _vtable.IsUISupported.asFunction<
        int Function(
          VTablePointer,
          PCWSTR,
          Pointer,
          int,
          VTablePointer,
          Pointer<BOOL>,
        )
      >();
  late final _DisplayUIFn =
      _vtable.DisplayUI.asFunction<
        int Function(
          VTablePointer,
          int,
          PCWSTR,
          PCWSTR,
          Pointer,
          int,
          VTablePointer,
        )
      >();
  late final _MatchesAttributesFn =
      _vtable.MatchesAttributes.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<BOOL>)
      >();

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setId(PCWSTR? pszCategoryId, PCWSTR pszTokenId, bool fCreateIfNotExist) {
    final hr$ = HRESULT(
      _SetIdFn(
        ptr,
        pszCategoryId ?? nullptr,
        pszTokenId,
        fCreateIfNotExist ? TRUE : FALSE,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  PWSTR getId() {
    final ppszCoMemTokenId = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetIdFn(ptr, ppszCoMemTokenId));
    if (hr$.isError) {
      free(ppszCoMemTokenId);
      throw WindowsException(hr$);
    }
    final result$ = ppszCoMemTokenId.value;
    free(ppszCoMemTokenId);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  ISpObjectTokenCategory? getCategory() {
    final ppTokenCategory = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCategoryFn(ptr, ppTokenCategory));
    if (hr$.isError) {
      free(ppTokenCategory);
      throw WindowsException(hr$);
    }
    final result$ = ppTokenCategory.value;
    free(ppTokenCategory);
    if (result$.isNull) return null;
    return ISpObjectTokenCategory(result$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void createInstance(
    IUnknown? pUnkOuter,
    int dwClsContext,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvObject,
  ) {
    final hr$ = HRESULT(
      _CreateInstanceFn(
        ptr,
        pUnkOuter?.ptr ?? nullptr,
        dwClsContext,
        riid,
        ppvObject,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  PWSTR getStorageFileName(
    Pointer<GUID> clsidCaller,
    PCWSTR pszValueName,
    PCWSTR? pszFileNameSpecifier,
    int nFolder,
  ) {
    final ppszFilePath = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(
      _GetStorageFileNameFn(
        ptr,
        clsidCaller,
        pszValueName,
        pszFileNameSpecifier ?? nullptr,
        nFolder,
        ppszFilePath,
      ),
    );
    if (hr$.isError) {
      free(ppszFilePath);
      throw WindowsException(hr$);
    }
    final result$ = ppszFilePath.value;
    free(ppszFilePath);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void removeStorageFileName(
    Pointer<GUID> clsidCaller,
    PCWSTR pszKeyName,
    bool fDeleteFile,
  ) {
    final hr$ = HRESULT(
      _RemoveStorageFileNameFn(
        ptr,
        clsidCaller,
        pszKeyName,
        fDeleteFile ? TRUE : FALSE,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void remove(Pointer<GUID>? pclsidCaller) {
    final hr$ = HRESULT(_RemoveFn(ptr, pclsidCaller ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void isUISupported(
    PCWSTR pszTypeOfUI,
    Pointer pvExtraData,
    int cbExtraData,
    IUnknown? punkObject,
    Pointer<BOOL> pfSupported,
  ) {
    final hr$ = HRESULT(
      _IsUISupportedFn(
        ptr,
        pszTypeOfUI,
        pvExtraData,
        cbExtraData,
        punkObject?.ptr ?? nullptr,
        pfSupported,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void displayUI(
    int hwndParent,
    PCWSTR pszTitle,
    PCWSTR pszTypeOfUI,
    Pointer pvExtraData,
    int cbExtraData,
    IUnknown? punkObject,
  ) {
    final hr$ = HRESULT(
      _DisplayUIFn(
        ptr,
        hwndParent,
        pszTitle,
        pszTypeOfUI,
        pvExtraData,
        cbExtraData,
        punkObject?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void matchesAttributes(PCWSTR pszAttributes, Pointer<BOOL> pfMatches) {
    final hr$ = HRESULT(_MatchesAttributesFn(ptr, pszAttributes, pfMatches));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ISpObjectToken(ptr: $ptr)';
}

/// @nodoc
base class ISpObjectTokenVtbl extends Struct {
  external ISpDataKeyVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pszCategoryId,
        PCWSTR pszTokenId,
        BOOL fCreateIfNotExist,
      )
    >
  >
  SetId;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PWSTR> ppszCoMemTokenId)
    >
  >
  GetId;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> ppTokenCategory,
      )
    >
  >
  GetCategory;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pUnkOuter,
        Uint32 dwClsContext,
        Pointer<GUID> riid,
        Pointer<Pointer> ppvObject,
      )
    >
  >
  CreateInstance;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> clsidCaller,
        PCWSTR pszValueName,
        PCWSTR pszFileNameSpecifier,
        Uint32 nFolder,
        Pointer<PWSTR> ppszFilePath,
      )
    >
  >
  GetStorageFileName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> clsidCaller,
        PCWSTR pszKeyName,
        BOOL fDeleteFile,
      )
    >
  >
  RemoveStorageFileName;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<GUID> pclsidCaller)
    >
  >
  Remove;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pszTypeOfUI,
        Pointer pvExtraData,
        Uint32 cbExtraData,
        VTablePointer punkObject,
        Pointer<BOOL> pfSupported,
      )
    >
  >
  IsUISupported;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        HWND hwndParent,
        PCWSTR pszTitle,
        PCWSTR pszTypeOfUI,
        Pointer pvExtraData,
        Uint32 cbExtraData,
        VTablePointer punkObject,
      )
    >
  >
  DisplayUI;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pszAttributes,
        Pointer<BOOL> pfMatches,
      )
    >
  >
  MatchesAttributes;
}

@internal
final class ISpObjectTokenCompanion extends ComCompanion<ISpObjectToken> {
  const ISpObjectTokenCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpObjectToken Function(VTablePointer) get fromPointer => ISpObjectToken.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISpObjectToken;
}
