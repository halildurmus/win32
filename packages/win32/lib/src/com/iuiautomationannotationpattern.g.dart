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
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationAnnotationPattern = GUID.fromComponents(
  0x9a175b21,
  0x339e,
  0x41b1,
  .fromList(const [0x8e, 0x8b, 0x62, 0x3f, 0x6b, 0x68, 0x10, 0x98]),
);

/// Provides access to the properties of an annotation in a document.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationannotationpattern>.
///
/// {@category com}
class IUIAutomationAnnotationPattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationAnnotationPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationAnnotationPattern] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IUIAutomationAnnotationPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationAnnotationPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationAnnotationPattern] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationAnnotationPattern] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationAnnotationPattern.from(IUnknown interface) =>
      interface.queryInterface();

  final IUIAutomationAnnotationPatternVtbl _vtable;
  late final _get_CurrentAnnotationTypeIdFn = _vtable
      .get_CurrentAnnotationTypeId
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CurrentAnnotationTypeNameFn = _vtable
      .get_CurrentAnnotationTypeName
      .asFunction<int Function(VTablePointer, Pointer<Pointer<Utf16>>)>();
  late final _get_CurrentAuthorFn = _vtable.get_CurrentAuthor
      .asFunction<int Function(VTablePointer, Pointer<Pointer<Utf16>>)>();
  late final _get_CurrentDateTimeFn = _vtable.get_CurrentDateTime
      .asFunction<int Function(VTablePointer, Pointer<Pointer<Utf16>>)>();
  late final _get_CurrentTargetFn = _vtable.get_CurrentTarget
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_CachedAnnotationTypeIdFn = _vtable.get_CachedAnnotationTypeId
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedAnnotationTypeNameFn = _vtable
      .get_CachedAnnotationTypeName
      .asFunction<int Function(VTablePointer, Pointer<Pointer<Utf16>>)>();
  late final _get_CachedAuthorFn = _vtable.get_CachedAuthor
      .asFunction<int Function(VTablePointer, Pointer<Pointer<Utf16>>)>();
  late final _get_CachedDateTimeFn = _vtable.get_CachedDateTime
      .asFunction<int Function(VTablePointer, Pointer<Pointer<Utf16>>)>();
  late final _get_CachedTargetFn = _vtable.get_CachedTarget
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();

  /// Retrieves a value that identifies the annotation's type.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationannotationpattern-get_currentannotationtypeid>.
  UIA_ANNOTATIONTYPE get currentAnnotationTypeId {
    final retVal = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentAnnotationTypeIdFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return .new(result$);
  }

  /// Retrieves the localized name of this annotation's type.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationannotationpattern-get_currentannotationtypename>.
  BSTR get currentAnnotationTypeName {
    final retVal = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_CurrentAnnotationTypeNameFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return .new(result$);
  }

  /// Retrieves the name of the annotation author.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationannotationpattern-get_currentauthor>.
  BSTR get currentAuthor {
    final retVal = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_CurrentAuthorFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return .new(result$);
  }

  /// Retrieves the date and time that this annotation was created.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationannotationpattern-get_currentdatetime>.
  BSTR get currentDateTime {
    final retVal = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_CurrentDateTimeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return .new(result$);
  }

  /// Retrieves the element that is being annotated.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationannotationpattern-get_currenttarget>.
  IUIAutomationElement? get currentTarget {
    final retVal = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CurrentTargetFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return .new(result$);
  }

  /// Retrieves a cached value that identifies this annotation's type.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationannotationpattern-get_cachedannotationtypeid>.
  UIA_ANNOTATIONTYPE get cachedAnnotationTypeId {
    final retVal = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedAnnotationTypeIdFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return .new(result$);
  }

  /// Retrieves the cached localized name of this annotation's type.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationannotationpattern-get_cachedannotationtypename>.
  BSTR get cachedAnnotationTypeName {
    final retVal = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_CachedAnnotationTypeNameFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return .new(result$);
  }

  /// Retrieves the cached name of the annotation author.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationannotationpattern-get_cachedauthor>.
  BSTR get cachedAuthor {
    final retVal = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_CachedAuthorFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return .new(result$);
  }

  /// Retrieves the cached date and time that this annotation was created.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationannotationpattern-get_cacheddatetime>.
  BSTR get cachedDateTime {
    final retVal = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_CachedDateTimeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return .new(result$);
  }

  /// Retrieves the cached element that is being annotated.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationannotationpattern-get_cachedtarget>.
  IUIAutomationElement? get cachedTarget {
    final retVal = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_CachedTargetFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return .new(result$);
  }

  @override
  String toString() => 'IUIAutomationAnnotationPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationAnnotationPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentAnnotationTypeId;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> retVal)
    >
  >
  get_CurrentAnnotationTypeName;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> retVal)
    >
  >
  get_CurrentAuthor;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> retVal)
    >
  >
  get_CurrentDateTime;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CurrentTarget;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedAnnotationTypeId;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> retVal)
    >
  >
  get_CachedAnnotationTypeName;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> retVal)
    >
  >
  get_CachedAuthor;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> retVal)
    >
  >
  get_CachedDateTime;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  get_CachedTarget;
}

@internal
final class IUIAutomationAnnotationPatternCompanion
    extends ComCompanion<IUIAutomationAnnotationPattern> {
  const IUIAutomationAnnotationPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationAnnotationPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationAnnotationPattern.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IUIAutomationAnnotationPattern;
}
