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
import 'iuiautomationelement7.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationElement8 = Guid.fromComponents(
  0x8c60217d,
  0x5411,
  0x4cde,
  Uint8List.fromList(const [0xbc, 0xc0, 0x1c, 0xed, 0xa2, 0x23, 0x83, 0xc]),
);

/// Extends the IUIAutomationElement7 interface.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationelement8>.
///
/// {@category com}
class IUIAutomationElement8 extends IUIAutomationElement7
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationElement8] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUIAutomationElement8]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationElement8(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationElement8Vtbl>().ref;

  /// Creates a new instance of [IUIAutomationElement8] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationElement8] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationElement8.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationElement8Vtbl _vtable;
  late final _get_CurrentHeadingLevelFn = _vtable.get_CurrentHeadingLevel
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedHeadingLevelFn = _vtable.get_CachedHeadingLevel
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();

  /// Gets the current heading level of the automation element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement8-get_currentheadinglevel>.
  UIA_HEADINGLEVEL_ID get currentHeadingLevel {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentHeadingLevelFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return UIA_HEADINGLEVEL_ID(result$);
  }

  /// Gets the cached heading level of the automation element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement8-get_cachedheadinglevel>.
  UIA_HEADINGLEVEL_ID get cachedHeadingLevel {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedHeadingLevelFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return UIA_HEADINGLEVEL_ID(result$);
  }

  @override
  String toString() => 'IUIAutomationElement8(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationElement8Vtbl extends Struct {
  external IUIAutomationElement7Vtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentHeadingLevel;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedHeadingLevel;
}

@internal
final class IUIAutomationElement8Companion
    extends ComCompanion<IUIAutomationElement8> {
  const IUIAutomationElement8Companion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationElement8 Function(VTablePointer) get fromPointer =>
      IUIAutomationElement8.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationElement8;
}
