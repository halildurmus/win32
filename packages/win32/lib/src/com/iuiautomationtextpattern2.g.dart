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
import 'iuiautomationtextpattern.g.dart';
import 'iuiautomationtextrange.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationTextPattern2 = Guid.fromComponents(
  0x506a921a,
  0xfcc9,
  0x409f,
  Uint8List.fromList(const [0xb2, 0x3b, 0x37, 0xeb, 0x74, 0x10, 0x68, 0x72]),
);

/// Extends the IUIAutomationTextPattern interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtextpattern2>.
///
/// {@category com}
class IUIAutomationTextPattern2 extends IUIAutomationTextPattern
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationTextPattern2] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationTextPattern2] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationTextPattern2(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationTextPattern2Vtbl>().ref;

  /// Creates a new instance of [IUIAutomationTextPattern2] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationTextPattern2] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationTextPattern2.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationTextPattern2Vtbl _vtable;
  late final _RangeFromAnnotationFn =
      _vtable.RangeFromAnnotation.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetCaretRangeFn =
      _vtable.GetCaretRange.asFunction<
        int Function(VTablePointer, Pointer<BOOL>, Pointer<VTablePointer>)
      >();

  /// Retrieves a text range containing the text that is the target of the
  /// annotation associated with the specified annotation element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextpattern2-rangefromannotation>.
  IUIAutomationTextRange? rangeFromAnnotation(
    IUIAutomationElement? annotation,
  ) {
    final range = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _RangeFromAnnotationFn(ptr, annotation?.ptr ?? nullptr, range),
    );
    if (hr$.isError) {
      free(range);
      throw WindowsException(hr$);
    }
    final result$ = range.value;
    free(range);
    if (result$.isNull) return null;
    return IUIAutomationTextRange(result$);
  }

  /// Retrieves a zero-length text range at the location of the caret that
  /// belongs to the text-based control.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextpattern2-getcaretrange>.
  @pragma('vm:prefer-inline')
  void getCaretRange(Pointer<BOOL> isActive, Pointer<VTablePointer> range) {
    final hr$ = HRESULT(_GetCaretRangeFn(ptr, isActive, range));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomationTextPattern2(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationTextPattern2Vtbl extends Struct {
  external IUIAutomationTextPatternVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer annotation,
        Pointer<VTablePointer> range,
      )
    >
  >
  RangeFromAnnotation;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<BOOL> isActive,
        Pointer<VTablePointer> range,
      )
    >
  >
  GetCaretRange;
}

@internal
final class IUIAutomationTextPattern2Companion
    extends ComCompanion<IUIAutomationTextPattern2> {
  const IUIAutomationTextPattern2Companion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationTextPattern2 Function(VTablePointer) get fromPointer =>
      IUIAutomationTextPattern2.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationTextPattern2;
}
