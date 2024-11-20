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
import 'isensor.g.dart';
import 'isensorcollection.g.dart';
import 'isensormanagerevents.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISensorManager = Guid.fromComponents(
  0xbd77db67,
  0x45a8,
  0x42dc,
  Uint8List.fromList(const [0x8d, 0x0, 0x6d, 0xcf, 0x15, 0xf8, 0x37, 0x7a]),
);

/// Provides methods for discovering and retrieving available sensors and a
/// method to request sensor manager events.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nn-sensorsapi-isensormanager>.
///
/// {@category com}
class ISensorManager extends IUnknown implements ComInterface {
  /// Creates a new instance of [ISensorManager] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISensorManager]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISensorManager(super.ptr)
    : _vtable = ptr.value.cast<ISensorManagerVtbl>().ref;

  /// Creates a new instance of [ISensorManager] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISensorManager] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISensorManager.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISensorManagerVtbl _vtable;
  late final _GetSensorsByCategoryFn =
      _vtable.GetSensorsByCategory.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<VTablePointer>)
      >();
  late final _GetSensorsByTypeFn =
      _vtable.GetSensorsByType.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<VTablePointer>)
      >();
  late final _GetSensorByIDFn =
      _vtable.GetSensorByID.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<VTablePointer>)
      >();
  late final _SetEventSinkFn = _vtable
      .SetEventSink.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _RequestPermissionsFn =
      _vtable.RequestPermissions.asFunction<
        int Function(VTablePointer, int, VTablePointer, int)
      >();

  /// Retrieves a collection containing all sensors associated with the
  /// specified category.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensormanager-getsensorsbycategory>.
  ISensorCollection? getSensorsByCategory(Pointer<GUID> sensorCategory) {
    final ppSensorsFound = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetSensorsByCategoryFn(ptr, sensorCategory, ppSensorsFound),
    );
    if (hr$.isError) {
      free(ppSensorsFound);
      throw WindowsException(hr$);
    }
    final result$ = ppSensorsFound.value;
    free(ppSensorsFound);
    if (result$.isNull) return null;
    return ISensorCollection(result$);
  }

  /// Retrieves a collection containing all sensors associated with the
  /// specified type.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensormanager-getsensorsbytype>.
  ISensorCollection? getSensorsByType(Pointer<GUID> sensorType) {
    final ppSensorsFound = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetSensorsByTypeFn(ptr, sensorType, ppSensorsFound));
    if (hr$.isError) {
      free(ppSensorsFound);
      throw WindowsException(hr$);
    }
    final result$ = ppSensorsFound.value;
    free(ppSensorsFound);
    if (result$.isNull) return null;
    return ISensorCollection(result$);
  }

  /// Retrieves a pointer to the specified sensor.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensormanager-getsensorbyid>.
  ISensor? getSensorByID(Pointer<GUID> sensorID) {
    final ppSensor = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetSensorByIDFn(ptr, sensorID, ppSensor));
    if (hr$.isError) {
      free(ppSensor);
      throw WindowsException(hr$);
    }
    final result$ = ppSensor.value;
    free(ppSensor);
    if (result$.isNull) return null;
    return ISensor(result$);
  }

  /// Specifies the interface through which to receive sensor manager event
  /// notifications.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensormanager-seteventsink>.
  @pragma('vm:prefer-inline')
  void setEventSink(ISensorManagerEvents? pEvents) {
    final hr$ = HRESULT(_SetEventSinkFn(ptr, pEvents?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Opens a system dialog box to request user permission to access sensor
  /// data.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensormanager-requestpermissions>.
  @pragma('vm:prefer-inline')
  void requestPermissions(
    int hParent,
    ISensorCollection? pSensors,
    bool fModal,
  ) {
    final hr$ = HRESULT(
      _RequestPermissionsFn(
        ptr,
        hParent,
        pSensors?.ptr ?? nullptr,
        fModal ? TRUE : FALSE,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ISensorManager(ptr: $ptr)';
}

/// @nodoc
base class ISensorManagerVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> sensorCategory,
        Pointer<VTablePointer> ppSensorsFound,
      )
    >
  >
  GetSensorsByCategory;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> sensorType,
        Pointer<VTablePointer> ppSensorsFound,
      )
    >
  >
  GetSensorsByType;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> sensorID,
        Pointer<VTablePointer> ppSensor,
      )
    >
  >
  GetSensorByID;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pEvents)>
  >
  SetEventSink;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        HWND hParent,
        VTablePointer pSensors,
        BOOL fModal,
      )
    >
  >
  RequestPermissions;
}

@internal
final class ISensorManagerCompanion extends ComCompanion<ISensorManager> {
  const ISensorManagerCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISensorManager Function(VTablePointer) get fromPointer => ISensorManager.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISensorManager;
}
