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
import 'iuiautomationtextrange.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationTextRangeArray = Guid.fromComponents(
  0xce4ae76a,
  0xe717,
  0x4c98,
  Uint8List.fromList(const [0x81, 0xea, 0x47, 0x37, 0x1d, 0x2, 0x8e, 0xb6]),
);

/// Represents a collection of IUIAutomationTextRange objects.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtextrangearray>.
///
/// {@category com}
class IUIAutomationTextRangeArray extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationTextRangeArray] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationTextRangeArray] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationTextRangeArray(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationTextRangeArrayVtbl>().ref;

  /// Creates a new instance of [IUIAutomationTextRangeArray] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationTextRangeArray] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationTextRangeArray.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationTextRangeArrayVtbl _vtable;
  late final _get_LengthFn = _vtable.get_Length
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _GetElementFn =
      _vtable.GetElement.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();

  /// Retrieves the number of text ranges in the collection.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrangearray-get_length>.
  int get length {
    final length = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_LengthFn(ptr, length));
    if (hr$.isError) {
      free(length);
      throw WindowsException(hr$);
    }
    final result$ = length.value;
    free(length);
    return result$;
  }

  /// Retrieves a text range from the collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextrangearray-getelement>.
  IUIAutomationTextRange? getElement(int index) {
    final element = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetElementFn(ptr, index, element));
    if (hr$.isError) {
      free(element);
      throw WindowsException(hr$);
    }
    final result$ = element.value;
    free(element);
    if (result$.isNull) return null;
    return IUIAutomationTextRange(result$);
  }

  @override
  String toString() => 'IUIAutomationTextRangeArray(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationTextRangeArrayVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> length)>
  >
  get_Length;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 index,
        Pointer<VTablePointer> element,
      )
    >
  >
  GetElement;
}

@internal
final class IUIAutomationTextRangeArrayCompanion
    extends ComCompanion<IUIAutomationTextRangeArray> {
  const IUIAutomationTextRangeArrayCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationTextRangeArray Function(VTablePointer) get fromPointer =>
      IUIAutomationTextRangeArray.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationTextRangeArray;
}
