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
import 'iuiautomationelement2.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationElement3 = Guid.fromComponents(
  0x8471df34,
  0xaee0,
  0x4a01,
  Uint8List.fromList(const [0xa7, 0xde, 0x7d, 0xb9, 0xaf, 0x12, 0xc2, 0x96]),
);

/// Extends the IUIAutomationElement2 interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationelement3>.
///
/// {@category com}
class IUIAutomationElement3 extends IUIAutomationElement2
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationElement3] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUIAutomationElement3]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationElement3(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationElement3Vtbl>().ref;

  /// Creates a new instance of [IUIAutomationElement3] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationElement3] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationElement3.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationElement3Vtbl _vtable;
  late final _ShowContextMenuFn =
      _vtable.ShowContextMenu.asFunction<int Function(VTablePointer)>();
  late final _get_CurrentIsPeripheralFn = _vtable.get_CurrentIsPeripheral
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedIsPeripheralFn = _vtable.get_CachedIsPeripheral
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();

  /// Programmatically invokes a context menu on the target element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement3-showcontextmenu>.
  @pragma('vm:prefer-inline')
  void showContextMenu() {
    final hr$ = HRESULT(_ShowContextMenuFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the current peripheral UI indicator for the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement3-get_currentisperipheral>.
  bool get currentIsPeripheral {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentIsPeripheralFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves the cached peripheral UI indicator for the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement3-get_cachedisperipheral>.
  bool get cachedIsPeripheral {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedIsPeripheralFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  @override
  String toString() => 'IUIAutomationElement3(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationElement3Vtbl extends Struct {
  external IUIAutomationElement2Vtbl base$;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  ShowContextMenu;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentIsPeripheral;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedIsPeripheral;
}

@internal
final class IUIAutomationElement3Companion
    extends ComCompanion<IUIAutomationElement3> {
  const IUIAutomationElement3Companion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationElement3 Function(VTablePointer) get fromPointer =>
      IUIAutomationElement3.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationElement3;
}
