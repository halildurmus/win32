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
import '../variant.dart';
import 'interface.g.dart';
import 'iuiautomationcondition.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationPropertyCondition = Guid.fromComponents(
  0x99ebf2cb,
  0x5578,
  0x4267,
  Uint8List.fromList(const [0x9a, 0xd4, 0xaf, 0xd6, 0xea, 0x77, 0xe9, 0x4b]),
);

/// Represents a condition based on a property value that is used to find UI
/// Automation elements.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationpropertycondition>.
///
/// {@category com}
class IUIAutomationPropertyCondition extends IUIAutomationCondition
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationPropertyCondition] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationPropertyCondition] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationPropertyCondition(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationPropertyConditionVtbl>().ref;

  /// Creates a new instance of [IUIAutomationPropertyCondition] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationPropertyCondition] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationPropertyCondition.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationPropertyConditionVtbl _vtable;
  late final _get_PropertyIdFn = _vtable.get_PropertyId
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_PropertyValueFn = _vtable.get_PropertyValue
      .asFunction<int Function(VTablePointer, Pointer<VARIANT>)>();
  late final _get_PropertyConditionFlagsFn = _vtable.get_PropertyConditionFlags
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();

  /// Retrieves the identifier of the property on which this condition is based.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationpropertycondition-get_propertyid>.
  UIA_PROPERTY_ID get propertyId {
    final propertyId = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_PropertyIdFn(ptr, propertyId));
    if (hr$.isError) {
      free(propertyId);
      throw WindowsException(hr$);
    }
    final result$ = propertyId.value;
    free(propertyId);
    return UIA_PROPERTY_ID(result$);
  }

  /// Retrieves the property value that must be matched for the condition to be
  /// true.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationpropertycondition-get_propertyvalue>.
  Pointer<VARIANT> get propertyValue {
    final propertyValue = loggingCalloc<VARIANT>();
    final hr$ = HRESULT(_get_PropertyValueFn(ptr, propertyValue));
    if (hr$.isError) {
      free(propertyValue);
      throw WindowsException(hr$);
    }
    return propertyValue;
  }

  /// Retrieves a set of flags that specify how the condition is applied.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationpropertycondition-get_propertyconditionflags>.
  PropertyConditionFlags get propertyConditionFlags {
    final flags = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_PropertyConditionFlagsFn(ptr, flags));
    if (hr$.isError) {
      free(flags);
      throw WindowsException(hr$);
    }
    final result$ = flags.value;
    free(flags);
    return PropertyConditionFlags(result$);
  }

  @override
  String toString() => 'IUIAutomationPropertyCondition(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationPropertyConditionVtbl extends Struct {
  external IUIAutomationConditionVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> propertyId)
    >
  >
  get_PropertyId;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VARIANT> propertyValue)
    >
  >
  get_PropertyValue;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> flags)>
  >
  get_PropertyConditionFlags;
}

@internal
final class IUIAutomationPropertyConditionCompanion
    extends ComCompanion<IUIAutomationPropertyCondition> {
  const IUIAutomationPropertyConditionCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationPropertyCondition Function(VTablePointer) get fromPointer =>
      IUIAutomationPropertyCondition.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationPropertyCondition;
}
