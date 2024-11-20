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
import 'iuiautomationselectionpattern.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationSelectionPattern2 = Guid.fromComponents(
  0x532bfae,
  0xc011,
  0x4e32,
  Uint8List.fromList(const [0xa3, 0x43, 0x6d, 0x64, 0x2d, 0x79, 0x85, 0x55]),
);

/// Extends the IUIAutomationSelectionPattern interface to provide information
/// about selected items.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationselectionpattern2>.
///
/// {@category com}
class IUIAutomationSelectionPattern2 extends IUIAutomationSelectionPattern
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationSelectionPattern2] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationSelectionPattern2] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationSelectionPattern2(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationSelectionPattern2Vtbl>().ref;

  /// Creates a new instance of [IUIAutomationSelectionPattern2] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationSelectionPattern2] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationSelectionPattern2.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationSelectionPattern2Vtbl _vtable;
  late final _get_CurrentFirstSelectedItemFn = _vtable
      .get_CurrentFirstSelectedItem
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CurrentLastSelectedItemFn = _vtable
      .get_CurrentLastSelectedItem
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CurrentCurrentSelectedItemFn = _vtable
      .get_CurrentCurrentSelectedItem
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CurrentItemCountFn = _vtable.get_CurrentItemCount
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedFirstSelectedItemFn = _vtable
      .get_CachedFirstSelectedItem
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CachedLastSelectedItemFn = _vtable.get_CachedLastSelectedItem
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CachedCurrentSelectedItemFn = _vtable
      .get_CachedCurrentSelectedItem
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CachedItemCountFn = _vtable.get_CachedItemCount
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();

  /// Gets an IUIAutomationElement object representing the first item in a group
  /// of selected items.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern2-get_currentfirstselecteditem>.
  IUIAutomationElement? get currentFirstSelectedItem {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CurrentFirstSelectedItemFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Gets an IUIAutomationElement object representing the last item in a group
  /// of selected items.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern2-get_currentlastselecteditem>.
  IUIAutomationElement? get currentLastSelectedItem {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CurrentLastSelectedItemFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Gets an IUIAutomationElement object representing the currently selected
  /// item.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern2-get_currentcurrentselecteditem>.
  IUIAutomationElement? get currentCurrentSelectedItem {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CurrentCurrentSelectedItemFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Gets an integer value indicating the number of selected items.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern2-get_currentitemcount>.
  int get currentItemCount {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentItemCountFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Gets a cached IUIAutomationElement object representing the first item in a
  /// group of selected items.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern2-get_cachedfirstselecteditem>.
  IUIAutomationElement? get cachedFirstSelectedItem {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CachedFirstSelectedItemFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Gets a cached IUIAutomationElement object representing the last item in a
  /// group of selected items.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern2-get_cachedlastselecteditem>.
  IUIAutomationElement? get cachedLastSelectedItem {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CachedLastSelectedItemFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Gets a cached IUIAutomationElement object representing the currently
  /// selected item.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern2-get_cachedcurrentselecteditem>.
  IUIAutomationElement? get cachedCurrentSelectedItem {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CachedCurrentSelectedItemFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Gets a cached integer value indicating the number of selected items.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationselectionpattern2-get_cacheditemcount>.
  int get cachedItemCount {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedItemCountFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  @override
  String toString() => 'IUIAutomationSelectionPattern2(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationSelectionPattern2Vtbl extends Struct {
  external IUIAutomationSelectionPatternVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CurrentFirstSelectedItem;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CurrentLastSelectedItem;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CurrentCurrentSelectedItem;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentItemCount;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CachedFirstSelectedItem;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CachedLastSelectedItem;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CachedCurrentSelectedItem;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedItemCount;
}

@internal
final class IUIAutomationSelectionPattern2Companion
    extends ComCompanion<IUIAutomationSelectionPattern2> {
  const IUIAutomationSelectionPattern2Companion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationSelectionPattern2 Function(VTablePointer) get fromPointer =>
      IUIAutomationSelectionPattern2.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationSelectionPattern2;
}
