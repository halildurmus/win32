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
final IID_IUIAutomationTableItemPattern = Guid.fromComponents(
  0xb964eb3,
  0xef2e,
  0x4464,
  Uint8List.fromList(const [0x9c, 0x79, 0x61, 0xd6, 0x17, 0x37, 0xa2, 0x7e]),
);

/// Provides access to a child element in a container that supports
/// IUIAutomationTablePattern.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtableitempattern>.
///
/// {@category com}
class IUIAutomationTableItemPattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationTableItemPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationTableItemPattern] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationTableItemPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationTableItemPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationTableItemPattern] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationTableItemPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationTableItemPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationTableItemPatternVtbl _vtable;
  late final _GetCurrentRowHeaderItemsFn =
      _vtable.GetCurrentRowHeaderItems.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetCurrentColumnHeaderItemsFn =
      _vtable.GetCurrentColumnHeaderItems.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetCachedRowHeaderItemsFn =
      _vtable.GetCachedRowHeaderItems.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetCachedColumnHeaderItemsFn =
      _vtable.GetCachedColumnHeaderItems.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Retrieves the row headers associated with a table item or cell.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtableitempattern-getcurrentrowheaderitems>.
  IUIAutomationElementArray? getCurrentRowHeaderItems() {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCurrentRowHeaderItemsFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves the column headers associated with a table item or cell.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtableitempattern-getcurrentcolumnheaderitems>.
  IUIAutomationElementArray? getCurrentColumnHeaderItems() {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCurrentColumnHeaderItemsFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves the cached row headers associated with a table item or cell.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtableitempattern-getcachedrowheaderitems>.
  IUIAutomationElementArray? getCachedRowHeaderItems() {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCachedRowHeaderItemsFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves the cached column headers associated with a table item or cell.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtableitempattern-getcachedcolumnheaderitems>.
  IUIAutomationElementArray? getCachedColumnHeaderItems() {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCachedColumnHeaderItemsFn(ptr, retVal));
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
  String toString() => 'IUIAutomationTableItemPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationTableItemPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  GetCurrentRowHeaderItems;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  GetCurrentColumnHeaderItems;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  GetCachedRowHeaderItems;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  GetCachedColumnHeaderItems;
}

@internal
final class IUIAutomationTableItemPatternCompanion
    extends ComCompanion<IUIAutomationTableItemPattern> {
  const IUIAutomationTableItemPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationTableItemPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationTableItemPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationTableItemPattern;
}
