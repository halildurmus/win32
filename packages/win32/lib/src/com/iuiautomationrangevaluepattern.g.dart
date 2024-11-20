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
final IID_IUIAutomationRangeValuePattern = Guid.fromComponents(
  0x59213f4f,
  0x7346,
  0x49e5,
  Uint8List.fromList(const [0xb1, 0x20, 0x80, 0x55, 0x59, 0x87, 0xa1, 0x48]),
);

/// Provides access to a control that presents a range of values.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationrangevaluepattern>.
///
/// {@category com}
class IUIAutomationRangeValuePattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationRangeValuePattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationRangeValuePattern] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationRangeValuePattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationRangeValuePatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationRangeValuePattern] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationRangeValuePattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationRangeValuePattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationRangeValuePatternVtbl _vtable;
  late final _SetValueFn =
      _vtable.SetValue.asFunction<int Function(VTablePointer, double)>();
  late final _get_CurrentValueFn = _vtable.get_CurrentValue
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CurrentIsReadOnlyFn = _vtable.get_CurrentIsReadOnly
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentMaximumFn = _vtable.get_CurrentMaximum
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CurrentMinimumFn = _vtable.get_CurrentMinimum
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CurrentLargeChangeFn = _vtable.get_CurrentLargeChange
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CurrentSmallChangeFn = _vtable.get_CurrentSmallChange
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CachedValueFn = _vtable.get_CachedValue
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CachedIsReadOnlyFn = _vtable.get_CachedIsReadOnly
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedMaximumFn = _vtable.get_CachedMaximum
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CachedMinimumFn = _vtable.get_CachedMinimum
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CachedLargeChangeFn = _vtable.get_CachedLargeChange
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CachedSmallChangeFn = _vtable.get_CachedSmallChange
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();

  /// Sets the value of the control.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationrangevaluepattern-setvalue>.
  @pragma('vm:prefer-inline')
  void setValue(double val) {
    final hr$ = HRESULT(_SetValueFn(ptr, val));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the value of the control.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationrangevaluepattern-get_currentvalue>.
  double get currentValue {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CurrentValueFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Indicates whether the value of the element can be changed.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationrangevaluepattern-get_currentisreadonly>.
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

  /// Retrieves the maximum value of the control.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationrangevaluepattern-get_currentmaximum>.
  double get currentMaximum {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CurrentMaximumFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the minimum value of the control.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationrangevaluepattern-get_currentminimum>.
  double get currentMinimum {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CurrentMinimumFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the value that is added to or subtracted from the value of the
  /// control when a large change is made, such as when the PAGE DOWN key is
  /// pressed.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationrangevaluepattern-get_currentlargechange>.
  double get currentLargeChange {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CurrentLargeChangeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the value that is added to or subtracted from the value of the
  /// control when a small change is made, such as when an arrow key is pressed.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationrangevaluepattern-get_currentsmallchange>.
  double get currentSmallChange {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CurrentSmallChangeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached value of the control.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationrangevaluepattern-get_cachedvalue>.
  double get cachedValue {
    final retVal = loggingCalloc<Double>();
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
  /// can be changed.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationrangevaluepattern-get_cachedisreadonly>.
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

  /// Retrieves the cached maximum value of the control.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationrangevaluepattern-get_cachedmaximum>.
  double get cachedMaximum {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CachedMaximumFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached minimum value of the control.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationrangevaluepattern-get_cachedminimum>.
  double get cachedMinimum {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CachedMinimumFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves, from the cache, the value that is added to or subtracted from
  /// the value of the control when a large change is made, such as when the
  /// PAGE DOWN key is pressed.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationrangevaluepattern-get_cachedlargechange>.
  double get cachedLargeChange {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CachedLargeChangeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves, from the cache, the value that is added to or subtracted from
  /// the value of the control when a small change is made, such as when an
  /// arrow key is pressed.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationrangevaluepattern-get_cachedsmallchange>.
  double get cachedSmallChange {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CachedSmallChangeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  @override
  String toString() => 'IUIAutomationRangeValuePattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationRangeValuePatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Double val)>
  >
  SetValue;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CurrentValue;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentIsReadOnly;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CurrentMaximum;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CurrentMinimum;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CurrentLargeChange;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CurrentSmallChange;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CachedValue;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedIsReadOnly;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CachedMaximum;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CachedMinimum;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CachedLargeChange;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CachedSmallChange;
}

@internal
final class IUIAutomationRangeValuePatternCompanion
    extends ComCompanion<IUIAutomationRangeValuePattern> {
  const IUIAutomationRangeValuePatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationRangeValuePattern Function(VTablePointer) get fromPointer =>
      IUIAutomationRangeValuePattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationRangeValuePattern;
}
