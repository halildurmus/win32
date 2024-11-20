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
import 'iuiautomationelement8.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationElement9 = Guid.fromComponents(
  0x39325fac,
  0x39d,
  0x440e,
  Uint8List.fromList(const [0xa3, 0xa3, 0x5e, 0xb8, 0x1a, 0x5c, 0xec, 0xc3]),
);

/// Extends the IUIAutomationElement8 interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationelement9>.
///
/// {@category com}
class IUIAutomationElement9 extends IUIAutomationElement8
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationElement9] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUIAutomationElement9]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationElement9(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationElement9Vtbl>().ref;

  /// Creates a new instance of [IUIAutomationElement9] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationElement9] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationElement9.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationElement9Vtbl _vtable;
  late final _get_CurrentIsDialogFn = _vtable.get_CurrentIsDialog
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedIsDialogFn = _vtable.get_CachedIsDialog
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();

  /// Retrieves the current is dialog window indicator for the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement9-get_currentisdialog>.
  bool get currentIsDialog {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentIsDialogFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves the cached is dialog window indicator for the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement9-get_cachedisdialog>.
  bool get cachedIsDialog {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedIsDialogFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  @override
  String toString() => 'IUIAutomationElement9(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationElement9Vtbl extends Struct {
  external IUIAutomationElement8Vtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentIsDialog;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedIsDialog;
}

@internal
final class IUIAutomationElement9Companion
    extends ComCompanion<IUIAutomationElement9> {
  const IUIAutomationElement9Companion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationElement9 Function(VTablePointer) get fromPointer =>
      IUIAutomationElement9.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationElement9;
}
