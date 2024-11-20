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
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationStylesPattern = Guid.fromComponents(
  0x85b5f0a2,
  0xbd79,
  0x484a,
  Uint8List.fromList(const [0xad, 0x2b, 0x38, 0x8c, 0x98, 0x38, 0xd5, 0xfb]),
);

/// Enables Microsoft UI Automation clients to retrieve the visual styles
/// associated with an element in a document.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationstylespattern>.
///
/// {@category com}
class IUIAutomationStylesPattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationStylesPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationStylesPattern] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationStylesPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationStylesPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationStylesPattern] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationStylesPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationStylesPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationStylesPatternVtbl _vtable;
  late final _get_CurrentStyleIdFn = _vtable.get_CurrentStyleId
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CurrentStyleNameFn = _vtable.get_CurrentStyleName
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentFillColorFn = _vtable.get_CurrentFillColor
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CurrentFillPatternStyleFn = _vtable
      .get_CurrentFillPatternStyle
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentShapeFn = _vtable.get_CurrentShape
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CurrentFillPatternColorFn = _vtable
      .get_CurrentFillPatternColor
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CurrentExtendedPropertiesFn = _vtable
      .get_CurrentExtendedProperties
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _GetCurrentExtendedPropertiesAsArrayFn =
      _vtable.GetCurrentExtendedPropertiesAsArray.asFunction<
        int Function(
          VTablePointer,
          Pointer<Pointer<ExtendedProperty>>,
          Pointer<Int32>,
        )
      >();
  late final _get_CachedStyleIdFn = _vtable.get_CachedStyleId
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedStyleNameFn = _vtable.get_CachedStyleName
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedFillColorFn = _vtable.get_CachedFillColor
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedFillPatternStyleFn = _vtable.get_CachedFillPatternStyle
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedShapeFn = _vtable.get_CachedShape
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedFillPatternColorFn = _vtable.get_CachedFillPatternColor
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedExtendedPropertiesFn = _vtable
      .get_CachedExtendedProperties
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _GetCachedExtendedPropertiesAsArrayFn =
      _vtable.GetCachedExtendedPropertiesAsArray.asFunction<
        int Function(
          VTablePointer,
          Pointer<Pointer<ExtendedProperty>>,
          Pointer<Int32>,
        )
      >();

  /// Retrieves the identifier of the visual style associated with an element in
  /// a document.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_currentstyleid>.
  UIA_STYLE_ID get currentStyleId {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentStyleIdFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return UIA_STYLE_ID(result$);
  }

  /// Retrieves the name of the visual style associated with an element in a
  /// document.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_currentstylename>.
  BSTR get currentStyleName {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentStyleNameFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the fill color of an element in a document.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_currentfillcolor>.
  int get currentFillColor {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentFillColorFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  BSTR get currentFillPatternStyle {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentFillPatternStyleFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the shape of an element in a document.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_currentshape>.
  BSTR get currentShape {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentShapeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the color of the pattern used to fill an element in a document.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_currentfillpatterncolor>.
  int get currentFillPatternColor {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentFillPatternColorFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a localized string that contains the list of extended properties
  /// for an element in a document.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_currentextendedproperties>.
  BSTR get currentExtendedProperties {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentExtendedPropertiesFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void getCurrentExtendedPropertiesAsArray(
    Pointer<Pointer<ExtendedProperty>> propertyArray,
    Pointer<Int32> propertyCount,
  ) {
    final hr$ = HRESULT(
      _GetCurrentExtendedPropertiesAsArrayFn(ptr, propertyArray, propertyCount),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the cached identifier of the visual style associated with an
  /// element in a document.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_cachedstyleid>.
  UIA_STYLE_ID get cachedStyleId {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedStyleIdFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return UIA_STYLE_ID(result$);
  }

  /// Retrieves the cached name of the visual style associated with an element
  /// in a document.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_cachedstylename>.
  BSTR get cachedStyleName {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedStyleNameFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached fill color of an element in a document.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_cachedfillcolor>.
  int get cachedFillColor {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedFillColorFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  BSTR get cachedFillPatternStyle {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedFillPatternStyleFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached shape of an element in a document.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_cachedshape>.
  BSTR get cachedShape {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedShapeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves the cached color of the pattern used to fill an element in a
  /// document.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_cachedfillpatterncolor>.
  int get cachedFillPatternColor {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedFillPatternColorFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Retrieves a cached localized string that contains the list of extended
  /// properties for an element in a document.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstylespattern-get_cachedextendedproperties>.
  BSTR get cachedExtendedProperties {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedExtendedPropertiesFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void getCachedExtendedPropertiesAsArray(
    Pointer<Pointer<ExtendedProperty>> propertyArray,
    Pointer<Int32> propertyCount,
  ) {
    final hr$ = HRESULT(
      _GetCachedExtendedPropertiesAsArrayFn(ptr, propertyArray, propertyCount),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomationStylesPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationStylesPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentStyleId;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentStyleName;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentFillColor;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentFillPatternStyle;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentShape;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentFillPatternColor;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentExtendedProperties;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<ExtendedProperty>> propertyArray,
        Pointer<Int32> propertyCount,
      )
    >
  >
  GetCurrentExtendedPropertiesAsArray;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedStyleId;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedStyleName;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedFillColor;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedFillPatternStyle;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedShape;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedFillPatternColor;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedExtendedProperties;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<ExtendedProperty>> propertyArray,
        Pointer<Int32> propertyCount,
      )
    >
  >
  GetCachedExtendedPropertiesAsArray;
}

@internal
final class IUIAutomationStylesPatternCompanion
    extends ComCompanion<IUIAutomationStylesPattern> {
  const IUIAutomationStylesPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationStylesPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationStylesPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationStylesPattern;
}
