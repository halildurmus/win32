// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
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
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'idispatch.g.dart';
import 'interface.g.dart';
import 'ispeechdatakey.g.dart';
import 'ispeechobjecttokens.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpeechObjectTokenCategory = GUID.fromComponents(
  0xca7eac50,
  0x2d01,
  0x4145,
  Uint8List.fromList(const [0x86, 0xd4, 0x5a, 0xe7, 0xd7, 0xf, 0x44, 0x69]),
);

/// {@category com}
class ISpeechObjectTokenCategory extends IDispatch implements ComInterface {
  /// Creates a new instance of [ISpeechObjectTokenCategory] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [ISpeechObjectTokenCategory] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ISpeechObjectTokenCategory(super.ptr)
    : _vtable = ptr.value.cast<ISpeechObjectTokenCategoryVtbl>().ref;

  /// Creates a new instance of [ISpeechObjectTokenCategory] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ISpeechObjectTokenCategory] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpeechObjectTokenCategory.from(IUnknown interface) =>
      interface.queryInterface();

  final ISpeechObjectTokenCategoryVtbl _vtable;
  late final _get_IdFn = _vtable.get_Id
      .asFunction<int Function(VTablePointer, Pointer<Pointer<Utf16>>)>();
  late final _put_DefaultFn = _vtable.put_Default
      .asFunction<int Function(VTablePointer, Pointer<Utf16>)>();
  late final _get_DefaultFn = _vtable.get_Default
      .asFunction<int Function(VTablePointer, Pointer<Pointer<Utf16>>)>();
  late final _SetIdFn = _vtable
      .SetId.asFunction<int Function(VTablePointer, Pointer<Utf16>, int)>();
  late final _GetDataKeyFn =
      _vtable.GetDataKey.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _EnumerateTokensFn =
      _vtable.EnumerateTokens.asFunction<
        int Function(
          VTablePointer,
          Pointer<Utf16>,
          Pointer<Utf16>,
          Pointer<VTablePointer>,
        )
      >();

  BSTR get id {
    final id = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_IdFn(ptr, id));
    if (hr$.isError) {
      free(id);
      throw WindowsException(hr$);
    }
    final result$ = id.value;
    free(id);
    return BSTR(result$);
  }

  set default$(BSTR tokenId) {
    final hr$ = HRESULT(_put_DefaultFn(ptr, tokenId));
    if (hr$.isError) throw WindowsException(hr$);
  }

  BSTR get default$ {
    final tokenId = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_DefaultFn(ptr, tokenId));
    if (hr$.isError) {
      free(tokenId);
      throw WindowsException(hr$);
    }
    final result$ = tokenId.value;
    free(tokenId);
    return BSTR(result$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setId(BSTR id, bool createIfNotExist) {
    final hr$ = HRESULT(
      _SetIdFn(ptr, id, createIfNotExist ? VARIANT_TRUE : FALSE),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  ISpeechDataKey? getDataKey(SpeechDataKeyLocation location) {
    final dataKey = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetDataKeyFn(ptr, location, dataKey));
    if (hr$.isError) {
      free(dataKey);
      throw WindowsException(hr$);
    }
    final result$ = dataKey.value;
    free(dataKey);
    if (result$.isNull) return null;
    return ISpeechDataKey(result$);
  }

  /// Throws a [WindowsException] on failure.
  ISpeechObjectTokens? enumerateTokens(
    BSTR requiredAttributes,
    BSTR optionalAttributes,
  ) {
    final tokens = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _EnumerateTokensFn(ptr, requiredAttributes, optionalAttributes, tokens),
    );
    if (hr$.isError) {
      free(tokens);
      throw WindowsException(hr$);
    }
    final result$ = tokens.value;
    free(tokens);
    if (result$.isNull) return null;
    return ISpeechObjectTokens(result$);
  }

  @override
  String toString() => 'ISpeechObjectTokenCategory(ptr: $ptr)';
}

/// @nodoc
base class ISpeechObjectTokenCategoryVtbl extends Struct {
  external IDispatchVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> id)
    >
  >
  get_Id;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Utf16> tokenId)>
  >
  put_Default;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> tokenId)
    >
  >
  get_Default;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf16> id,
        Int16 createIfNotExist,
      )
    >
  >
  SetId;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 location,
        Pointer<VTablePointer> dataKey,
      )
    >
  >
  GetDataKey;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf16> requiredAttributes,
        Pointer<Utf16> optionalAttributes,
        Pointer<VTablePointer> tokens,
      )
    >
  >
  EnumerateTokens;
}

@internal
final class ISpeechObjectTokenCategoryCompanion
    extends ComCompanion<ISpeechObjectTokenCategory> {
  const ISpeechObjectTokenCategoryCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpeechObjectTokenCategory Function(VTablePointer) get fromPointer =>
      ISpeechObjectTokenCategory.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ISpeechObjectTokenCategory;
}
