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
final IID_IUIAutomationNotCondition = Guid.fromComponents(
  0xf528b657,
  0x847b,
  0x498c,
  Uint8List.fromList(const [0x88, 0x96, 0xd5, 0x2b, 0x56, 0x54, 0x7, 0xa1]),
);

/// Represents a condition that is the negative of another condition.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationnotcondition>.
///
/// {@category com}
class IUIAutomationNotCondition extends IUIAutomationCondition
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationNotCondition] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationNotCondition] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationNotCondition(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationNotConditionVtbl>().ref;

  /// Creates a new instance of [IUIAutomationNotCondition] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationNotCondition] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationNotCondition.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationNotConditionVtbl _vtable;
  late final _GetChildFn =
      _vtable.GetChild.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Retrieves the condition of which this condition is the negative.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationnotcondition-getchild>.
  IUIAutomationCondition? getChild() {
    final condition = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetChildFn(ptr, condition));
    if (hr$.isError) {
      free(condition);
      throw WindowsException(hr$);
    }
    final result$ = condition.value;
    free(condition);
    if (result$.isNull) return null;
    return IUIAutomationCondition(result$);
  }

  @override
  String toString() => 'IUIAutomationNotCondition(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationNotConditionVtbl extends Struct {
  external IUIAutomationConditionVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> condition)
    >
  >
  GetChild;
}

@internal
final class IUIAutomationNotConditionCompanion
    extends ComCompanion<IUIAutomationNotCondition> {
  const IUIAutomationNotConditionCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationNotCondition Function(VTablePointer) get fromPointer =>
      IUIAutomationNotCondition.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationNotCondition;
}
