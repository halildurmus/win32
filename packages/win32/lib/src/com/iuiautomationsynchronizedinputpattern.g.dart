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
final IID_IUIAutomationSynchronizedInputPattern = Guid.fromComponents(
  0x2233be0b,
  0xafb7,
  0x448b,
  Uint8List.fromList(const [0x9f, 0xda, 0x3b, 0x37, 0x8a, 0xa5, 0xea, 0xe1]),
);

/// Provides access to the keyboard or mouse input of a control.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationsynchronizedinputpattern>.
///
/// {@category com}
class IUIAutomationSynchronizedInputPattern extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationSynchronizedInputPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationSynchronizedInputPattern] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationSynchronizedInputPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationSynchronizedInputPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationSynchronizedInputPattern] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationSynchronizedInputPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationSynchronizedInputPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationSynchronizedInputPatternVtbl _vtable;
  late final _StartListeningFn =
      _vtable.StartListening.asFunction<int Function(VTablePointer, int)>();
  late final _CancelFn =
      _vtable.Cancel.asFunction<int Function(VTablePointer)>();

  /// Causes the Microsoft UI Automation provider to start listening for mouse
  /// or keyboard input.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationsynchronizedinputpattern-startlistening>.
  @pragma('vm:prefer-inline')
  void startListening(SynchronizedInputType inputType) {
    final hr$ = HRESULT(_StartListeningFn(ptr, inputType));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Causes the Microsoft UI Automation provider to stop listening for mouse or
  /// keyboard input.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationsynchronizedinputpattern-cancel>.
  @pragma('vm:prefer-inline')
  void cancel() {
    final hr$ = HRESULT(_CancelFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomationSynchronizedInputPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationSynchronizedInputPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 inputType)>
  >
  StartListening;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Cancel;
}

@internal
final class IUIAutomationSynchronizedInputPatternCompanion
    extends ComCompanion<IUIAutomationSynchronizedInputPattern> {
  const IUIAutomationSynchronizedInputPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationSynchronizedInputPattern Function(VTablePointer)
  get fromPointer => IUIAutomationSynchronizedInputPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationSynchronizedInputPattern;
}
