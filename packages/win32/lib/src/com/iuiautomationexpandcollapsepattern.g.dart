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
final IID_IUIAutomationExpandCollapsePattern = Guid.fromComponents(
  0x619be086,
  0x1f4e,
  0x4ee4,
  Uint8List.fromList(const [0xba, 0xfa, 0x21, 0x1, 0x28, 0x73, 0x87, 0x30]),
);

/// Provides access to a control that can visually expand to display content,
/// and collapse to hide content.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationexpandcollapsepattern>.
///
/// {@category com}
class IUIAutomationExpandCollapsePattern extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationExpandCollapsePattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationExpandCollapsePattern] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationExpandCollapsePattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationExpandCollapsePatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationExpandCollapsePattern] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationExpandCollapsePattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationExpandCollapsePattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationExpandCollapsePatternVtbl _vtable;
  late final _ExpandFn =
      _vtable.Expand.asFunction<int Function(VTablePointer)>();
  late final _CollapseFn =
      _vtable.Collapse.asFunction<int Function(VTablePointer)>();
  late final _get_CurrentExpandCollapseStateFn = _vtable
      .get_CurrentExpandCollapseState
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedExpandCollapseStateFn = _vtable
      .get_CachedExpandCollapseState
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();

  /// Displays all child nodes, controls, or content of the element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationexpandcollapsepattern-expand>.
  @pragma('vm:prefer-inline')
  void expand() {
    final hr$ = HRESULT(_ExpandFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Hides all child nodes, controls, or content of the element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationexpandcollapsepattern-collapse>.
  @pragma('vm:prefer-inline')
  void collapse() {
    final hr$ = HRESULT(_CollapseFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves a value that indicates the state, expanded or collapsed, of the
  /// element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationexpandcollapsepattern-get_currentexpandcollapsestate>.
  ExpandCollapseState get currentExpandCollapseState {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentExpandCollapseStateFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return ExpandCollapseState(result$);
  }

  /// Retrieves a cached value that indicates the state, expanded or collapsed,
  /// of the element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationexpandcollapsepattern-get_cachedexpandcollapsestate>.
  ExpandCollapseState get cachedExpandCollapseState {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedExpandCollapseStateFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return ExpandCollapseState(result$);
  }

  @override
  String toString() => 'IUIAutomationExpandCollapsePattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationExpandCollapsePatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Expand;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  Collapse;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentExpandCollapseState;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedExpandCollapseState;
}

@internal
final class IUIAutomationExpandCollapsePatternCompanion
    extends ComCompanion<IUIAutomationExpandCollapsePattern> {
  const IUIAutomationExpandCollapsePatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationExpandCollapsePattern Function(VTablePointer) get fromPointer =>
      IUIAutomationExpandCollapsePattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationExpandCollapsePattern;
}
