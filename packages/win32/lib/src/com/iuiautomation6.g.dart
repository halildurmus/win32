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
import 'iuiautomation5.g.dart';
import 'iuiautomationactivetextpositionchangedeventhandler.g.dart';
import 'iuiautomationcacherequest.g.dart';
import 'iuiautomationelement.g.dart';
import 'iuiautomationeventhandlergroup.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomation6 = Guid.fromComponents(
  0xaae072da,
  0x29e3,
  0x413d,
  Uint8List.fromList(const [0x87, 0xa7, 0x19, 0x2d, 0xbf, 0x81, 0xed, 0x10]),
);

/// Extends the IUIAutomation5 interface to expose additional methods for
/// controlling Microsoft UI Automation functionality.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomation6>.
///
/// {@category com}
class IUIAutomation6 extends IUIAutomation5 implements ComInterface {
  /// Creates a new instance of [IUIAutomation6] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUIAutomation6]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomation6(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomation6Vtbl>().ref;

  /// Creates a new instance of [IUIAutomation6] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomation6] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomation6.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomation6Vtbl _vtable;
  late final _CreateEventHandlerGroupFn =
      _vtable.CreateEventHandlerGroup.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _AddEventHandlerGroupFn =
      _vtable.AddEventHandlerGroup.asFunction<
        int Function(VTablePointer, VTablePointer, VTablePointer)
      >();
  late final _RemoveEventHandlerGroupFn =
      _vtable.RemoveEventHandlerGroup.asFunction<
        int Function(VTablePointer, VTablePointer, VTablePointer)
      >();
  late final _get_ConnectionRecoveryBehaviorFn = _vtable
      .get_ConnectionRecoveryBehavior
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _put_ConnectionRecoveryBehaviorFn = _vtable
      .put_ConnectionRecoveryBehavior
      .asFunction<int Function(VTablePointer, int)>();
  late final _get_CoalesceEventsFn = _vtable.get_CoalesceEvents
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _put_CoalesceEventsFn = _vtable.put_CoalesceEvents
      .asFunction<int Function(VTablePointer, int)>();
  late final _AddActiveTextPositionChangedEventHandlerFn =
      _vtable.AddActiveTextPositionChangedEventHandler.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          VTablePointer,
          VTablePointer,
        )
      >();
  late final _RemoveActiveTextPositionChangedEventHandlerFn =
      _vtable.RemoveActiveTextPositionChangedEventHandler.asFunction<
        int Function(VTablePointer, VTablePointer, VTablePointer)
      >();

  /// Registers one or more event listeners in a single method call.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation6-createeventhandlergroup>.
  IUIAutomationEventHandlerGroup? createEventHandlerGroup() {
    final handlerGroup = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_CreateEventHandlerGroupFn(ptr, handlerGroup));
    if (hr$.isError) {
      free(handlerGroup);
      throw WindowsException(hr$);
    }
    final result$ = handlerGroup.value;
    free(handlerGroup);
    if (result$.isNull) return null;
    return IUIAutomationEventHandlerGroup(result$);
  }

  /// Registers a collection of event handler methods specified with the
  /// CreateEventHandlerGroup.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation6-addeventhandlergroup>.
  @pragma('vm:prefer-inline')
  void addEventHandlerGroup(
    IUIAutomationElement? element,
    IUIAutomationEventHandlerGroup? handlerGroup,
  ) {
    final hr$ = HRESULT(
      _AddEventHandlerGroupFn(
        ptr,
        element?.ptr ?? nullptr,
        handlerGroup?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Asynchronously removes the specified UI Automation event handler group.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation6-removeeventhandlergroup>.
  @pragma('vm:prefer-inline')
  void removeEventHandlerGroup(
    IUIAutomationElement? element,
    IUIAutomationEventHandlerGroup? handlerGroup,
  ) {
    final hr$ = HRESULT(
      _RemoveEventHandlerGroupFn(
        ptr,
        element?.ptr ?? nullptr,
        handlerGroup?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Indicates whether an accessible technology client adjusts provider request
  /// timeouts when the provider is non-responsive.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation6-get_connectionrecoverybehavior>.
  ConnectionRecoveryBehaviorOptions get connectionRecoveryBehavior {
    final connectionRecoveryBehaviorOptions = loggingCalloc<Int32>();
    final hr$ = HRESULT(
      _get_ConnectionRecoveryBehaviorFn(ptr, connectionRecoveryBehaviorOptions),
    );
    if (hr$.isError) {
      free(connectionRecoveryBehaviorOptions);
      throw WindowsException(hr$);
    }
    final result$ = connectionRecoveryBehaviorOptions.value;
    free(connectionRecoveryBehaviorOptions);
    return ConnectionRecoveryBehaviorOptions(result$);
  }

  set connectionRecoveryBehavior(
    ConnectionRecoveryBehaviorOptions connectionRecoveryBehaviorOptions,
  ) {
    final hr$ = HRESULT(
      _put_ConnectionRecoveryBehaviorFn(ptr, connectionRecoveryBehaviorOptions),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Gets or sets whether an accessible technology client receives all events,
  /// or a subset where duplicate events are detected and filtered.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation6-get_coalesceevents>.
  CoalesceEventsOptions get coalesceEvents {
    final coalesceEventsOptions = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CoalesceEventsFn(ptr, coalesceEventsOptions));
    if (hr$.isError) {
      free(coalesceEventsOptions);
      throw WindowsException(hr$);
    }
    final result$ = coalesceEventsOptions.value;
    free(coalesceEventsOptions);
    return CoalesceEventsOptions(result$);
  }

  set coalesceEvents(CoalesceEventsOptions coalesceEventsOptions) {
    final hr$ = HRESULT(_put_CoalesceEventsFn(ptr, coalesceEventsOptions));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Registers a method that handles when the active text position changes.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation6-addactivetextpositionchangedeventhandler>.
  @pragma('vm:prefer-inline')
  void addActiveTextPositionChangedEventHandler(
    IUIAutomationElement? element,
    TreeScope scope,
    IUIAutomationCacheRequest? cacheRequest,
    IUIAutomationActiveTextPositionChangedEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _AddActiveTextPositionChangedEventHandlerFn(
        ptr,
        element?.ptr ?? nullptr,
        scope,
        cacheRequest?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes an active text position changed event handler.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation6-removeactivetextpositionchangedeventhandler>.
  @pragma('vm:prefer-inline')
  void removeActiveTextPositionChangedEventHandler(
    IUIAutomationElement? element,
    IUIAutomationActiveTextPositionChangedEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _RemoveActiveTextPositionChangedEventHandlerFn(
        ptr,
        element?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomation6(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomation6Vtbl extends Struct {
  external IUIAutomation5Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> handlerGroup)
    >
  >
  CreateEventHandlerGroup;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        VTablePointer handlerGroup,
      )
    >
  >
  AddEventHandlerGroup;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        VTablePointer handlerGroup,
      )
    >
  >
  RemoveEventHandlerGroup;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Int32> connectionRecoveryBehaviorOptions,
      )
    >
  >
  get_ConnectionRecoveryBehavior;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 connectionRecoveryBehaviorOptions,
      )
    >
  >
  put_ConnectionRecoveryBehavior;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> coalesceEventsOptions)
    >
  >
  get_CoalesceEvents;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Int32 coalesceEventsOptions)
    >
  >
  put_CoalesceEvents;
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
  AddActiveTextPositionChangedEventHandler;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        VTablePointer handler,
      )
    >
  >
  RemoveActiveTextPositionChangedEventHandler;
}

@internal
final class IUIAutomation6Companion extends ComCompanion<IUIAutomation6> {
  const IUIAutomation6Companion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomation6 Function(VTablePointer) get fromPointer => IUIAutomation6.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomation6;
}
