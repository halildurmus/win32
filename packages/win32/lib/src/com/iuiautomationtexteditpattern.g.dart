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
import 'iuiautomationtextpattern.g.dart';
import 'iuiautomationtextrange.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationTextEditPattern = GUID.fromComponents(
  0x17e21576,
  0x996c,
  0x4870,
  .fromList(const [0x99, 0xd9, 0xbf, 0xf3, 0x23, 0x38, 0xc, 0x6]),
);

/// Provides access to a control that modifies text, for example a control that
/// performs auto-correction or enables input composition through an Input
/// Method Editor (IME).
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtexteditpattern>.
///
/// {@category com}
class IUIAutomationTextEditPattern extends IUIAutomationTextPattern
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationTextEditPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationTextEditPattern] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IUIAutomationTextEditPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationTextEditPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationTextEditPattern] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationTextEditPattern] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationTextEditPattern.from(IUnknown interface) =>
      interface.queryInterface();

  final IUIAutomationTextEditPatternVtbl _vtable;
  late final _GetActiveCompositionFn =
      _vtable.GetActiveComposition.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetConversionTargetFn =
      _vtable.GetConversionTarget.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Returns the active composition.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtexteditpattern-getactivecomposition>.
  IUIAutomationTextRange? getActiveComposition() {
    final range = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetActiveCompositionFn(ptr, range));
    if (hr$.isError) {
      free(range);
      throw WindowsException(hr$);
    }
    final result$ = range.value;
    free(range);
    if (result$.isNull) return null;
    return .new(result$);
  }

  /// Returns the current conversion target range.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtexteditpattern-getconversiontarget>.
  IUIAutomationTextRange? getConversionTarget() {
    final range = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetConversionTargetFn(ptr, range));
    if (hr$.isError) {
      free(range);
      throw WindowsException(hr$);
    }
    final result$ = range.value;
    free(range);
    if (result$.isNull) return null;
    return .new(result$);
  }

  @override
  String toString() => 'IUIAutomationTextEditPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationTextEditPatternVtbl extends Struct {
  external IUIAutomationTextPatternVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> range)
    >
  >
  GetActiveComposition;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> range)
    >
  >
  GetConversionTarget;
}

@internal
final class IUIAutomationTextEditPatternCompanion
    extends ComCompanion<IUIAutomationTextEditPattern> {
  const IUIAutomationTextEditPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationTextEditPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationTextEditPattern.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IUIAutomationTextEditPattern;
}
