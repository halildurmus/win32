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
final IID_IUIAutomationDragPattern = Guid.fromComponents(
  0x1dc7b570,
  0x1f54,
  0x4bad,
  Uint8List.fromList(const [0xbc, 0xda, 0xd3, 0x6a, 0x72, 0x2f, 0xb7, 0xbd]),
);

/// Provides access to information exposed by a UI Automation provider for an
/// element that can be dragged as part of a drag-and-drop operation.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationdragpattern>.
///
/// {@category com}
class IUIAutomationDragPattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationDragPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationDragPattern] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationDragPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationDragPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationDragPattern] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationDragPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationDragPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationDragPatternVtbl _vtable;
  late final _get_CurrentIsGrabbedFn = _vtable.get_CurrentIsGrabbed
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedIsGrabbedFn = _vtable.get_CachedIsGrabbed
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentDropEffectFn = _vtable.get_CurrentDropEffect
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedDropEffectFn = _vtable.get_CachedDropEffect
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentDropEffectsFn = _vtable.get_CurrentDropEffects
      .asFunction<int Function(VTablePointer, Pointer<Pointer<SAFEARRAY>>)>();
  late final _get_CachedDropEffectsFn = _vtable.get_CachedDropEffects
      .asFunction<int Function(VTablePointer, Pointer<Pointer<SAFEARRAY>>)>();
  late final _GetCurrentGrabbedItemsFn =
      _vtable.GetCurrentGrabbedItems.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetCachedGrabbedItemsFn =
      _vtable.GetCachedGrabbedItems.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Indicates whether the user has grabbed this element as part of a
  /// drag-and-drop operation.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdragpattern-get_currentisgrabbed>.
  bool get currentIsGrabbed {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentIsGrabbedFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves a cached value that indicates whether this element has been
  /// grabbed as part of a drag-and-drop operation.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdragpattern-get_cachedisgrabbed>.
  bool get cachedIsGrabbed {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedIsGrabbedFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves a localized string that indicates what happens when the user
  /// drops this element as part of a drag-drop operation.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdragpattern-get_currentdropeffect>.
  BSTR get currentDropEffect {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentDropEffectFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a cached localized string that indicates what happens when the
  /// user drops this element as part of a drag-and-drop operation.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdragpattern-get_cacheddropeffect>.
  BSTR get cachedDropEffect {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedDropEffectFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves an array of localized strings that enumerate the full set of
  /// effects that can happen when this element as part of a drag-and-drop
  /// operation.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdragpattern-get_currentdropeffects>.
  Pointer<SAFEARRAY> get currentDropEffects {
    final retVal = loggingCalloc<Pointer<SAFEARRAY>>();
    final hr$ = HRESULT(_get_CurrentDropEffectsFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a cached array of localized strings that enumerate the full set
  /// of effects that can happen when the user drops this element as part of a
  /// drag-and-drop operation.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdragpattern-get_cacheddropeffects>.
  Pointer<SAFEARRAY> get cachedDropEffects {
    final retVal = loggingCalloc<Pointer<SAFEARRAY>>();
    final hr$ = HRESULT(_get_CachedDropEffectsFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a collection of elements that represent the full set of items
  /// that the user is dragging as part of a drag operation.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdragpattern-getcurrentgrabbeditems>.
  IUIAutomationElementArray? getCurrentGrabbedItems() {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCurrentGrabbedItemsFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves a cached collection of elements that represent the full set of
  /// items that the user is dragging as part of a drag operation.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdragpattern-getcachedgrabbeditems>.
  IUIAutomationElementArray? getCachedGrabbedItems() {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCachedGrabbedItemsFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  @override
  String toString() => 'IUIAutomationDragPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationDragPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentIsGrabbed;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedIsGrabbed;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentDropEffect;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedDropEffect;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<SAFEARRAY>> retVal)
    >
  >
  get_CurrentDropEffects;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<SAFEARRAY>> retVal)
    >
  >
  get_CachedDropEffects;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  GetCurrentGrabbedItems;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  GetCachedGrabbedItems;
}

@internal
final class IUIAutomationDragPatternCompanion
    extends ComCompanion<IUIAutomationDragPattern> {
  const IUIAutomationDragPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationDragPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationDragPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationDragPattern;
}
