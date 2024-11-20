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
final IID_IUIAutomationElementArray = Guid.fromComponents(
  0x14314595,
  0xb4bc,
  0x4055,
  Uint8List.fromList(const [0x95, 0xf2, 0x58, 0xf2, 0xe4, 0x2c, 0x98, 0x55]),
);

/// Represents a collection of UI Automation elements.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationelementarray>.
///
/// {@category com}
class IUIAutomationElementArray extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationElementArray] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationElementArray] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationElementArray(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationElementArrayVtbl>().ref;

  /// Creates a new instance of [IUIAutomationElementArray] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationElementArray] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationElementArray.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationElementArrayVtbl _vtable;
  late final _get_LengthFn = _vtable.get_Length
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _GetElementFn =
      _vtable.GetElement.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();

  /// Retrieves the number of elements in the collection.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelementarray-get_length>.
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

  /// Retrieves a Microsoft UI Automation element from the collection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelementarray-getelement>.
  IUIAutomationElement? getElement(int index) {
    final element = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetElementFn(ptr, index, element));
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
  String toString() => 'IUIAutomationElementArray(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationElementArrayVtbl extends Struct {
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
final class IUIAutomationElementArrayCompanion
    extends ComCompanion<IUIAutomationElementArray> {
  const IUIAutomationElementArrayCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationElementArray Function(VTablePointer) get fromPointer =>
      IUIAutomationElementArray.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationElementArray;
}
