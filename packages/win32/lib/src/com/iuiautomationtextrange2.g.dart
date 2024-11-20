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
import 'iuiautomationtextrange.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationTextRange2 = Guid.fromComponents(
  0xbb9b40e0,
  0x5e04,
  0x46bd,
  Uint8List.fromList(const [0x9b, 0xe0, 0x4b, 0x60, 0x1b, 0x9a, 0xfa, 0xd4]),
);

/// Extends the IUIAutomationTextRange interface to enable Microsoft UI
/// Automation clients to programmatically invoke context menus.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtextrange2>.
///
/// {@category com}
class IUIAutomationTextRange2 extends IUIAutomationTextRange
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationTextRange2] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUIAutomationTextRange2]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationTextRange2(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationTextRange2Vtbl>().ref;

  /// Creates a new instance of [IUIAutomationTextRange2] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationTextRange2] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationTextRange2.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationTextRange2Vtbl _vtable;
  late final _ShowContextMenuFn =
      _vtable.ShowContextMenu.asFunction<int Function(VTablePointer)>();

  /// Programmatically invokes a context menu on the target text range.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange2-showcontextmenu>.
  @pragma('vm:prefer-inline')
  void showContextMenu() {
    final hr$ = HRESULT(_ShowContextMenuFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomationTextRange2(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationTextRange2Vtbl extends Struct {
  external IUIAutomationTextRangeVtbl base$;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  ShowContextMenu;
}

@internal
final class IUIAutomationTextRange2Companion
    extends ComCompanion<IUIAutomationTextRange2> {
  const IUIAutomationTextRange2Companion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationTextRange2 Function(VTablePointer) get fromPointer =>
      IUIAutomationTextRange2.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationTextRange2;
}
