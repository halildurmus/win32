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
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationTogglePattern = Guid.fromComponents(
  0x94cf8058,
  0x9b8d,
  0x4ab9,
  Uint8List.fromList(const [0x8b, 0xfd, 0x4c, 0xd0, 0xa3, 0x3c, 0x8c, 0x70]),
);

/// Provides access to a control that can cycle through a set of states, and
/// maintain a state after it is set.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtogglepattern>.
///
/// {@category com}
class IUIAutomationTogglePattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationTogglePattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationTogglePattern] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationTogglePattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationTogglePatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationTogglePattern] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationTogglePattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationTogglePattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationTogglePatternVtbl _vtable;
  late final _ToggleFn =
      _vtable.Toggle.asFunction<int Function(VTablePointer)>();
  late final _get_CurrentToggleStateFn = _vtable.get_CurrentToggleState
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedToggleStateFn = _vtable.get_CachedToggleState
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();

  /// Cycles through the toggle states of the control.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtogglepattern-toggle>.
  @pragma('vm:prefer-inline')
  void toggle() {
    final hr$ = HRESULT(_ToggleFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the state of the control.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtogglepattern-get_currenttogglestate>.
  ToggleState get currentToggleState {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentToggleStateFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return ToggleState(result$);
  }

  /// Retrieves the cached state of the control.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtogglepattern-get_cachedtogglestate>.
  ToggleState get cachedToggleState {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedToggleStateFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return ToggleState(result$);
  }

  @override
  String toString() => 'IUIAutomationTogglePattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationTogglePatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Toggle;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentToggleState;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedToggleState;
}

@internal
final class IUIAutomationTogglePatternCompanion
    extends ComCompanion<IUIAutomationTogglePattern> {
  const IUIAutomationTogglePatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationTogglePattern Function(VTablePointer) get fromPointer =>
      IUIAutomationTogglePattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationTogglePattern;
}
