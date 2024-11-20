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
final IID_IUIAutomationMultipleViewPattern = Guid.fromComponents(
  0x8d253c91,
  0x1dc5,
  0x4bb5,
  Uint8List.fromList(const [0xb1, 0x8f, 0xad, 0xe1, 0x6f, 0xa4, 0x95, 0xe8]),
);

/// Provides access to a control that can switch between multiple
/// representations of the same information or set of child controls.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationmultipleviewpattern>.
///
/// {@category com}
class IUIAutomationMultipleViewPattern extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationMultipleViewPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationMultipleViewPattern] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationMultipleViewPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationMultipleViewPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationMultipleViewPattern] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationMultipleViewPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationMultipleViewPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationMultipleViewPatternVtbl _vtable;
  late final _GetViewNameFn =
      _vtable.GetViewName.asFunction<
        int Function(VTablePointer, int, Pointer<BSTR>)
      >();
  late final _SetCurrentViewFn =
      _vtable.SetCurrentView.asFunction<int Function(VTablePointer, int)>();
  late final _get_CurrentCurrentViewFn = _vtable.get_CurrentCurrentView
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _GetCurrentSupportedViewsFn =
      _vtable.GetCurrentSupportedViews.asFunction<
        int Function(VTablePointer, Pointer<Pointer<SAFEARRAY>>)
      >();
  late final _get_CachedCurrentViewFn = _vtable.get_CachedCurrentView
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _GetCachedSupportedViewsFn =
      _vtable.GetCachedSupportedViews.asFunction<
        int Function(VTablePointer, Pointer<Pointer<SAFEARRAY>>)
      >();

  /// Retrieves the name of a control-specific view.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationmultipleviewpattern-getviewname>.
  BSTR getViewName(int view) {
    final name = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_GetViewNameFn(ptr, view, name));
    if (hr$.isError) {
      free(name);
      throw WindowsException(hr$);
    }
    final result$ = name.value;
    free(name);
    return result$;
  }

  /// Sets the view of the control.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationmultipleviewpattern-setcurrentview>.
  @pragma('vm:prefer-inline')
  void setCurrentView(int view) {
    final hr$ = HRESULT(_SetCurrentViewFn(ptr, view));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the control-specific identifier of the current view of the
  /// control.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationmultipleviewpattern-get_currentcurrentview>.
  int get currentCurrentView {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentCurrentViewFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a collection of control-specific view identifiers.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationmultipleviewpattern-getcurrentsupportedviews>.
  Pointer<SAFEARRAY> getCurrentSupportedViews() {
    final retVal = loggingCalloc<Pointer<SAFEARRAY>>();
    final hr$ = HRESULT(_GetCurrentSupportedViewsFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached control-specific identifier of the current view of
  /// the control.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationmultipleviewpattern-get_cachedcurrentview>.
  int get cachedCurrentView {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedCurrentViewFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a collection of control-specific view identifiers from the
  /// cache.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationmultipleviewpattern-getcachedsupportedviews>.
  Pointer<SAFEARRAY> getCachedSupportedViews() {
    final retVal = loggingCalloc<Pointer<SAFEARRAY>>();
    final hr$ = HRESULT(_GetCachedSupportedViewsFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  @override
  String toString() => 'IUIAutomationMultipleViewPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationMultipleViewPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 view, Pointer<BSTR> name)
    >
  >
  GetViewName;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 view)>
  >
  SetCurrentView;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentCurrentView;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<SAFEARRAY>> retVal)
    >
  >
  GetCurrentSupportedViews;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedCurrentView;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<SAFEARRAY>> retVal)
    >
  >
  GetCachedSupportedViews;
}

@internal
final class IUIAutomationMultipleViewPatternCompanion
    extends ComCompanion<IUIAutomationMultipleViewPattern> {
  const IUIAutomationMultipleViewPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationMultipleViewPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationMultipleViewPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationMultipleViewPattern;
}
