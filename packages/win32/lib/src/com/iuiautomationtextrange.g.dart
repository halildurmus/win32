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
import '../variant.dart';
import 'interface.g.dart';
import 'iuiautomationelement.g.dart';
import 'iuiautomationelementarray.g.dart';
import 'iuiautomationtextrange.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationTextRange = Guid.fromComponents(
  0xa543cc6a,
  0xf4ae,
  0x494b,
  Uint8List.fromList(const [0x82, 0x39, 0xc8, 0x14, 0x48, 0x11, 0x87, 0xa8]),
);

/// Provides access to a span of continuous text in a container that supports
/// the IUIAutomationTextPattern interface.
///
/// Client applications can use the IUIAutomationTextRange interface to select,
/// compare, and retrieve embedded objects from the text span.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtextrange>.
///
/// {@category com}
class IUIAutomationTextRange extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationTextRange] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUIAutomationTextRange]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationTextRange(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationTextRangeVtbl>().ref;

  /// Creates a new instance of [IUIAutomationTextRange] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationTextRange] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationTextRange.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationTextRangeVtbl _vtable;
  late final _CloneFn = _vtable
      .Clone.asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _CompareFn =
      _vtable.Compare.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<BOOL>)
      >();
  late final _CompareEndpointsFn =
      _vtable.CompareEndpoints.asFunction<
        int Function(VTablePointer, int, VTablePointer, int, Pointer<Int32>)
      >();
  late final _ExpandToEnclosingUnitFn = _vtable
      .ExpandToEnclosingUnit.asFunction<int Function(VTablePointer, int)>();
  late final _FindAttributeFn =
      _vtable.FindAttribute.asFunction<
        int Function(VTablePointer, int, VARIANT, int, Pointer<VTablePointer>)
      >();
  late final _FindTextFn =
      _vtable.FindText.asFunction<
        int Function(VTablePointer, BSTR, int, int, Pointer<VTablePointer>)
      >();
  late final _GetAttributeValueFn =
      _vtable.GetAttributeValue.asFunction<
        int Function(VTablePointer, int, Pointer<VARIANT>)
      >();
  late final _GetBoundingRectanglesFn =
      _vtable.GetBoundingRectangles.asFunction<
        int Function(VTablePointer, Pointer<Pointer<SAFEARRAY>>)
      >();
  late final _GetEnclosingElementFn =
      _vtable.GetEnclosingElement.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetTextFn = _vtable
      .GetText.asFunction<int Function(VTablePointer, int, Pointer<BSTR>)>();
  late final _MoveFn = _vtable
      .Move.asFunction<int Function(VTablePointer, int, int, Pointer<Int32>)>();
  late final _MoveEndpointByUnitFn =
      _vtable.MoveEndpointByUnit.asFunction<
        int Function(VTablePointer, int, int, int, Pointer<Int32>)
      >();
  late final _MoveEndpointByRangeFn =
      _vtable.MoveEndpointByRange.asFunction<
        int Function(VTablePointer, int, VTablePointer, int)
      >();
  late final _SelectFn =
      _vtable.Select.asFunction<int Function(VTablePointer)>();
  late final _AddToSelectionFn =
      _vtable.AddToSelection.asFunction<int Function(VTablePointer)>();
  late final _RemoveFromSelectionFn =
      _vtable.RemoveFromSelection.asFunction<int Function(VTablePointer)>();
  late final _ScrollIntoViewFn =
      _vtable.ScrollIntoView.asFunction<int Function(VTablePointer, int)>();
  late final _GetChildrenFn =
      _vtable.GetChildren.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Retrieves a new IUIAutomationTextRange identical to the original and
  /// inheriting all properties of the original.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-clone>.
  IUIAutomationTextRange? clone() {
    final clonedRange = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CloneFn(ptr, clonedRange));
    if (hr$.isError) {
      free(clonedRange);
      throw WindowsException(hr$);
    }
    final result$ = clonedRange.value;
    free(clonedRange);
    if (result$.isNull) return null;
    return IUIAutomationTextRange(result$);
  }

  /// Retrieves a value that specifies whether this text range has the same
  /// endpoints as another text range.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-compare>.
  bool compare(IUIAutomationTextRange? range) {
    final areSame = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_CompareFn(ptr, range?.ptr ?? nullptr, areSame));
    if (hr$.isError) {
      free(areSame);
      throw WindowsException(hr$);
    }
    final result$ = areSame.value;
    free(areSame);
    return result$ != FALSE;
  }

  /// Retrieves a value that specifies whether the start or end endpoint of this
  /// text range is the same as the start or end endpoint of another text range.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-compareendpoints>.
  int compareEndpoints(
    TextPatternRangeEndpoint srcEndPoint,
    IUIAutomationTextRange? range,
    TextPatternRangeEndpoint targetEndPoint,
  ) {
    final compValue = loggingCalloc<Int32>();
    final hr$ = HRESULT(
      _CompareEndpointsFn(
        ptr,
        srcEndPoint,
        range?.ptr ?? nullptr,
        targetEndPoint,
        compValue,
      ),
    );
    if (hr$.isError) {
      free(compValue);
      throw WindowsException(hr$);
    }
    final result$ = compValue.value;
    free(compValue);
    return result$;
  }

  /// Normalizes the text range by the specified text unit.
  ///
  /// The range is expanded if it is smaller than the specified unit, or
  /// shortened if it is longer than the specified unit.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-expandtoenclosingunit>.
  @pragma('vm:prefer-inline')
  void expandToEnclosingUnit(TextUnit textUnit) {
    final hr$ = HRESULT(_ExpandToEnclosingUnitFn(ptr, textUnit));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves a text range subset that has the specified text attribute value.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-findattribute>.
  IUIAutomationTextRange? findAttribute(
    UIA_TEXTATTRIBUTE_ID attr,
    VARIANT val,
    bool backward,
  ) {
    final found = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _FindAttributeFn(ptr, attr, val, backward ? TRUE : FALSE, found),
    );
    if (hr$.isError) {
      free(found);
      throw WindowsException(hr$);
    }
    final result$ = found.value;
    free(found);
    if (result$.isNull) return null;
    return IUIAutomationTextRange(result$);
  }

  /// Retrieves a text range subset that contains the specified text.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-findtext>.
  IUIAutomationTextRange? findText(BSTR text, bool backward, bool ignoreCase) {
    final found = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _FindTextFn(
        ptr,
        text,
        backward ? TRUE : FALSE,
        ignoreCase ? TRUE : FALSE,
        found,
      ),
    );
    if (hr$.isError) {
      free(found);
      throw WindowsException(hr$);
    }
    final result$ = found.value;
    free(found);
    if (result$.isNull) return null;
    return IUIAutomationTextRange(result$);
  }

  /// Retrieves the value of the specified text attribute across the entire text
  /// range.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-getattributevalue>.
  Pointer<VARIANT> getAttributeValue(UIA_TEXTATTRIBUTE_ID attr) {
    final value = loggingCalloc<VARIANT>();
    final hr$ = HRESULT(_GetAttributeValueFn(ptr, attr, value));
    if (hr$.isError) {
      free(value);
      throw WindowsException(hr$);
    }
    return value;
  }

  /// Retrieves a collection of bounding rectangles for each fully or partially
  /// visible line of text in a text range.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-getboundingrectangles>.
  Pointer<SAFEARRAY> getBoundingRectangles() {
    final boundingRects = loggingCalloc<Pointer<SAFEARRAY>>();
    final hr$ = HRESULT(_GetBoundingRectanglesFn(ptr, boundingRects));
    if (hr$.isError) {
      free(boundingRects);
      throw WindowsException(hr$);
    }
    final result$ = boundingRects.value;
    free(boundingRects);
    return result$;
  }

  /// Returns the innermost UI Automation element that encloses the text range.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-getenclosingelement>.
  IUIAutomationElement? getEnclosingElement() {
    final enclosingElement = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetEnclosingElementFn(ptr, enclosingElement));
    if (hr$.isError) {
      free(enclosingElement);
      throw WindowsException(hr$);
    }
    final result$ = enclosingElement.value;
    free(enclosingElement);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Returns the plain text of the text range.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-gettext>.
  BSTR getText(int maxLength) {
    final text = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_GetTextFn(ptr, maxLength, text));
    if (hr$.isError) {
      free(text);
      throw WindowsException(hr$);
    }
    final result$ = text.value;
    free(text);
    return result$;
  }

  /// Moves the text range forward or backward by the specified number of text
  /// units.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-move>.
  int move(TextUnit unit, int count) {
    final moved = loggingCalloc<Int32>();
    final hr$ = HRESULT(_MoveFn(ptr, unit, count, moved));
    if (hr$.isError) {
      free(moved);
      throw WindowsException(hr$);
    }
    final result$ = moved.value;
    free(moved);
    return result$;
  }

  /// Moves one endpoint of the text range the specified number of text units
  /// within the document range.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-moveendpointbyunit>.
  int moveEndpointByUnit(
    TextPatternRangeEndpoint endpoint,
    TextUnit unit,
    int count,
  ) {
    final moved = loggingCalloc<Int32>();
    final hr$ = HRESULT(
      _MoveEndpointByUnitFn(ptr, endpoint, unit, count, moved),
    );
    if (hr$.isError) {
      free(moved);
      throw WindowsException(hr$);
    }
    final result$ = moved.value;
    free(moved);
    return result$;
  }

  /// Moves one endpoint of the current text range to the specified endpoint of
  /// a second text range.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-moveendpointbyrange>.
  @pragma('vm:prefer-inline')
  void moveEndpointByRange(
    TextPatternRangeEndpoint srcEndPoint,
    IUIAutomationTextRange? range,
    TextPatternRangeEndpoint targetEndPoint,
  ) {
    final hr$ = HRESULT(
      _MoveEndpointByRangeFn(
        ptr,
        srcEndPoint,
        range?.ptr ?? nullptr,
        targetEndPoint,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Selects the span of text that corresponds to this text range, and removes
  /// any previous selection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-select>.
  @pragma('vm:prefer-inline')
  void select() {
    final hr$ = HRESULT(_SelectFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Adds the text range to the collection of selected text ranges in a control
  /// that supports multiple, disjoint spans of selected text.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-addtoselection>.
  @pragma('vm:prefer-inline')
  void addToSelection() {
    final hr$ = HRESULT(_AddToSelectionFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes the text range from an existing collection of selected text in a
  /// text container that supports multiple, disjoint selections.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-removefromselection>.
  @pragma('vm:prefer-inline')
  void removeFromSelection() {
    final hr$ = HRESULT(_RemoveFromSelectionFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Causes the text control to scroll until the text range is visible in the
  /// viewport.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-scrollintoview>.
  @pragma('vm:prefer-inline')
  void scrollIntoView(bool alignToTop) {
    final hr$ = HRESULT(_ScrollIntoViewFn(ptr, alignToTop ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves a collection of all embedded objects that fall within the text
  /// range.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrange-getchildren>.
  IUIAutomationElementArray? getChildren() {
    final children = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetChildrenFn(ptr, children));
    if (hr$.isError) {
      free(children);
      throw WindowsException(hr$);
    }
    final result$ = children.value;
    free(children);
    if (result$.isNull) return null;
    return IUIAutomationElementArray(result$);
  }

  @override
  String toString() => 'IUIAutomationTextRange(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationTextRangeVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> clonedRange)
    >
  >
  Clone;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer range,
        Pointer<BOOL> areSame,
      )
    >
  >
  Compare;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 srcEndPoint,
        VTablePointer range,
        Int32 targetEndPoint,
        Pointer<Int32> compValue,
      )
    >
  >
  CompareEndpoints;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 textUnit)>
  >
  ExpandToEnclosingUnit;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 attr,
        VARIANT val,
        BOOL backward,
        Pointer<VTablePointer> found,
      )
    >
  >
  FindAttribute;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        BSTR text,
        BOOL backward,
        BOOL ignoreCase,
        Pointer<VTablePointer> found,
      )
    >
  >
  FindText;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 attr, Pointer<VARIANT> value)
    >
  >
  GetAttributeValue;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<SAFEARRAY>> boundingRects,
      )
    >
  >
  GetBoundingRectangles;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> enclosingElement,
      )
    >
  >
  GetEnclosingElement;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 maxLength, Pointer<BSTR> text)
    >
  >
  GetText;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 unit,
        Int32 count,
        Pointer<Int32> moved,
      )
    >
  >
  Move;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 endpoint,
        Int32 unit,
        Int32 count,
        Pointer<Int32> moved,
      )
    >
  >
  MoveEndpointByUnit;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 srcEndPoint,
        VTablePointer range,
        Int32 targetEndPoint,
      )
    >
  >
  MoveEndpointByRange;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Select;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  AddToSelection;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  RemoveFromSelection;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, BOOL alignToTop)>
  >
  ScrollIntoView;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> children)
    >
  >
  GetChildren;
}

@internal
final class IUIAutomationTextRangeCompanion
    extends ComCompanion<IUIAutomationTextRange> {
  const IUIAutomationTextRangeCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationTextRange Function(VTablePointer) get fromPointer =>
      IUIAutomationTextRange.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationTextRange;
}
