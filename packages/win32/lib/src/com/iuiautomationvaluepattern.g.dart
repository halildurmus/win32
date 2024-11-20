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
final IID_IUIAutomationValuePattern = Guid.fromComponents(
  0xa94cd8b1,
  0x844,
  0x4cd6,
  Uint8List.fromList(const [0x9d, 0x2d, 0x64, 0x5, 0x37, 0xab, 0x39, 0xe9]),
);

/// Provides access to a control that contains a value that does not span a
/// range and that can be represented as a string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationvaluepattern>.
///
/// {@category com}
class IUIAutomationValuePattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationValuePattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationValuePattern] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationValuePattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationValuePatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationValuePattern] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationValuePattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationValuePattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationValuePatternVtbl _vtable;
  late final _SetValueFn =
      _vtable.SetValue.asFunction<int Function(VTablePointer, BSTR)>();
  late final _get_CurrentValueFn = _vtable.get_CurrentValue
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentIsReadOnlyFn = _vtable.get_CurrentIsReadOnly
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedValueFn = _vtable.get_CachedValue
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedIsReadOnlyFn = _vtable.get_CachedIsReadOnly
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();

  /// Sets the value of the element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationvaluepattern-setvalue>.
  @pragma('vm:prefer-inline')
  void setValue(BSTR val) {
    final hr$ = HRESULT(_SetValueFn(ptr, val));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the value of the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationvaluepattern-get_currentvalue>.
  BSTR get currentValue {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentValueFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Indicates whether the value of the element is read-only.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationvaluepattern-get_currentisreadonly>.
  bool get currentIsReadOnly {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentIsReadOnlyFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves the cached value of the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationvaluepattern-get_cachedvalue>.
  BSTR get cachedValue {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedValueFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a cached value that indicates whether the value of the element
  /// is read-only.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationvaluepattern-get_cachedisreadonly>.
  bool get cachedIsReadOnly {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedIsReadOnlyFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  @override
  String toString() => 'IUIAutomationValuePattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationValuePatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, BSTR val)>
  >
  SetValue;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentValue;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentIsReadOnly;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedValue;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedIsReadOnly;
}

@internal
final class IUIAutomationValuePatternCompanion
    extends ComCompanion<IUIAutomationValuePattern> {
  const IUIAutomationValuePatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationValuePattern Function(VTablePointer) get fromPointer =>
      IUIAutomationValuePattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationValuePattern;
}
