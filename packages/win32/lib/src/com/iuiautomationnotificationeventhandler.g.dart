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
final IID_IUIAutomationNotificationEventHandler = Guid.fromComponents(
  0xc7cb2637,
  0xe6c2,
  0x4d0c,
  Uint8List.fromList(const [0x85, 0xde, 0x49, 0x48, 0xc0, 0x21, 0x75, 0xc7]),
);

/// Exposes a method to handle Microsoft UI Automation notification events.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationnotificationeventhandler>.
///
/// {@category com}
class IUIAutomationNotificationEventHandler extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationNotificationEventHandler] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationNotificationEventHandler] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationNotificationEventHandler(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationNotificationEventHandlerVtbl>().ref;

  final IUIAutomationNotificationEventHandlerVtbl _vtable;
  late final _HandleNotificationEventFn =
      _vtable.HandleNotificationEvent.asFunction<
        int Function(VTablePointer, VTablePointer, int, int, BSTR, BSTR)
      >();

  /// Handles a Microsoft UI Automation notification event.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationnotificationeventhandler-handlenotificationevent>.
  @pragma('vm:prefer-inline')
  void handleNotificationEvent(
    IUIAutomationElement? sender,
    NotificationKind notificationKind,
    NotificationProcessing notificationProcessing,
    BSTR displayString,
    BSTR activityId,
  ) {
    final hr$ = HRESULT(
      _HandleNotificationEventFn(
        ptr,
        sender?.ptr ?? nullptr,
        notificationKind,
        notificationProcessing,
        displayString,
        activityId,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomationNotificationEventHandler(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationNotificationEventHandlerVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer sender,
        Int32 notificationKind,
        Int32 notificationProcessing,
        BSTR displayString,
        BSTR activityId,
      )
    >
  >
  HandleNotificationEvent;
}

@internal
final class IUIAutomationNotificationEventHandlerCompanion
    extends ComCompanion<IUIAutomationNotificationEventHandler> {
  const IUIAutomationNotificationEventHandlerCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationNotificationEventHandler Function(VTablePointer)
  get fromPointer => IUIAutomationNotificationEventHandler.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationNotificationEventHandler;
}
