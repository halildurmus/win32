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
import 'ispeechobjecttoken.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpeechObjectTokens = GUID.fromComponents(
  0x9285b776,
  0x2e7b,
  0x4bc0,
  Uint8List.fromList(const [0xb5, 0x3e, 0x58, 0xe, 0xb6, 0xfa, 0x96, 0x7f]),
);

/// Represents a collection of SpObjectToken objects.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/windows/desktop/ms721389(v=vs.85)>.
///
/// {@category com}
class ISpeechObjectTokens extends IDispatch implements ComInterface {
  /// Creates a new instance of [ISpeechObjectTokens] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpeechObjectTokens]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ISpeechObjectTokens(super.ptr)
    : _vtable = ptr.value.cast<ISpeechObjectTokensVtbl>().ref;

  /// Creates a new instance of [ISpeechObjectTokens] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ISpeechObjectTokens] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpeechObjectTokens.from(IUnknown interface) =>
      interface.queryInterface();

  final ISpeechObjectTokensVtbl _vtable;
  late final _get_CountFn = _vtable.get_Count
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _ItemFn =
      _vtable.Item.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _get__NewEnumFn = _vtable.get__NewEnum
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();

  int get count {
    final count = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_get_CountFn(ptr, count));
    if (hr$.isError) {
      free(count);
      throw WindowsException(hr$);
    }
    final result$ = count.value;
    free(count);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  ISpeechObjectToken? item(int index) {
    final token = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_ItemFn(ptr, index, token));
    if (hr$.isError) {
      free(token);
      throw WindowsException(hr$);
    }
    final result$ = token.value;
    free(token);
    if (result$.isNull) return null;
    return ISpeechObjectToken(result$);
  }

  IUnknown? get newEnum {
    final ppEnumVARIANT = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_get__NewEnumFn(ptr, ppEnumVARIANT));
    if (hr$.isError) {
      free(ppEnumVARIANT);
      throw WindowsException(hr$);
    }
    final result$ = ppEnumVARIANT.value;
    free(ppEnumVARIANT);
    if (result$.isNull) return null;
    return IUnknown(result$);
  }

  @override
  String toString() => 'ISpeechObjectTokens(ptr: $ptr)';
}

/// @nodoc
base class ISpeechObjectTokensVtbl extends Struct {
  external IDispatchVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> count)>
  >
  get_Count;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 index,
        Pointer<VTablePointer> token,
      )
    >
  >
  Item;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppEnumVARIANT)
    >
  >
  get__NewEnum;
}

@internal
final class ISpeechObjectTokensCompanion
    extends ComCompanion<ISpeechObjectTokens> {
  const ISpeechObjectTokensCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpeechObjectTokens Function(VTablePointer) get fromPointer =>
      ISpeechObjectTokens.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ISpeechObjectTokens;
}
