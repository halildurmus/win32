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
import 'iuiautomationcondition.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationBoolCondition = Guid.fromComponents(
  0x1b4e1f2e,
  0x75eb,
  0x4d0b,
  Uint8List.fromList(const [0x89, 0x52, 0x5a, 0x69, 0x98, 0x8e, 0x23, 0x7]),
);

/// Represents a condition that can be either TRUE (selects all elements) or
/// FALSE (selects no elements).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationboolcondition>.
///
/// {@category com}
class IUIAutomationBoolCondition extends IUIAutomationCondition
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationBoolCondition] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationBoolCondition] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationBoolCondition(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationBoolConditionVtbl>().ref;

  /// Creates a new instance of [IUIAutomationBoolCondition] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationBoolCondition] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationBoolCondition.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationBoolConditionVtbl _vtable;
  late final _get_BooleanValueFn = _vtable.get_BooleanValue
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();

  /// Retrieves the value of the condition: either TRUE or FALSE.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationboolcondition-get_booleanvalue>.
  bool get booleanValue {
    final boolVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_BooleanValueFn(ptr, boolVal));
    if (hr$.isError) {
      free(boolVal);
      throw WindowsException(hr$);
    }
    final result$ = boolVal.value;
    free(boolVal);
    return result$ != FALSE;
  }

  @override
  String toString() => 'IUIAutomationBoolCondition(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationBoolConditionVtbl extends Struct {
  external IUIAutomationConditionVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> boolVal)>
  >
  get_BooleanValue;
}

@internal
final class IUIAutomationBoolConditionCompanion
    extends ComCompanion<IUIAutomationBoolCondition> {
  const IUIAutomationBoolConditionCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationBoolCondition Function(VTablePointer) get fromPointer =>
      IUIAutomationBoolCondition.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationBoolCondition;
}
