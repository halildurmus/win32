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
import 'isensor.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISensorManagerEvents = Guid.fromComponents(
  0x9b3b0b86,
  0x266a,
  0x4aad,
  Uint8List.fromList(const [0xb2, 0x1f, 0xfd, 0xe5, 0x50, 0x10, 0x1, 0xb7]),
);

/// For receiving sensor manager events.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nn-sensorsapi-isensormanagerevents>.
///
/// {@category com}
class ISensorManagerEvents extends IUnknown implements ComInterface {
  /// Creates a new instance of [ISensorManagerEvents] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISensorManagerEvents]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISensorManagerEvents(super.ptr)
    : _vtable = ptr.value.cast<ISensorManagerEventsVtbl>().ref;

  /// Creates a new instance of [ISensorManagerEvents] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISensorManagerEvents] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISensorManagerEvents.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISensorManagerEventsVtbl _vtable;
  late final _OnSensorEnterFn =
      _vtable.OnSensorEnter.asFunction<
        int Function(VTablePointer, VTablePointer, int)
      >();

  /// Provides notification when a sensor device is connected.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensormanagerevents-onsensorenter>.
  @pragma('vm:prefer-inline')
  void onSensorEnter(ISensor? pSensor, SensorState state) {
    final hr$ = HRESULT(_OnSensorEnterFn(ptr, pSensor?.ptr ?? nullptr, state));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ISensorManagerEvents(ptr: $ptr)';
}

/// @nodoc
base class ISensorManagerEventsVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer pSensor, Int32 state)
    >
  >
  OnSensorEnter;
}

@internal
final class ISensorManagerEventsCompanion
    extends ComCompanion<ISensorManagerEvents> {
  const ISensorManagerEventsCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISensorManagerEvents Function(VTablePointer) get fromPointer =>
      ISensorManagerEvents.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISensorManagerEvents;
}
