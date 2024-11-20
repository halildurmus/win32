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
final IID_IUIAutomationDockPattern = Guid.fromComponents(
  0xfde5ef97,
  0x1464,
  0x48f6,
  Uint8List.fromList(const [0x90, 0xbf, 0x43, 0xd0, 0x94, 0x8e, 0x86, 0xec]),
);

/// Provides access to a control that enables child elements to be arranged
/// horizontally and vertically, relative to each other.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationdockpattern>.
///
/// {@category com}
class IUIAutomationDockPattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationDockPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationDockPattern] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationDockPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationDockPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationDockPattern] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationDockPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationDockPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationDockPatternVtbl _vtable;
  late final _SetDockPositionFn =
      _vtable.SetDockPosition.asFunction<int Function(VTablePointer, int)>();
  late final _get_CurrentDockPositionFn = _vtable.get_CurrentDockPosition
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedDockPositionFn = _vtable.get_CachedDockPosition
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();

  /// Sets the dock position of this element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdockpattern-setdockposition>.
  @pragma('vm:prefer-inline')
  void setDockPosition(DockPosition dockPos) {
    final hr$ = HRESULT(_SetDockPositionFn(ptr, dockPos));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the dock position of this element within its docking container.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdockpattern-get_currentdockposition>.
  DockPosition get currentDockPosition {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentDockPositionFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return DockPosition(result$);
  }

  /// Retrieves the cached dock position of this element within its docking
  /// container.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationdockpattern-get_cacheddockposition>.
  DockPosition get cachedDockPosition {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedDockPositionFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return DockPosition(result$);
  }

  @override
  String toString() => 'IUIAutomationDockPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationDockPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 dockPos)>
  >
  SetDockPosition;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentDockPosition;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedDockPosition;
}

@internal
final class IUIAutomationDockPatternCompanion
    extends ComCompanion<IUIAutomationDockPattern> {
  const IUIAutomationDockPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationDockPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationDockPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationDockPattern;
}
