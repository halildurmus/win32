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
final IID_IUIAutomationSpreadsheetPattern = Guid.fromComponents(
  0x7517a7c8,
  0xfaae,
  0x4de9,
  Uint8List.fromList(const [0x9f, 0x8, 0x29, 0xb9, 0x1e, 0x85, 0x95, 0xc1]),
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
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationSpreadsheetPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationSpreadsheetPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationSpreadsheetPattern] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationSpreadsheetPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationSpreadsheetPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationSpreadsheetPatternVtbl _vtable;
  late final _GetItemByNameFn =
      _vtable.GetItemByName.asFunction<
        int Function(VTablePointer, BSTR, Pointer<VTablePointer>)
      >();

  /// Retrieves a UI Automation element that represents the spreadsheet cell
  /// that has the specified name.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationspreadsheetpattern-getitembyname>.
  IUIAutomationElement? getItemByName(BSTR name) {
    final element = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetItemByNameFn(ptr, name, element));
    if (hr$.isError) {
      free(element);
      throw WindowsException(hr$);
    }
    final result$ = element.value;
    free(element);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
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
        BSTR name,
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
  Guid get iid => IID_IUIAutomationSpreadsheetPattern;
}
