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
final IID_IUIAutomationFocusChangedEventHandler = Guid.fromComponents(
  0xc270f6b5,
  0x5c69,
  0x4290,
  Uint8List.fromList(const [0x97, 0x45, 0x7a, 0x7f, 0x97, 0x16, 0x94, 0x68]),
);

/// Exposes a method to handle events that are raised when the keyboard focus
/// moves to another UI Automation element.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationfocuschangedeventhandler>.
///
/// {@category com}
class IUIAutomationFocusChangedEventHandler extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationFocusChangedEventHandler] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationFocusChangedEventHandler] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationFocusChangedEventHandler(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationFocusChangedEventHandlerVtbl>().ref;

  final IUIAutomationFocusChangedEventHandlerVtbl _vtable;
  late final _HandleFocusChangedEventFn =
      _vtable.HandleFocusChangedEvent.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();

  /// Handles the event raised when the keyboard focus moves to a different UI
  /// Automation element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationfocuschangedeventhandler-handlefocuschangedevent>.
  @pragma('vm:prefer-inline')
  void handleFocusChangedEvent(IUIAutomationElement? sender) {
    final hr$ = HRESULT(
      _HandleFocusChangedEventFn(ptr, sender?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomationFocusChangedEventHandler(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationFocusChangedEventHandlerVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer sender)>
  >
  HandleFocusChangedEvent;
}

@internal
final class IUIAutomationFocusChangedEventHandlerCompanion
    extends ComCompanion<IUIAutomationFocusChangedEventHandler> {
  const IUIAutomationFocusChangedEventHandlerCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationFocusChangedEventHandler Function(VTablePointer)
  get fromPointer => IUIAutomationFocusChangedEventHandler.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationFocusChangedEventHandler;
}
