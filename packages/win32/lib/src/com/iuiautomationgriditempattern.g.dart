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
final IID_IUIAutomationGridItemPattern = Guid.fromComponents(
  0x78f8ef57,
  0x66c3,
  0x4e09,
  Uint8List.fromList(const [0xbd, 0x7c, 0xe7, 0x9b, 0x20, 0x4, 0x89, 0x4d]),
);

/// Provides access to a child control in a grid-style container that supports
/// the IUIAutomationGridPattern interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationgriditempattern>.
///
/// {@category com}
class IUIAutomationGridItemPattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationGridItemPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationGridItemPattern] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationGridItemPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationGridItemPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationGridItemPattern] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationGridItemPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationGridItemPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationGridItemPatternVtbl _vtable;
  late final _get_CurrentContainingGridFn = _vtable.get_CurrentContainingGrid
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CurrentRowFn = _vtable.get_CurrentRow
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CurrentColumnFn = _vtable.get_CurrentColumn
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CurrentRowSpanFn = _vtable.get_CurrentRowSpan
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CurrentColumnSpanFn = _vtable.get_CurrentColumnSpan
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedContainingGridFn = _vtable.get_CachedContainingGrid
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CachedRowFn = _vtable.get_CachedRow
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedColumnFn = _vtable.get_CachedColumn
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedRowSpanFn = _vtable.get_CachedRowSpan
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedColumnSpanFn = _vtable.get_CachedColumnSpan
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();

  /// Retrieves the element that contains the grid item.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgriditempattern-get_currentcontaininggrid>.
  IUIAutomationElement? get currentContainingGrid {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CurrentContainingGridFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the zero-based index of the row that contains the grid item.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgriditempattern-get_currentrow>.
  int get currentRow {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentRowFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the zero-based index of the column that contains the item.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgriditempattern-get_currentcolumn>.
  int get currentColumn {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentColumnFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the number of rows spanned by the grid item.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgriditempattern-get_currentrowspan>.
  int get currentRowSpan {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentRowSpanFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the number of columns spanned by the grid item.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgriditempattern-get_currentcolumnspan>.
  int get currentColumnSpan {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentColumnSpanFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached element that contains the grid item.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgriditempattern-get_cachedcontaininggrid>.
  IUIAutomationElement? get cachedContainingGrid {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CachedContainingGridFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves the cached zero-based index of the row that contains the item.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgriditempattern-get_cachedrow>.
  int get cachedRow {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedRowFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached zero-based index of the column that contains the grid
  /// item.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgriditempattern-get_cachedcolumn>.
  int get cachedColumn {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedColumnFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached number of rows spanned by a grid item.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgriditempattern-get_cachedrowspan>.
  int get cachedRowSpan {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedRowSpanFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached number of columns spanned by the grid item.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationgriditempattern-get_cachedcolumnspan>.
  int get cachedColumnSpan {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedColumnSpanFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  @override
  String toString() => 'IUIAutomationGridItemPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationGridItemPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CurrentContainingGrid;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentRow;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentColumn;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentRowSpan;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentColumnSpan;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CachedContainingGrid;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedRow;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedColumn;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedRowSpan;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedColumnSpan;
}

@internal
final class IUIAutomationGridItemPatternCompanion
    extends ComCompanion<IUIAutomationGridItemPattern> {
  const IUIAutomationGridItemPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationGridItemPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationGridItemPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationGridItemPattern;
}
