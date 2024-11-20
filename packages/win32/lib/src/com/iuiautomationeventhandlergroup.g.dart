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
import 'iuiautomationactivetextpositionchangedeventhandler.g.dart';
import 'iuiautomationcacherequest.g.dart';
import 'iuiautomationchangeseventhandler.g.dart';
import 'iuiautomationeventhandler.g.dart';
import 'iuiautomationnotificationeventhandler.g.dart';
import 'iuiautomationpropertychangedeventhandler.g.dart';
import 'iuiautomationstructurechangedeventhandler.g.dart';
import 'iuiautomationtextedittextchangedeventhandler.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationEventHandlerGroup = Guid.fromComponents(
  0xc9ee12f2,
  0xc13b,
  0x4408,
  Uint8List.fromList(const [0x99, 0x7c, 0x63, 0x99, 0x14, 0x37, 0x7f, 0x4e]),
);

/// Exposes methods for adding one or more events to a collection for bulk
/// registration through the CreateEventHandlerGroup and AddEventHandlerGroup
/// methods defined in IUIAutomation6.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationeventhandlergroup>.
///
/// {@category com}
class IUIAutomationEventHandlerGroup extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationEventHandlerGroup] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationEventHandlerGroup] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationEventHandlerGroup(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationEventHandlerGroupVtbl>().ref;

  /// Creates a new instance of [IUIAutomationEventHandlerGroup] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationEventHandlerGroup] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationEventHandlerGroup.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationEventHandlerGroupVtbl _vtable;
  late final _AddActiveTextPositionChangedEventHandlerFn =
      _vtable.AddActiveTextPositionChangedEventHandler.asFunction<
        int Function(VTablePointer, int, VTablePointer, VTablePointer)
      >();
  late final _AddAutomationEventHandlerFn =
      _vtable.AddAutomationEventHandler.asFunction<
        int Function(VTablePointer, int, int, VTablePointer, VTablePointer)
      >();
  late final _AddChangesEventHandlerFn =
      _vtable.AddChangesEventHandler.asFunction<
        int Function(
          VTablePointer,
          int,
          Pointer<Int32>,
          int,
          VTablePointer,
          VTablePointer,
        )
      >();
  late final _AddNotificationEventHandlerFn =
      _vtable.AddNotificationEventHandler.asFunction<
        int Function(VTablePointer, int, VTablePointer, VTablePointer)
      >();
  late final _AddPropertyChangedEventHandlerFn =
      _vtable.AddPropertyChangedEventHandler.asFunction<
        int Function(
          VTablePointer,
          int,
          VTablePointer,
          VTablePointer,
          Pointer<Int32>,
          int,
        )
      >();
  late final _AddStructureChangedEventHandlerFn =
      _vtable.AddStructureChangedEventHandler.asFunction<
        int Function(VTablePointer, int, VTablePointer, VTablePointer)
      >();
  late final _AddTextEditTextChangedEventHandlerFn =
      _vtable.AddTextEditTextChangedEventHandler.asFunction<
        int Function(VTablePointer, int, int, VTablePointer, VTablePointer)
      >();

  /// Registers a method (in an event handler group) that handles when the
  /// active text position changes.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationeventhandlergroup-addactivetextpositionchangedeventhandler>.
  @pragma('vm:prefer-inline')
  void addActiveTextPositionChangedEventHandler(
    TreeScope scope,
    IUIAutomationCacheRequest? cacheRequest,
    IUIAutomationActiveTextPositionChangedEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _AddActiveTextPositionChangedEventHandlerFn(
        ptr,
        scope,
        cacheRequest?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Registers a method that handles Microsoft UI Automation events.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationeventhandlergroup-addautomationeventhandler>.
  @pragma('vm:prefer-inline')
  void addAutomationEventHandler(
    UIA_EVENT_ID eventId,
    TreeScope scope,
    IUIAutomationCacheRequest? cacheRequest,
    IUIAutomationEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _AddAutomationEventHandlerFn(
        ptr,
        eventId,
        scope,
        cacheRequest?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Registers a method that handles change events.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationeventhandlergroup-addchangeseventhandler>.
  @pragma('vm:prefer-inline')
  void addChangesEventHandler(
    TreeScope scope,
    Pointer<Int32> changeTypes,
    int changesCount,
    IUIAutomationCacheRequest? cacheRequest,
    IUIAutomationChangesEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _AddChangesEventHandlerFn(
        ptr,
        scope,
        changeTypes,
        changesCount,
        cacheRequest?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Registers a method that handles notification events.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationeventhandlergroup-addnotificationeventhandler>.
  @pragma('vm:prefer-inline')
  void addNotificationEventHandler(
    TreeScope scope,
    IUIAutomationCacheRequest? cacheRequest,
    IUIAutomationNotificationEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _AddNotificationEventHandlerFn(
        ptr,
        scope,
        cacheRequest?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Registers a method that handles a property-changed event.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationeventhandlergroup-addpropertychangedeventhandler>.
  @pragma('vm:prefer-inline')
  void addPropertyChangedEventHandler(
    TreeScope scope,
    IUIAutomationCacheRequest? cacheRequest,
    IUIAutomationPropertyChangedEventHandler? handler,
    Pointer<Int32> propertyArray,
    int propertyCount,
  ) {
    final hr$ = HRESULT(
      _AddPropertyChangedEventHandlerFn(
        ptr,
        scope,
        cacheRequest?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
        propertyArray,
        propertyCount,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Registers a method that handles structure-changed events.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationeventhandlergroup-addstructurechangedeventhandler>.
  @pragma('vm:prefer-inline')
  void addStructureChangedEventHandler(
    TreeScope scope,
    IUIAutomationCacheRequest? cacheRequest,
    IUIAutomationStructureChangedEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _AddStructureChangedEventHandlerFn(
        ptr,
        scope,
        cacheRequest?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Registers a method that handles programmatic text-edit events.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationeventhandlergroup-addtextedittextchangedeventhandler>.
  @pragma('vm:prefer-inline')
  void addTextEditTextChangedEventHandler(
    TreeScope scope,
    TextEditChangeType textEditChangeType,
    IUIAutomationCacheRequest? cacheRequest,
    IUIAutomationTextEditTextChangedEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _AddTextEditTextChangedEventHandlerFn(
        ptr,
        scope,
        textEditChangeType,
        cacheRequest?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomationEventHandlerGroup(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationEventHandlerGroupVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
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
        Int32 eventId,
        Int32 scope,
        VTablePointer cacheRequest,
        VTablePointer handler,
      )
    >
  >
  AddAutomationEventHandler;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 scope,
        Pointer<Int32> changeTypes,
        Int32 changesCount,
        VTablePointer cacheRequest,
        VTablePointer handler,
      )
    >
  >
  AddChangesEventHandler;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
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
        Int32 scope,
        VTablePointer cacheRequest,
        VTablePointer handler,
        Pointer<Int32> propertyArray,
        Int32 propertyCount,
      )
    >
  >
  AddPropertyChangedEventHandler;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 scope,
        VTablePointer cacheRequest,
        VTablePointer handler,
      )
    >
  >
  AddStructureChangedEventHandler;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 scope,
        Int32 textEditChangeType,
        VTablePointer cacheRequest,
        VTablePointer handler,
      )
    >
  >
  AddTextEditTextChangedEventHandler;
}

@internal
final class IUIAutomationEventHandlerGroupCompanion
    extends ComCompanion<IUIAutomationEventHandlerGroup> {
  const IUIAutomationEventHandlerGroupCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationEventHandlerGroup Function(VTablePointer) get fromPointer =>
      IUIAutomationEventHandlerGroup.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationEventHandlerGroup;
}
