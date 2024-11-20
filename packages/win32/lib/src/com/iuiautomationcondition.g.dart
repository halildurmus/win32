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
final IID_IUIAutomationCondition = Guid.fromComponents(
  0x352ffba8,
  0x973,
  0x437c,
  Uint8List.fromList(const [0xa6, 0x1f, 0xf6, 0x4c, 0xaf, 0xd8, 0x1d, 0xf9]),
);

/// This is the primary interface for conditions used in filtering when
/// searching for elements in the UI Automation tree.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationcondition>.
///
/// {@category com}
class IUIAutomationCondition extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationCondition] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUIAutomationCondition]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationCondition(super.ptr);

  /// Creates a new instance of [IUIAutomationCondition] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationCondition] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationCondition.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  @override
  String toString() => 'IUIAutomationCondition(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationConditionVtbl extends Struct {
  external IUnknownVtbl base$;
}

@internal
final class IUIAutomationConditionCompanion
    extends ComCompanion<IUIAutomationCondition> {
  const IUIAutomationConditionCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationCondition Function(VTablePointer) get fromPointer =>
      IUIAutomationCondition.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationCondition;
}
