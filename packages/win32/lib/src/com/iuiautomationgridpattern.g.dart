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
final IID_IUIAutomationGridPattern = Guid.fromComponents(
  0x414c3cdc,
  0x856b,
  0x4f5b,
  Uint8List.fromList(const [0x85, 0x38, 0x31, 0x31, 0xc6, 0x30, 0x25, 0x50]),
);

/// Provides access to a control that acts as a container for a collection of
/// child controls that are organized in a two-dimensional logical coordinate
/// system that can be traversed by row and column.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationgridpattern>.
///
/// {@category com}
class IUIAutomationGridPattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationGridPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationGridPattern] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationGridPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationGridPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationGridPattern] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationGridPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationGridPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationGridPatternVtbl _vtable;
  late final _GetItemFn =
      _vtable.GetItem.asFunction<
        int Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _get_CurrentRowCountFn = _vtable.get_CurrentRowCount
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CurrentColumnCountFn = _vtable.get_CurrentColumnCount
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedRowCountFn = _vtable.get_CachedRowCount
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedColumnCountFn = _vtable.get_CachedColumnCount
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();

  /// Retrieves a UI Automation element representing an item in the grid.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgridpattern-getitem>.
  IUIAutomationElement? getItem(int row, int column) {
    final element = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetItemFn(ptr, row, column, element));
    if (hr$.isError) {
      free(element);
      throw WindowsException(hr$);
    }
    final result$ = element.value;
    free(element);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the number of rows in the grid.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgridpattern-get_currentrowcount>.
  int get currentRowCount {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentRowCountFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// The number of columns in the grid.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgridpattern-get_currentcolumncount>.
  int get currentColumnCount {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentColumnCountFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached number of rows in the grid.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgridpattern-get_cachedrowcount>.
  int get cachedRowCount {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedRowCountFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached number of columns in the grid.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgridpattern-get_cachedcolumncount>.
  int get cachedColumnCount {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedColumnCountFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  @override
  String toString() => 'IUIAutomationGridPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationGridPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 row,
        Int32 column,
        Pointer<VTablePointer> element,
      )
    >
  >
  GetItem;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentRowCount;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentColumnCount;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedRowCount;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedColumnCount;
}

@internal
final class IUIAutomationGridPatternCompanion
    extends ComCompanion<IUIAutomationGridPattern> {
  const IUIAutomationGridPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationGridPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationGridPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationGridPattern;
}
