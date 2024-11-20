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
import '../enums.g.dart';
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
import 'ienumspobjecttokens.g.dart';
import 'interface.g.dart';
import 'ispdatakey.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpObjectTokenCategory = Guid.fromComponents(
  0x2d3d3845,
  0x39af,
  0x4850,
  Uint8List.fromList(const [0xbb, 0xf9, 0x40, 0xb4, 0x97, 0x80, 0x1, 0x1d]),
);

/// {@category com}
class ISpObjectTokenCategory extends ISpDataKey implements ComInterface {
  /// Creates a new instance of [ISpObjectTokenCategory] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpObjectTokenCategory]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISpObjectTokenCategory(super.ptr)
    : _vtable = ptr.value.cast<ISpObjectTokenCategoryVtbl>().ref;

  /// Creates a new instance of [ISpObjectTokenCategory] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISpObjectTokenCategory] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpObjectTokenCategory.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISpObjectTokenCategoryVtbl _vtable;
  late final _SetIdFn =
      _vtable.SetId.asFunction<int Function(VTablePointer, PCWSTR, int)>();
  late final _GetIdFn =
      _vtable.GetId.asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _GetDataKeyFn =
      _vtable.GetDataKey.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _EnumTokensFn =
      _vtable.EnumTokens.asFunction<
        int Function(VTablePointer, PCWSTR, PCWSTR, Pointer<VTablePointer>)
      >();
  late final _SetDefaultTokenIdFn = _vtable
      .SetDefaultTokenId.asFunction<int Function(VTablePointer, PCWSTR)>();
  late final _GetDefaultTokenIdFn =
      _vtable.GetDefaultTokenId.asFunction<
        int Function(VTablePointer, Pointer<PWSTR>)
      >();

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setId(PCWSTR pszCategoryId, bool fCreateIfNotExist) {
    final hr$ = HRESULT(
      _SetIdFn(ptr, pszCategoryId, fCreateIfNotExist ? TRUE : FALSE),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  PWSTR getId() {
    final ppszCoMemCategoryId = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetIdFn(ptr, ppszCoMemCategoryId));
    if (hr$.isError) {
      free(ppszCoMemCategoryId);
      throw WindowsException(hr$);
    }
    final result$ = ppszCoMemCategoryId.value;
    free(ppszCoMemCategoryId);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  ISpDataKey? getDataKey(SPDATAKEYLOCATION spdkl) {
    final ppDataKey = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetDataKeyFn(ptr, spdkl, ppDataKey));
    if (hr$.isError) {
      free(ppDataKey);
      throw WindowsException(hr$);
    }
    final result$ = ppDataKey.value;
    free(ppDataKey);
    if (result$.isNull) return null;
    return ISpDataKey(result$);
  }

  /// Throws a [WindowsException] on failure.
  IEnumSpObjectTokens? enumTokens(
    PCWSTR? pzsReqAttribs,
    PCWSTR? pszOptAttribs,
  ) {
    final ppEnum = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _EnumTokensFn(
        ptr,
        pzsReqAttribs ?? nullptr,
        pszOptAttribs ?? nullptr,
        ppEnum,
      ),
    );
    if (hr$.isError) {
      free(ppEnum);
      throw WindowsException(hr$);
    }
    final result$ = ppEnum.value;
    free(ppEnum);
    if (result$.isNull) return null;
    return IEnumSpObjectTokens(result$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setDefaultTokenId(PCWSTR pszTokenId) {
    final hr$ = HRESULT(_SetDefaultTokenIdFn(ptr, pszTokenId));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  PWSTR getDefaultTokenId() {
    final ppszCoMemTokenId = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetDefaultTokenIdFn(ptr, ppszCoMemTokenId));
    if (hr$.isError) {
      free(ppszCoMemTokenId);
      throw WindowsException(hr$);
    }
    final result$ = ppszCoMemTokenId.value;
    free(ppszCoMemTokenId);
    return result$;
  }

  @override
  String toString() => 'ISpObjectTokenCategory(ptr: $ptr)';
}

/// @nodoc
base class ISpObjectTokenCategoryVtbl extends Struct {
  external ISpDataKeyVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pszCategoryId,
        BOOL fCreateIfNotExist,
      )
    >
  >
  SetId;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PWSTR> ppszCoMemCategoryId)
    >
  >
  GetId;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 spdkl,
        Pointer<VTablePointer> ppDataKey,
      )
    >
  >
  GetDataKey;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pzsReqAttribs,
        PCWSTR pszOptAttribs,
        Pointer<VTablePointer> ppEnum,
      )
    >
  >
  EnumTokens;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, PCWSTR pszTokenId)>
  >
  SetDefaultTokenId;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PWSTR> ppszCoMemTokenId)
    >
  >
  GetDefaultTokenId;
}

@internal
final class ISpObjectTokenCategoryCompanion
    extends ComCompanion<ISpObjectTokenCategory> {
  const ISpObjectTokenCategoryCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpObjectTokenCategory Function(VTablePointer) get fromPointer =>
      ISpObjectTokenCategory.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISpObjectTokenCategory;
}
