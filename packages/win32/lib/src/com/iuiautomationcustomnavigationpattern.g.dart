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
import 'iuiautomationelement.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationCustomNavigationPattern = Guid.fromComponents(
  0x1ea217a,
  0x1766,
  0x47ed,
  Uint8List.fromList(const [0xa6, 0xcc, 0xac, 0xf4, 0x92, 0x85, 0x4b, 0x1f]),
);

/// Exposes a method to support access by a Microsoft UI Automation client to
/// controls that support a custom navigation order.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationcustomnavigationpattern>.
///
/// {@category com}
class IUIAutomationCustomNavigationPattern extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationCustomNavigationPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationCustomNavigationPattern] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationCustomNavigationPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationCustomNavigationPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationCustomNavigationPattern] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationCustomNavigationPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationCustomNavigationPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationCustomNavigationPatternVtbl _vtable;
  late final _NavigateFn =
      _vtable.Navigate.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();

  /// Gets the next element in the specified direction within the logical UI
  /// tree.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationcustomnavigationpattern-navigate>.
  IUIAutomationElement? navigate(NavigateDirection direction) {
    final pRetVal = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_NavigateFn(ptr, direction, pRetVal));
    if (hr$.isError) {
      free(pRetVal);
      throw WindowsException(hr$);
    }
    final result$ = pRetVal.value;
    free(pRetVal);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  @override
  String toString() => 'IUIAutomationCustomNavigationPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationCustomNavigationPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 direction,
        Pointer<VTablePointer> pRetVal,
      )
    >
  >
  Navigate;
}

@internal
final class IUIAutomationCustomNavigationPatternCompanion
    extends ComCompanion<IUIAutomationCustomNavigationPattern> {
  const IUIAutomationCustomNavigationPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationCustomNavigationPattern Function(VTablePointer)
  get fromPointer => IUIAutomationCustomNavigationPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationCustomNavigationPattern;
}
