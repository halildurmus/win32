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
final IID_IUIAutomationVirtualizedItemPattern = Guid.fromComponents(
  0x6ba3d7a6,
  0x4cf,
  0x4f11,
  Uint8List.fromList(const [0x87, 0x93, 0xa8, 0xd1, 0xcd, 0xe9, 0x96, 0x9f]),
);

/// Represents a virtualized item, which is an item that is represented by a
/// placeholder automation element in the Microsoft UI Automation tree.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationvirtualizeditempattern>.
///
/// {@category com}
class IUIAutomationVirtualizedItemPattern extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationVirtualizedItemPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationVirtualizedItemPattern] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationVirtualizedItemPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationVirtualizedItemPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationVirtualizedItemPattern] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationVirtualizedItemPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationVirtualizedItemPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationVirtualizedItemPatternVtbl _vtable;
  late final _RealizeFn =
      _vtable.Realize.asFunction<int Function(VTablePointer)>();

  /// Creates a full UI Automation element for a virtualized item.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationvirtualizeditempattern-realize>.
  @pragma('vm:prefer-inline')
  void realize() {
    final hr$ = HRESULT(_RealizeFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomationVirtualizedItemPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationVirtualizedItemPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Realize;
}

@internal
final class IUIAutomationVirtualizedItemPatternCompanion
    extends ComCompanion<IUIAutomationVirtualizedItemPattern> {
  const IUIAutomationVirtualizedItemPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationVirtualizedItemPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationVirtualizedItemPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationVirtualizedItemPattern;
}
