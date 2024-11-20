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
import 'iuiautomationtransformpattern.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationTransformPattern2 = Guid.fromComponents(
  0x6d74d017,
  0x6ecb,
  0x4381,
  Uint8List.fromList(const [0xb3, 0x8b, 0x3c, 0x17, 0xa4, 0x8f, 0xf1, 0xc2]),
);

/// Extends the IUIAutomationTransformPattern interface to enable Microsoft UI
/// Automation clients to programmatically access the viewport zooming
/// functionality of a control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtransformpattern2>.
///
/// {@category com}
class IUIAutomationTransformPattern2 extends IUIAutomationTransformPattern
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationTransformPattern2] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationTransformPattern2] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationTransformPattern2(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationTransformPattern2Vtbl>().ref;

  /// Creates a new instance of [IUIAutomationTransformPattern2] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationTransformPattern2] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationTransformPattern2.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationTransformPattern2Vtbl _vtable;
  late final _ZoomFn =
      _vtable.Zoom.asFunction<int Function(VTablePointer, double)>();
  late final _ZoomByUnitFn =
      _vtable.ZoomByUnit.asFunction<int Function(VTablePointer, int)>();
  late final _get_CurrentCanZoomFn = _vtable.get_CurrentCanZoom
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedCanZoomFn = _vtable.get_CachedCanZoom
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentZoomLevelFn = _vtable.get_CurrentZoomLevel
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CachedZoomLevelFn = _vtable.get_CachedZoomLevel
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CurrentZoomMinimumFn = _vtable.get_CurrentZoomMinimum
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CachedZoomMinimumFn = _vtable.get_CachedZoomMinimum
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CurrentZoomMaximumFn = _vtable.get_CurrentZoomMaximum
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();
  late final _get_CachedZoomMaximumFn = _vtable.get_CachedZoomMaximum
      .asFunction<int Function(VTablePointer, Pointer<Double>)>();

  /// Zooms the viewport of the control.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern2-zoom>.
  @pragma('vm:prefer-inline')
  void zoom(double zoomValue) {
    final hr$ = HRESULT(_ZoomFn(ptr, zoomValue));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Zooms the viewport of the control by the specified unit.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern2-zoombyunit>.
  @pragma('vm:prefer-inline')
  void zoomByUnit(ZoomUnit zoomUnit) {
    final hr$ = HRESULT(_ZoomByUnitFn(ptr, zoomUnit));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Indicates whether the control supports zooming of its viewport.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern2-get_currentcanzoom>.
  bool get currentCanZoom {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentCanZoomFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves a cached value that indicates whether the control supports
  /// zooming of its viewport.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern2-get_cachedcanzoom>.
  bool get cachedCanZoom {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedCanZoomFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves the zoom level of the control's viewport.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern2-get_currentzoomlevel>.
  double get currentZoomLevel {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CurrentZoomLevelFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached zoom level of the control's viewport.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern2-get_cachedzoomlevel>.
  double get cachedZoomLevel {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CachedZoomLevelFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the minimum zoom level of the control's viewport.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern2-get_currentzoomminimum>.
  double get currentZoomMinimum {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CurrentZoomMinimumFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached minimum zoom level of the control's viewport.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern2-get_cachedzoomminimum>.
  double get cachedZoomMinimum {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CachedZoomMinimumFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the maximum zoom level of the control's viewport.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern2-get_currentzoommaximum>.
  double get currentZoomMaximum {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CurrentZoomMaximumFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached maximum zoom level of the control's viewport.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern2-get_cachedzoommaximum>.
  double get cachedZoomMaximum {
    final retVal = loggingCalloc<Double>();
    final hr$ = HRESULT(_get_CachedZoomMaximumFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  @override
  String toString() => 'IUIAutomationTransformPattern2(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationTransformPattern2Vtbl extends Struct {
  external IUIAutomationTransformPatternVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Double zoomValue)>
  >
  Zoom;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 zoomUnit)>
  >
  ZoomByUnit;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentCanZoom;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedCanZoom;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CurrentZoomLevel;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CachedZoomLevel;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CurrentZoomMinimum;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CachedZoomMinimum;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CurrentZoomMaximum;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Double> retVal)>
  >
  get_CachedZoomMaximum;
}

@internal
final class IUIAutomationTransformPattern2Companion
    extends ComCompanion<IUIAutomationTransformPattern2> {
  const IUIAutomationTransformPattern2Companion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationTransformPattern2 Function(VTablePointer) get fromPointer =>
      IUIAutomationTransformPattern2.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationTransformPattern2;
}
