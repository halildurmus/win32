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
import 'iuiautomationtextrange.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationTextChildPattern = Guid.fromComponents(
  0x6552b038,
  0xae05,
  0x40c8,
  Uint8List.fromList(const [0xab, 0xfd, 0xaa, 0x8, 0x35, 0x2a, 0xab, 0x86]),
);

/// Provides access a text-based control (or an object embedded in text) that is
/// a child or descendant of another text-based control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtextchildpattern>.
///
/// {@category com}
class IUIAutomationTextChildPattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationTextChildPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationTextChildPattern] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationTextChildPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationTextChildPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationTextChildPattern] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationTextChildPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationTextChildPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationTextChildPatternVtbl _vtable;
  late final _get_TextContainerFn = _vtable.get_TextContainer
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();
  late final _get_TextRangeFn = _vtable.get_TextRange
      .asFunction<int Function(VTablePointer, Pointer<VTablePointer>)>();

  /// Retrieves this element's nearest ancestor element that supports the Text
  /// control pattern.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextchildpattern-get_textcontainer>.
  IUIAutomationElement? get textContainer {
    final container = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_TextContainerFn(ptr, container));
    if (hr$.isError) {
      free(container);
      throw WindowsException(hr$);
    }
    final result$ = container.value;
    free(container);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  /// Retrieves a text range that encloses this child element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextchildpattern-get_textrange>.
  IUIAutomationTextRange? get textRange {
    final range = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_get_TextRangeFn(ptr, range));
    if (hr$.isError) {
      free(range);
      throw WindowsException(hr$);
    }
    final result$ = range.value;
    free(range);
    if (result$.isNull) return null;
    return IUIAutomationTextRange(result$);
  }

  @override
  String toString() => 'IUIAutomationTextChildPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationTextChildPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> container)
    >
  >
  get_TextContainer;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> range)
    >
  >
  get_TextRange;
}

@internal
final class IUIAutomationTextChildPatternCompanion
    extends ComCompanion<IUIAutomationTextChildPattern> {
  const IUIAutomationTextChildPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationTextChildPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationTextChildPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationTextChildPattern;
}
