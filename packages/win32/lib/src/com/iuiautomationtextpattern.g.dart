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
import '../enums.g.dart';
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
import 'iuiautomationtextrange.g.dart';
import 'iuiautomationtextrangearray.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationTextPattern = GUID.fromComponents(
  0x32eba289,
  0x3583,
  0x42c9,
  .fromList(const [0x9c, 0x59, 0x3b, 0x6d, 0x9a, 0x1e, 0x9b, 0x6a]),
);

/// Provides access to a control that contains text.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtextpattern>.
///
/// {@category com}
class IUIAutomationTextPattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationTextPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationTextPattern] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IUIAutomationTextPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationTextPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationTextPattern] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationTextPattern] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationTextPattern.from(IUnknown interface) =>
      interface.queryInterface();

  final IUIAutomationTextPatternVtbl _vtable;
  late final _RangeFromPointFn =
      _vtable.RangeFromPoint.asFunction<
        int Function(VTablePointer, POINT, Pointer<VTablePointer>)
      >();
  late final _RangeFromChildFn =
      _vtable.RangeFromChild.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetSelectionFn =
      _vtable.GetSelection.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetVisibleRangesFn =
      _vtable.GetVisibleRanges.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _get_DocumentRangeFn = _vtable.get_DocumentRange
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_SupportedTextSelectionFn = _vtable.get_SupportedTextSelection
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();

  /// Retrieves the degenerate (empty) text range nearest to the specified
  /// screen coordinates.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextpattern-rangefrompoint>.
  IUIAutomationTextRange? rangeFromPoint(POINT pt) {
    final range = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_RangeFromPointFn(ptr, pt, range));
    if (hr$.isError) {
      free(range);
      throw WindowsException(hr$);
    }
    final result$ = range.value;
    free(range);
    if (result$.isNull) return null;
    return .new(result$);
  }

  /// Retrieves a text range enclosing a child element such as an image,
  /// hyperlink, Microsoft Excel spreadsheet, or other embedded object.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextpattern-rangefromchild>.
  IUIAutomationTextRange? rangeFromChild(IUIAutomationElement? child) {
    final range = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_RangeFromChildFn(ptr, child?.ptr ?? nullptr, range));
    if (hr$.isError) {
      free(range);
      throw WindowsException(hr$);
    }
    final result$ = range.value;
    free(range);
    if (result$.isNull) return null;
    return .new(result$);
  }

  /// Retrieves a collection of text ranges that represents the currently
  /// selected text in a text-based control.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextpattern-getselection>.
  IUIAutomationTextRangeArray? getSelection() {
    final ranges = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetSelectionFn(ptr, ranges));
    if (hr$.isError) {
      free(ranges);
      throw WindowsException(hr$);
    }
    final result$ = ranges.value;
    free(ranges);
    if (result$.isNull) return null;
    return .new(result$);
  }

  /// Retrieves an array of disjoint text ranges from a text-based control where
  /// each text range represents a contiguous span of visible text.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextpattern-getvisibleranges>.
  IUIAutomationTextRangeArray? getVisibleRanges() {
    final ranges = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetVisibleRangesFn(ptr, ranges));
    if (hr$.isError) {
      free(ranges);
      throw WindowsException(hr$);
    }
    final result$ = ranges.value;
    free(ranges);
    if (result$.isNull) return null;
    return .new(result$);
  }

  /// Retrieves a text range that encloses the main text of a document.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextpattern-get_documentrange>.
  IUIAutomationTextRange? get documentRange {
    final range = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_DocumentRangeFn(ptr, range));
    if (hr$.isError) {
      free(range);
      throw WindowsException(hr$);
    }
    final result$ = range.value;
    free(range);
    if (result$.isNull) return null;
    return .new(result$);
  }

  /// Retrieves a value that specifies the type of text selection that is
  /// supported by the control.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextpattern-get_supportedtextselection>.
  SupportedTextSelection get supportedTextSelection {
    final supportedTextSelection = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(
      _get_SupportedTextSelectionFn(ptr, supportedTextSelection),
    );
    if (hr$.isError) {
      free(supportedTextSelection);
      throw WindowsException(hr$);
    }
    final result$ = supportedTextSelection.value;
    free(supportedTextSelection);
    return .new(result$);
  }

  @override
  String toString() => 'IUIAutomationTextPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationTextPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        POINT pt,
        Pointer<VTablePointer> range,
      )
    >
  >
  RangeFromPoint;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer child,
        Pointer<VTablePointer> range,
      )
    >
  >
  RangeFromChild;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ranges)
    >
  >
  GetSelection;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ranges)
    >
  >
  GetVisibleRanges;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> range)
    >
  >
  get_DocumentRange;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> supportedTextSelection)
    >
  >
  get_SupportedTextSelection;
}

@internal
final class IUIAutomationTextPatternCompanion
    extends ComCompanion<IUIAutomationTextPattern> {
  const IUIAutomationTextPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationTextPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationTextPattern.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IUIAutomationTextPattern;
}
