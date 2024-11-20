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
import 'iuiautomation4.g.dart';
import 'iuiautomationcacherequest.g.dart';
import 'iuiautomationelement.g.dart';
import 'iuiautomationnotificationeventhandler.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomation5 = Guid.fromComponents(
  0x25f700c8,
  0xd816,
  0x4057,
  Uint8List.fromList(const [0xa9, 0xdc, 0x3c, 0xbd, 0xee, 0x77, 0xe2, 0x56]),
);

/// Extends the IUIAutomation4 interface to expose additional methods for
/// controlling Microsoft UI Automation functionality.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomation5>.
///
/// {@category com}
class IUIAutomation5 extends IUIAutomation4 implements ComInterface {
  /// Creates a new instance of [IUIAutomation5] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUIAutomation5]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomation5(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomation5Vtbl>().ref;

  /// Creates a new instance of [IUIAutomation5] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomation5] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomation5.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomation5Vtbl _vtable;
  late final _AddNotificationEventHandlerFn =
      _vtable.AddNotificationEventHandler.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          VTablePointer,
          VTablePointer,
        )
      >();
  late final _RemoveNotificationEventHandlerFn =
      _vtable.RemoveNotificationEventHandler.asFunction<
        int Function(VTablePointer, VTablePointer, VTablePointer)
      >();

  /// Registers a method that handles notification events.
  ///
  /// **Note:** Before implementing an event handler, you should be familiar
  /// with the threading issues described in Understanding Threading Issues.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation5-addnotificationeventhandler>.
  @pragma('vm:prefer-inline')
  void addNotificationEventHandler(
    IUIAutomationElement? element,
    TreeScope scope,
    IUIAutomationCacheRequest? cacheRequest,
    IUIAutomationNotificationEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _AddNotificationEventHandlerFn(
        ptr,
        element?.ptr ?? nullptr,
        scope,
        cacheRequest?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes a notification event handler.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation5-removenotificationeventhandler>.
  @pragma('vm:prefer-inline')
  void removeNotificationEventHandler(
    IUIAutomationElement? element,
    IUIAutomationNotificationEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _RemoveNotificationEventHandlerFn(
        ptr,
        element?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomation5(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomation5Vtbl extends Struct {
  external IUIAutomation4Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        Int32 scope,
        VTablePointer cacheRequest,
        VTablePointer handler,
      )
    >
  >
  AddNotificationEventHandler;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        VTablePointer handler,
      )
    >
  >
  RemoveNotificationEventHandler;
}

@internal
final class IUIAutomation5Companion extends ComCompanion<IUIAutomation5> {
  const IUIAutomation5Companion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomation5 Function(VTablePointer) get fromPointer => IUIAutomation5.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomation5;
}
