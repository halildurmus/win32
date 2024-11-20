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
import 'iuiautomationelement.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationSelectionItemPattern = Guid.fromComponents(
  0xa8efa66a,
  0xfda,
  0x421a,
  Uint8List.fromList(const [0x91, 0x94, 0x38, 0x2, 0x1f, 0x35, 0x78, 0xea]),
);

/// Provides access to the selectable child items of a container control that
/// supports IUIAutomationSelectionPattern.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationselectionitempattern>.
///
/// {@category com}
class IUIAutomationSelectionItemPattern extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationSelectionItemPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationSelectionItemPattern] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationSelectionItemPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationSelectionItemPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationSelectionItemPattern] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationSelectionItemPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationSelectionItemPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationSelectionItemPatternVtbl _vtable;
  late final _SelectFn =
      _vtable.Select.asFunction<int Function(VTablePointer)>();
  late final _AddToSelectionFn =
      _vtable.AddToSelection.asFunction<int Function(VTablePointer)>();
  late final _RemoveFromSelectionFn =
      _vtable.RemoveFromSelection.asFunction<int Function(VTablePointer)>();
  late final _get_CurrentIsSelectedFn = _vtable.get_CurrentIsSelected
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentSelectionContainerFn = _vtable
      .get_CurrentSelectionContainer
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CachedIsSelectedFn = _vtable.get_CachedIsSelected
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedSelectionContainerFn = _vtable
      .get_CachedSelectionContainer
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();

  /// Clears any selected items and then selects the current element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionitempattern-select>.
  @pragma('vm:prefer-inline')
  void select() {
    final hr$ = HRESULT(_SelectFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds the current element to the collection of selected items.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionitempattern-addtoselection>.
  @pragma('vm:prefer-inline')
  void addToSelection() {
    final hr$ = HRESULT(_AddToSelectionFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes this element from the selection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionitempattern-removefromselection>.
  @pragma('vm:prefer-inline')
  void removeFromSelection() {
    final hr$ = HRESULT(_RemoveFromSelectionFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Indicates whether this item is selected.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionitempattern-get_currentisselected>.
  bool get currentIsSelected {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentIsSelectedFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves the element that supports IUIAutomationSelectionPattern and acts
  /// as the container for this item.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionitempattern-get_currentselectioncontainer>.
  IUIAutomationElement? get currentSelectionContainer {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CurrentSelectionContainerFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// A cached value that indicates whether this item is selected.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionitempattern-get_cachedisselected>.
  bool get cachedIsSelected {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedIsSelectedFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves the cached element that supports IUIAutomationSelectionPattern
  /// and acts as the container for this item.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionitempattern-get_cachedselectioncontainer>.
  IUIAutomationElement? get cachedSelectionContainer {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CachedSelectionContainerFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  @override
  String toString() => 'IUIAutomationSelectionItemPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationSelectionItemPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Select;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  AddToSelection;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  RemoveFromSelection;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentIsSelected;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CurrentSelectionContainer;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedIsSelected;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CachedSelectionContainer;
}

@internal
final class IUIAutomationSelectionItemPatternCompanion
    extends ComCompanion<IUIAutomationSelectionItemPattern> {
  const IUIAutomationSelectionItemPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationSelectionItemPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationSelectionItemPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationSelectionItemPattern;
}
