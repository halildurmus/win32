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
import 'iuiautomationelementarray.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationSelectionPattern = Guid.fromComponents(
  0x5ed5202e,
  0xb2ac,
  0x47a6,
  Uint8List.fromList(const [0xb6, 0x38, 0x4b, 0xb, 0xf1, 0x40, 0xd7, 0x8e]),
);

/// Provides access to a control that contains selectable child items.
///
/// The children of this element support IUIAutomationSelectionItemPattern.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationselectionpattern>.
///
/// {@category com}
class IUIAutomationSelectionPattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationSelectionPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationSelectionPattern] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationSelectionPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationSelectionPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationSelectionPattern] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationSelectionPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationSelectionPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationSelectionPatternVtbl _vtable;
  late final _GetCurrentSelectionFn =
      _vtable.GetCurrentSelection.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _get_CurrentCanSelectMultipleFn = _vtable
      .get_CurrentCanSelectMultiple
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentIsSelectionRequiredFn = _vtable
      .get_CurrentIsSelectionRequired
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _GetCachedSelectionFn =
      _vtable.GetCachedSelection.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _get_CachedCanSelectMultipleFn = _vtable
      .get_CachedCanSelectMultiple
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedIsSelectionRequiredFn = _vtable
      .get_CachedIsSelectionRequired
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();

  /// Retrieves the selected elements in the container.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern-getcurrentselection>.
  IUIAutomationElementArray? getCurrentSelection() {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCurrentSelectionFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Indicates whether more than one item in the container can be selected at
  /// one time.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern-get_currentcanselectmultiple>.
  bool get currentCanSelectMultiple {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentCanSelectMultipleFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Indicates whether at least one item must be selected at all times.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern-get_currentisselectionrequired>.
  bool get currentIsSelectionRequired {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentIsSelectionRequiredFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves the cached selected elements in the container.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern-getcachedselection>.
  IUIAutomationElementArray? getCachedSelection() {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCachedSelectionFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves a cached value that indicates whether more than one item in the
  /// container can be selected at one time.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern-get_cachedcanselectmultiple>.
  bool get cachedCanSelectMultiple {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedCanSelectMultipleFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves a cached value that indicates whether at least one item must be
  /// selected at all times.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern-get_cachedisselectionrequired>.
  bool get cachedIsSelectionRequired {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedIsSelectionRequiredFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  @override
  String toString() => 'IUIAutomationSelectionPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationSelectionPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  GetCurrentSelection;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentCanSelectMultiple;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentIsSelectionRequired;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  GetCachedSelection;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedCanSelectMultiple;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedIsSelectionRequired;
}

@internal
final class IUIAutomationSelectionPatternCompanion
    extends ComCompanion<IUIAutomationSelectionPattern> {
  const IUIAutomationSelectionPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationSelectionPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationSelectionPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationSelectionPattern;
}
