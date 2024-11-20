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
final IID_IUIAutomationInvokePattern = Guid.fromComponents(
  0xfb377fbe,
  0x8ea6,
  0x46d5,
  Uint8List.fromList(const [0x9c, 0x73, 0x64, 0x99, 0x64, 0x2d, 0x30, 0x59]),
);

/// Exposes a method that enables a client application to invoke the action of a
/// control (typically a button).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationinvokepattern>.
///
/// {@category com}
class IUIAutomationInvokePattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationInvokePattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationInvokePattern] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationInvokePattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationInvokePatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationInvokePattern] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationInvokePattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationInvokePattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationInvokePatternVtbl _vtable;
  late final _InvokeFn =
      _vtable.Invoke.asFunction<int Function(VTablePointer)>();

  /// Invokes the action of a control, such as a button click.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationinvokepattern-invoke>.
  @pragma('vm:prefer-inline')
  void invoke() {
    final hr$ = HRESULT(_InvokeFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomationInvokePattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationInvokePatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Invoke;
}

@internal
final class IUIAutomationInvokePatternCompanion
    extends ComCompanion<IUIAutomationInvokePattern> {
  const IUIAutomationInvokePatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationInvokePattern Function(VTablePointer) get fromPointer =>
      IUIAutomationInvokePattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationInvokePattern;
}
