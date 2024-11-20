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
import 'iuiautomationelementarray.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationTablePattern = Guid.fromComponents(
  0x620e691c,
  0xea96,
  0x4710,
  Uint8List.fromList(const [0xa8, 0x50, 0x75, 0x4b, 0x24, 0xce, 0x24, 0x17]),
);

/// Provides access to a control that acts as a container for a collection of
/// child elements.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtablepattern>.
///
/// {@category com}
class IUIAutomationTablePattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationTablePattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationTablePattern] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationTablePattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationTablePatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationTablePattern] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationTablePattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationTablePattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationTablePatternVtbl _vtable;
  late final _GetCurrentRowHeadersFn =
      _vtable.GetCurrentRowHeaders.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetCurrentColumnHeadersFn =
      _vtable.GetCurrentColumnHeaders.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _get_CurrentRowOrColumnMajorFn = _vtable
      .get_CurrentRowOrColumnMajor
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _GetCachedRowHeadersFn =
      _vtable.GetCachedRowHeaders.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetCachedColumnHeadersFn =
      _vtable.GetCachedColumnHeaders.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _get_CachedRowOrColumnMajorFn = _vtable.get_CachedRowOrColumnMajor
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();

  /// Retrieves a collection of UI Automation elements representing all the row
  /// headers in a table.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtablepattern-getcurrentrowheaders>.
  IUIAutomationElementArray? getCurrentRowHeaders() {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCurrentRowHeadersFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves a collection of UI Automation elements representing all the
  /// column headers in a table.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtablepattern-getcurrentcolumnheaders>.
  IUIAutomationElementArray? getCurrentColumnHeaders() {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCurrentColumnHeadersFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves the primary direction of traversal for the table.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtablepattern-get_currentroworcolumnmajor>.
  RowOrColumnMajor get currentRowOrColumnMajor {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentRowOrColumnMajorFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return RowOrColumnMajor(result$);
  }

  /// Retrieves a cached collection of UI Automation elements representing all
  /// the row headers in a table.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtablepattern-getcachedrowheaders>.
  IUIAutomationElementArray? getCachedRowHeaders() {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCachedRowHeadersFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves a cached collection of UI Automation elements representing all
  /// the column headers in a table.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtablepattern-getcachedcolumnheaders>.
  IUIAutomationElementArray? getCachedColumnHeaders() {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCachedColumnHeadersFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves the cached primary direction of traversal for the table.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtablepattern-get_cachedroworcolumnmajor>.
  RowOrColumnMajor get cachedRowOrColumnMajor {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedRowOrColumnMajorFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return RowOrColumnMajor(result$);
  }

  @override
  String toString() => 'IUIAutomationTablePattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationTablePatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  GetCurrentRowHeaders;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  GetCurrentColumnHeaders;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentRowOrColumnMajor;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  GetCachedRowHeaders;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  GetCachedColumnHeaders;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedRowOrColumnMajor;
}

@internal
final class IUIAutomationTablePatternCompanion
    extends ComCompanion<IUIAutomationTablePattern> {
  const IUIAutomationTablePatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationTablePattern Function(VTablePointer) get fromPointer =>
      IUIAutomationTablePattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationTablePattern;
}
