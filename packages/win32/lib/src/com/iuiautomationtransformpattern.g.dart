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
final IID_IUIAutomationTransformPattern = Guid.fromComponents(
  0xa9b55844,
  0xa55d,
  0x4ef0,
  Uint8List.fromList(const [0x92, 0x6d, 0x56, 0x9c, 0x16, 0xff, 0x89, 0xbb]),
);

/// Provides access to a control that can be moved, resized, or rotated.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtransformpattern>.
///
/// {@category com}
class IUIAutomationTransformPattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationTransformPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationTransformPattern] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationTransformPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationTransformPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationTransformPattern] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationTransformPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationTransformPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationTransformPatternVtbl _vtable;
  late final _MoveFn =
      _vtable.Move.asFunction<int Function(VTablePointer, double, double)>();
  late final _ResizeFn =
      _vtable.Resize.asFunction<int Function(VTablePointer, double, double)>();
  late final _RotateFn =
      _vtable.Rotate.asFunction<int Function(VTablePointer, double)>();
  late final _get_CurrentCanMoveFn = _vtable.get_CurrentCanMove
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentCanResizeFn = _vtable.get_CurrentCanResize
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentCanRotateFn = _vtable.get_CurrentCanRotate
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedCanMoveFn = _vtable.get_CachedCanMove
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedCanResizeFn = _vtable.get_CachedCanResize
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedCanRotateFn = _vtable.get_CachedCanRotate
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();

  /// Moves the UI Automation element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern-move>.
  @pragma('vm:prefer-inline')
  void move(double x, double y) {
    final hr$ = HRESULT(_MoveFn(ptr, x, y));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Resizes the UI Automation element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern-resize>.
  @pragma('vm:prefer-inline')
  void resize(double width, double height) {
    final hr$ = HRESULT(_ResizeFn(ptr, width, height));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Rotates the UI Automation element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern-rotate>.
  @pragma('vm:prefer-inline')
  void rotate(double degrees) {
    final hr$ = HRESULT(_RotateFn(ptr, degrees));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Indicates whether the element can be moved.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern-get_currentcanmove>.
  bool get currentCanMove {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentCanMoveFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Indicates whether the element can be resized.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern-get_currentcanresize>.
  bool get currentCanResize {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentCanResizeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Indicates whether the element can be rotated.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern-get_currentcanrotate>.
  bool get currentCanRotate {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentCanRotateFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves a cached value that indicates whether the element can be moved.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern-get_cachedcanmove>.
  bool get cachedCanMove {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedCanMoveFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves a cached value that indicates whether the element can be
  /// resized.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern-get_cachedcanresize>.
  bool get cachedCanResize {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedCanResizeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves a cached value that indicates whether the element can be
  /// rotated.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtransformpattern-get_cachedcanrotate>.
  bool get cachedCanRotate {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedCanRotateFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  @override
  String toString() => 'IUIAutomationTransformPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationTransformPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Double x, Double y)>
  >
  Move;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Double width, Double height)
    >
  >
  Resize;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Double degrees)>
  >
  Rotate;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentCanMove;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentCanResize;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentCanRotate;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedCanMove;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedCanResize;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedCanRotate;
}

@internal
final class IUIAutomationTransformPatternCompanion
    extends ComCompanion<IUIAutomationTransformPattern> {
  const IUIAutomationTransformPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationTransformPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationTransformPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationTransformPattern;
}
