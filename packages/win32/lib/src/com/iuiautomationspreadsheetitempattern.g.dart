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
final IID_IUIAutomationSpreadsheetItemPattern = Guid.fromComponents(
  0x7d4fb86c,
  0x8d34,
  0x40e1,
  Uint8List.fromList(const [0x8e, 0x83, 0x62, 0xc1, 0x52, 0x4, 0xe3, 0x35]),
);

/// Enables a client application to retrieve information about an item (cell) in
/// a spreadsheet.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationspreadsheetitempattern>.
///
/// {@category com}
class IUIAutomationSpreadsheetItemPattern extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationSpreadsheetItemPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationSpreadsheetItemPattern] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationSpreadsheetItemPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationSpreadsheetItemPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationSpreadsheetItemPattern] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationSpreadsheetItemPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationSpreadsheetItemPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationSpreadsheetItemPatternVtbl _vtable;
  late final _get_CurrentFormulaFn = _vtable.get_CurrentFormula
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _GetCurrentAnnotationObjectsFn =
      _vtable.GetCurrentAnnotationObjects.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetCurrentAnnotationTypesFn =
      _vtable.GetCurrentAnnotationTypes.asFunction<
        int Function(VTablePointer, Pointer<Pointer<SAFEARRAY>>)
      >();
  late final _get_CachedFormulaFn = _vtable.get_CachedFormula
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _GetCachedAnnotationObjectsFn =
      _vtable.GetCachedAnnotationObjects.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetCachedAnnotationTypesFn =
      _vtable.GetCachedAnnotationTypes.asFunction<
        int Function(VTablePointer, Pointer<Pointer<SAFEARRAY>>)
      >();

  /// Retrieves the formula for this cell.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationspreadsheetitempattern-get_currentformula>.
  BSTR get currentFormula {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentFormulaFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves an array of elements representing the annotations associated
  /// with this spreadsheet cell.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationspreadsheetitempattern-getcurrentannotationobjects>.
  IUIAutomationElementArray? getCurrentAnnotationObjects() {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCurrentAnnotationObjectsFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves an array of annotation type identifiers indicating the types of
  /// annotations that are associated with this spreadsheet cell.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationspreadsheetitempattern-getcurrentannotationtypes>.
  Pointer<SAFEARRAY> getCurrentAnnotationTypes() {
    final retVal = loggingCalloc<Pointer<SAFEARRAY>>();
    final hr$ = HRESULT(_GetCurrentAnnotationTypesFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached formula for this cell.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationspreadsheetitempattern-get_cachedformula>.
  BSTR get cachedFormula {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedFormulaFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a cached array of elements representing the annotations
  /// associated with this spreadsheet cell.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationspreadsheetitempattern-getcachedannotationobjects>.
  IUIAutomationElementArray? getCachedAnnotationObjects() {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCachedAnnotationObjectsFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  /// Retrieves a cached array of annotation type identifiers indicating the
  /// types of annotations that are associated with this spreadsheet cell.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationspreadsheetitempattern-getcachedannotationtypes>.
  Pointer<SAFEARRAY> getCachedAnnotationTypes() {
    final retVal = loggingCalloc<Pointer<SAFEARRAY>>();
    final hr$ = HRESULT(_GetCachedAnnotationTypesFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  @override
  String toString() => 'IUIAutomationSpreadsheetItemPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationSpreadsheetItemPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentFormula;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  GetCurrentAnnotationObjects;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<SAFEARRAY>> retVal)
    >
  >
  GetCurrentAnnotationTypes;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedFormula;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  GetCachedAnnotationObjects;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<SAFEARRAY>> retVal)
    >
  >
  GetCachedAnnotationTypes;
}

@internal
final class IUIAutomationSpreadsheetItemPatternCompanion
    extends ComCompanion<IUIAutomationSpreadsheetItemPattern> {
  const IUIAutomationSpreadsheetItemPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationSpreadsheetItemPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationSpreadsheetItemPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationSpreadsheetItemPattern;
}
