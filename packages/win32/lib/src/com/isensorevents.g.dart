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
import 'iportabledevicevalues.g.dart';
import 'isensor.g.dart';
import 'isensordatareport.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISensorEvents = Guid.fromComponents(
  0x5d8dcc91,
  0x4641,
  0x47e7,
  Uint8List.fromList(const [0xb7, 0xc3, 0xb7, 0x4f, 0x48, 0xa6, 0xc3, 0x91]),
);

/// You must implement if you want to receive sensor events.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nn-sensorsapi-isensorevents>.
///
/// {@category com}
class ISensorEvents extends IUnknown implements ComInterface {
  /// Creates a new instance of [ISensorEvents] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISensorEvents]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISensorEvents(super.ptr) : _vtable = ptr.value.cast<ISensorEventsVtbl>().ref;

  /// Creates a new instance of [ISensorEvents] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISensorEvents] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISensorEvents.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISensorEventsVtbl _vtable;
  late final _OnStateChangedFn =
      _vtable.OnStateChanged.asFunction<
        int Function(VTablePointer, VTablePointer, int)
      >();
  late final _OnDataUpdatedFn =
      _vtable.OnDataUpdated.asFunction<
        int Function(VTablePointer, VTablePointer, VTablePointer)
      >();
  late final _OnEventFn =
      _vtable.OnEvent.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<GUID>, VTablePointer)
      >();
  late final _OnLeaveFn =
      _vtable.OnLeave.asFunction<int Function(VTablePointer, Pointer<GUID>)>();

  /// Provides a notification that a sensor state has changed.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensorevents-onstatechanged>.
  @pragma('vm:prefer-inline')
  void onStateChanged(ISensor? pSensor, SensorState state) {
    final hr$ = HRESULT(_OnStateChangedFn(ptr, pSensor?.ptr ?? nullptr, state));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Provides sensor event data.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensorevents-ondataupdated>.
  @pragma('vm:prefer-inline')
  void onDataUpdated(ISensor? pSensor, ISensorDataReport? pNewData) {
    final hr$ = HRESULT(
      _OnDataUpdatedFn(ptr, pSensor?.ptr ?? nullptr, pNewData?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Provides custom event notifications.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensorevents-onevent>.
  @pragma('vm:prefer-inline')
  void onEvent(
    ISensor? pSensor,
    Pointer<GUID> eventID,
    IPortableDeviceValues? pEventData,
  ) {
    final hr$ = HRESULT(
      _OnEventFn(
        ptr,
        pSensor?.ptr ?? nullptr,
        eventID,
        pEventData?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Provides notification that a sensor device is no longer connected.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensorevents-onleave>.
  @pragma('vm:prefer-inline')
  void onLeave(Pointer<GUID> iD) {
    final hr$ = HRESULT(_OnLeaveFn(ptr, iD));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ISensorEvents(ptr: $ptr)';
}

/// @nodoc
base class ISensorEventsVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer pSensor, Int32 state)
    >
  >
  OnStateChanged;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pSensor,
        VTablePointer pNewData,
      )
    >
  >
  OnDataUpdated;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pSensor,
        Pointer<GUID> eventID,
        VTablePointer pEventData,
      )
    >
  >
  OnEvent;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<GUID> iD)>
  >
  OnLeave;
}

@internal
final class ISensorEventsCompanion extends ComCompanion<ISensorEvents> {
  const ISensorEventsCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISensorEvents Function(VTablePointer) get fromPointer => ISensorEvents.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISensorEvents;
}
