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
final IID_IUIAutomationScrollPattern = Guid.fromComponents(
  0x88f4d42a,
  0xe881,
  0x459d,
  Uint8List.fromList(const [0xa7, 0x7c, 0x73, 0xbb, 0xbb, 0x7e, 0x2, 0xdc]),
);

/// Provides access to a control that acts as a scrollable container for a
/// collection of child elements.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationscrollpattern>.
///
/// {@category com}
class IUIAutomationScrollPattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationScrollPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationScrollPattern] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationScrollPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationScrollPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationScrollPattern] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationScrollPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationScrollPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationScrollPatternVtbl _vtable;
  late final _ScrollFn =
      _vtable.Scroll.asFunction<int Function(VTablePointer, int, int)>();
  late final _SetScrollPercentFn =
      _vtable.SetScrollPercent.asFunction<
        int Function(VTablePointer, double, double)
      >();
  late final _get_CurrentHorizontalScrollPercentFn = _vtable
      .get_CurrentHorizontalScrollPercent
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CurrentVerticalScrollPercentFn = _vtable
      .get_CurrentVerticalScrollPercent
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CurrentHorizontalViewSizeFn = _vtable
      .get_CurrentHorizontalViewSize
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CurrentVerticalViewSizeFn = _vtable
      .get_CurrentVerticalViewSize
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CurrentHorizontallyScrollableFn = _vtable
      .get_CurrentHorizontallyScrollable
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentVerticallyScrollableFn = _vtable
      .get_CurrentVerticallyScrollable
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedHorizontalScrollPercentFn = _vtable
      .get_CachedHorizontalScrollPercent
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CachedVerticalScrollPercentFn = _vtable
      .get_CachedVerticalScrollPercent
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CachedHorizontalViewSizeFn = _vtable
      .get_CachedHorizontalViewSize
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CachedVerticalViewSizeFn = _vtable.get_CachedVerticalViewSize
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CachedHorizontallyScrollableFn = _vtable
      .get_CachedHorizontallyScrollable
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedVerticallyScrollableFn = _vtable
      .get_CachedVerticallyScrollable
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();

  /// Scrolls the visible region of the content area horizontally and
  /// vertically.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-scroll>.
  @pragma('vm:prefer-inline')
  void scroll(ScrollAmount horizontalAmount, ScrollAmount verticalAmount) {
    final hr$ = HRESULT(_ScrollFn(ptr, horizontalAmount, verticalAmount));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Sets the horizontal and vertical scroll positions as a percentage of the
  /// total content area within the UI Automation element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-setscrollpercent>.
  @pragma('vm:prefer-inline')
  void setScrollPercent(double horizontalPercent, double verticalPercent) {
    final hr$ = HRESULT(
      _SetScrollPercentFn(ptr, horizontalPercent, verticalPercent),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the horizontal scroll position.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_currenthorizontalscrollpercent>.
  double get currentHorizontalScrollPercent {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CurrentHorizontalScrollPercentFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the vertical scroll position.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_currentverticalscrollpercent>.
  double get currentVerticalScrollPercent {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CurrentVerticalScrollPercentFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the horizontal size of the viewable region of a scrollable
  /// element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_currenthorizontalviewsize>.
  double get currentHorizontalViewSize {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CurrentHorizontalViewSizeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the vertical size of the viewable region of a scrollable
  /// element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_currentverticalviewsize>.
  double get currentVerticalViewSize {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CurrentVerticalViewSizeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Indicates whether the element can scroll horizontally.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_currenthorizontallyscrollable>.
  bool get currentHorizontallyScrollable {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentHorizontallyScrollableFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Indicates whether the element can scroll vertically.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_currentverticallyscrollable>.
  bool get currentVerticallyScrollable {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentVerticallyScrollableFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves the cached horizontal scroll position.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_cachedhorizontalscrollpercent>.
  double get cachedHorizontalScrollPercent {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CachedHorizontalScrollPercentFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached vertical scroll position.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_cachedverticalscrollpercent>.
  double get cachedVerticalScrollPercent {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CachedVerticalScrollPercentFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached horizontal size of the viewable region of a
  /// scrollable element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_cachedhorizontalviewsize>.
  double get cachedHorizontalViewSize {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CachedHorizontalViewSizeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached vertical size of the viewable region of a scrollable
  /// element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_cachedverticalviewsize>.
  double get cachedVerticalViewSize {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CachedVerticalViewSizeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a cached value that indicates whether the element can scroll
  /// horizontally.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_cachedhorizontallyscrollable>.
  bool get cachedHorizontallyScrollable {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedHorizontallyScrollableFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves a cached value that indicates whether the element can scroll
  /// vertically.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationscrollpattern-get_cachedverticallyscrollable>.
  bool get cachedVerticallyScrollable {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedVerticallyScrollableFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  @override
  String toString() => 'IUIAutomationScrollPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationScrollPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 horizontalAmount,
        Int32 verticalAmount,
      )
    >
  >
  Scroll;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Double horizontalPercent,
        Double verticalPercent,
      )
    >
  >
  SetScrollPercent;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CurrentHorizontalScrollPercent;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CurrentVerticalScrollPercent;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CurrentHorizontalViewSize;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CurrentVerticalViewSize;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentHorizontallyScrollable;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentVerticallyScrollable;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CachedHorizontalScrollPercent;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CachedVerticalScrollPercent;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CachedHorizontalViewSize;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CachedVerticalViewSize;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedHorizontallyScrollable;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedVerticallyScrollable;
}

@internal
final class IUIAutomationScrollPatternCompanion
    extends ComCompanion<IUIAutomationScrollPattern> {
  const IUIAutomationScrollPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationScrollPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationScrollPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationScrollPattern;
}
