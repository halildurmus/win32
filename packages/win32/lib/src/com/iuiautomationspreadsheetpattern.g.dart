// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
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
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iuiautomationelement.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationSpreadsheetPattern = GUID.fromComponents(
  0x7517a7c8,
  0xfaae,
  0x4de9,
  .fromList(const [0x9f, 0x8, 0x29, 0xb9, 0x1e, 0x85, 0x95, 0xc1]),
);

/// Enables a client application to access the items (cells) in a spreadsheet.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationspreadsheetpattern>.
///
/// {@category com}
class IUIAutomationSpreadsheetPattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationSpreadsheetPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationSpreadsheetPattern] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IUIAutomationSpreadsheetPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationSpreadsheetPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationSpreadsheetPattern] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationSpreadsheetPattern] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationSpreadsheetPattern.from(IUnknown interface) =>
      interface.queryInterface();

  final IUIAutomationSpreadsheetPatternVtbl _vtable;
  late final _GetItemByNameFn =
      _vtable.GetItemByName.asFunction<
        int Function(VTablePointer, Pointer<Utf16>, Pointer<VTablePointer>)
      >();

  /// Retrieves a UI Automation element that represents the spreadsheet cell
  /// that has the specified name.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationspreadsheetpattern-getitembyname>.
  IUIAutomationElement? getItemByName(BSTR name) {
    final element = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetItemByNameFn(ptr, name, element));
    if (hr$.isError) {
      free(element);
      throw WindowsException(hr$);
    }
    final result$ = element.value;
    free(element);
    if (result$.isNull) return null;
    return .new(result$);
  }

  @override
  String toString() => 'IUIAutomationSpreadsheetPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationSpreadsheetPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf16> name,
        Pointer<VTablePointer> element,
      )
    >
  >
  GetItemByName;
}

@internal
final class IUIAutomationSpreadsheetPatternCompanion
    extends ComCompanion<IUIAutomationSpreadsheetPattern> {
  const IUIAutomationSpreadsheetPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationSpreadsheetPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationSpreadsheetPattern.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IUIAutomationSpreadsheetPattern;
}
