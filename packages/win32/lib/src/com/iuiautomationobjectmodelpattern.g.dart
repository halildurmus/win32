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
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationObjectModelPattern = Guid.fromComponents(
  0x71c284b3,
  0xc14d,
  0x4d14,
  Uint8List.fromList(const [0x98, 0x1e, 0x19, 0x75, 0x1b, 0xd, 0x75, 0x6d]),
);

/// Provides access to the underlying object model implemented by a control or
/// application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationobjectmodelpattern>.
///
/// {@category com}
class IUIAutomationObjectModelPattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationObjectModelPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationObjectModelPattern] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationObjectModelPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationObjectModelPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationObjectModelPattern] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationObjectModelPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationObjectModelPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationObjectModelPatternVtbl _vtable;
  late final _GetUnderlyingObjectModelFn =
      _vtable.GetUnderlyingObjectModel.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Retrieves an interface used to access the underlying object model of the
  /// provider.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationobjectmodelpattern-getunderlyingobjectmodel>.
  IUnknown? getUnderlyingObjectModel() {
    final retVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetUnderlyingObjectModelFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    if (result$.isNull) return null;
    return IUnknown(result$);
  }

  @override
  String toString() => 'IUIAutomationObjectModelPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationObjectModelPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> retVal)
    >
  >
  GetUnderlyingObjectModel;
}

@internal
final class IUIAutomationObjectModelPatternCompanion
    extends ComCompanion<IUIAutomationObjectModelPattern> {
  const IUIAutomationObjectModelPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationObjectModelPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationObjectModelPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationObjectModelPattern;
}
