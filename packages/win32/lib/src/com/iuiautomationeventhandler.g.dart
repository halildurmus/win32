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
final IID_IUIAutomationEventHandler = Guid.fromComponents(
  0x146c3c17,
  0xf12e,
  0x4e22,
  Uint8List.fromList(const [0x8c, 0x27, 0xf8, 0x94, 0xb9, 0xb7, 0x9c, 0x69]),
);

/// Exposes a method to handle Microsoft UI Automation events.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationeventhandler>.
///
/// {@category com}
class IUIAutomationEventHandler extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationEventHandler] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationEventHandler] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationEventHandler(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationEventHandlerVtbl>().ref;

  final IUIAutomationEventHandlerVtbl _vtable;
  late final _HandleAutomationEventFn =
      _vtable.HandleAutomationEvent.asFunction<
        int Function(VTablePointer, VTablePointer, int)
      >();

  /// Handles a Microsoft UI Automation event.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationeventhandler-handleautomationevent>.
  @pragma('vm:prefer-inline')
  void handleAutomationEvent(
    IUIAutomationElement? sender,
    UIA_EVENT_ID eventId,
  ) {
    final hr$ = HRESULT(
      _HandleAutomationEventFn(ptr, sender?.ptr ?? nullptr, eventId),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomationEventHandler(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationEventHandlerVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer sender, Int32 eventId)
    >
  >
  HandleAutomationEvent;
}

@internal
final class IUIAutomationEventHandlerCompanion
    extends ComCompanion<IUIAutomationEventHandler> {
  const IUIAutomationEventHandlerCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationEventHandler Function(VTablePointer) get fromPointer =>
      IUIAutomationEventHandler.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationEventHandler;
}
