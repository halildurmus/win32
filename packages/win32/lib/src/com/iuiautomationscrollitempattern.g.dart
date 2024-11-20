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
final IID_IUIAutomationScrollItemPattern = Guid.fromComponents(
  0xb488300f,
  0xd015,
  0x4f19,
  Uint8List.fromList(const [0x9c, 0x29, 0xbb, 0x59, 0x5e, 0x36, 0x45, 0xef]),
);

/// Exposes a method that enables an item in a scrollable view to be placed in a
/// visible portion of the view.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationscrollitempattern>.
///
/// {@category com}
class IUIAutomationScrollItemPattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationScrollItemPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationScrollItemPattern] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationScrollItemPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationScrollItemPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationScrollItemPattern] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationScrollItemPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationScrollItemPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationScrollItemPatternVtbl _vtable;
  late final _ScrollIntoViewFn =
      _vtable.ScrollIntoView.asFunction<int Function(VTablePointer)>();

  /// Scrolls the content area of a container object to display the UI
  /// Automation element within the visible region (viewport) of the container.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollitempattern-scrollintoview>.
  @pragma('vm:prefer-inline')
  void scrollIntoView() {
    final hr$ = HRESULT(_ScrollIntoViewFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomationScrollItemPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationScrollItemPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  ScrollIntoView;
}

@internal
final class IUIAutomationScrollItemPatternCompanion
    extends ComCompanion<IUIAutomationScrollItemPattern> {
  const IUIAutomationScrollItemPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationScrollItemPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationScrollItemPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationScrollItemPattern;
}
