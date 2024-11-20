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
import '../propertykey.dart';
import '../propvariant.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iportabledevicekeycollection.g.dart';
import 'iportabledevicevalues.g.dart';
import 'isensordatareport.g.dart';
import 'isensorevents.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISensor = Guid.fromComponents(
  0x5fa08f80,
  0x2657,
  0x458e,
  Uint8List.fromList(const [0xaf, 0x75, 0x46, 0xf7, 0x3f, 0xa6, 0xac, 0x5c]),
);

/// Represents a sensor.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nn-sensorsapi-isensor>.
///
/// {@category com}
class ISensor extends IUnknown implements ComInterface {
  /// Creates a new instance of [ISensor] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISensor] interface. The
  /// [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISensor(super.ptr) : _vtable = ptr.value.cast<ISensorVtbl>().ref;

  /// Creates a new instance of [ISensor] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISensor] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISensor.from(IUnknown interface, {bool releaseOriginal = false}) =>
      interface.cast(releaseOriginal: releaseOriginal);

  final ISensorVtbl _vtable;
  late final _GetIDFn =
      _vtable.GetID.asFunction<int Function(VTablePointer, Pointer<GUID>)>();
  late final _GetCategoryFn = _vtable
      .GetCategory.asFunction<int Function(VTablePointer, Pointer<GUID>)>();
  late final _GetTypeFn =
      _vtable.GetType.asFunction<int Function(VTablePointer, Pointer<GUID>)>();
  late final _GetFriendlyNameFn = _vtable
      .GetFriendlyName.asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _GetPropertyFn =
      _vtable.GetProperty.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<PROPVARIANT>)
      >();
  late final _GetPropertiesFn =
      _vtable.GetProperties.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetSupportedDataFieldsFn =
      _vtable.GetSupportedDataFields.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _SetPropertiesFn =
      _vtable.SetProperties.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<VTablePointer>)
      >();
  late final _SupportsDataFieldFn =
      _vtable.SupportsDataField.asFunction<
        int Function(VTablePointer, Pointer<PROPERTYKEY>, Pointer<VARIANT_BOOL>)
      >();
  late final _GetStateFn = _vtable
      .GetState.asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _GetDataFn =
      _vtable.GetData.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _SupportsEventFn =
      _vtable.SupportsEvent.asFunction<
        int Function(VTablePointer, Pointer<GUID>, Pointer<VARIANT_BOOL>)
      >();
  late final _GetEventInterestFn =
      _vtable.GetEventInterest.asFunction<
        int Function(VTablePointer, Pointer<Pointer<GUID>>, Pointer<Uint32>)
      >();
  late final _SetEventInterestFn =
      _vtable.SetEventInterest.asFunction<
        int Function(VTablePointer, Pointer<GUID>, int)
      >();
  late final _SetEventSinkFn = _vtable
      .SetEventSink.asFunction<int Function(VTablePointer, VTablePointer)>();

  /// Retrieves the unique identifier of the sensor.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-getid>.
  Pointer<GUID> getID() {
    final pID = loggingCalloc<GUID>();
    final hr$ = HRESULT(_GetIDFn(ptr, pID));
    if (hr$.isError) {
      free(pID);
      throw WindowsException(hr$);
    }
    return pID;
  }

  /// Retrieves the identifier of the sensor category.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-getcategory>.
  Pointer<GUID> getCategory() {
    final pSensorCategory = loggingCalloc<GUID>();
    final hr$ = HRESULT(_GetCategoryFn(ptr, pSensorCategory));
    if (hr$.isError) {
      free(pSensorCategory);
      throw WindowsException(hr$);
    }
    return pSensorCategory;
  }

  /// Retrieves the sensor type ID.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-gettype>.
  Pointer<GUID> getType() {
    final pSensorType = loggingCalloc<GUID>();
    final hr$ = HRESULT(_GetTypeFn(ptr, pSensorType));
    if (hr$.isError) {
      free(pSensorType);
      throw WindowsException(hr$);
    }
    return pSensorType;
  }

  /// Retrieves the sensor name that is intended to be seen by the user.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-getfriendlyname>.
  BSTR getFriendlyName() {
    final pFriendlyName = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_GetFriendlyNameFn(ptr, pFriendlyName));
    if (hr$.isError) {
      free(pFriendlyName);
      throw WindowsException(hr$);
    }
    final result$ = pFriendlyName.value;
    free(pFriendlyName);
    return result$;
  }

  /// Retrieves a property value.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-getproperty>.
  Pointer<PROPVARIANT> getProperty(Pointer<PROPERTYKEY> key) {
    final pProperty = loggingCalloc<PROPVARIANT>();
    final hr$ = HRESULT(_GetPropertyFn(ptr, key, pProperty));
    if (hr$.isError) {
      free(pProperty);
      throw WindowsException(hr$);
    }
    return pProperty;
  }

  /// Retrieves multiple sensor properties.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-getproperties>.
  IPortableDeviceValues? getProperties(IPortableDeviceKeyCollection? pKeys) {
    final ppProperties = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetPropertiesFn(ptr, pKeys?.ptr ?? nullptr, ppProperties),
    );
    if (hr$.isError) {
      free(ppProperties);
      throw WindowsException(hr$);
    }
    final result$ = ppProperties.value;
    free(ppProperties);
    if (result$.isNull) return null;
    return IPortableDeviceValues(result$);
  }

  /// Retrieves a set of PROPERTYKEYs that represent the data fields the sensor
  /// can provide.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-getsupporteddatafields>.
  IPortableDeviceKeyCollection? getSupportedDataFields() {
    final ppDataFields = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetSupportedDataFieldsFn(ptr, ppDataFields));
    if (hr$.isError) {
      free(ppDataFields);
      throw WindowsException(hr$);
    }
    final result$ = ppDataFields.value;
    free(ppDataFields);
    if (result$.isNull) return null;
    return IPortableDeviceKeyCollection(result$);
  }

  /// Specifies sensor properties.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-setproperties>.
  IPortableDeviceValues? setProperties(IPortableDeviceValues? pProperties) {
    final ppResults = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _SetPropertiesFn(ptr, pProperties?.ptr ?? nullptr, ppResults),
    );
    if (hr$.isError) {
      free(ppResults);
      throw WindowsException(hr$);
    }
    final result$ = ppResults.value;
    free(ppResults);
    if (result$.isNull) return null;
    return IPortableDeviceValues(result$);
  }

  /// Indicates whether the sensor supports the specified data field.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-supportsdatafield>.
  bool supportsDataField(Pointer<PROPERTYKEY> key) {
    final pIsSupported = loggingCalloc<VARIANT_BOOL>();
    final hr$ = HRESULT(_SupportsDataFieldFn(ptr, key, pIsSupported));
    if (hr$.isError) {
      free(pIsSupported);
      throw WindowsException(hr$);
    }
    final result$ = pIsSupported.value;
    free(pIsSupported);
    return result$ != FALSE;
  }

  /// Retrieves the current operational state of the sensor.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-getstate>.
  SensorState getState() {
    final pState = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetStateFn(ptr, pState));
    if (hr$.isError) {
      free(pState);
      throw WindowsException(hr$);
    }
    final result$ = pState.value;
    free(pState);
    return SensorState(result$);
  }

  /// Retrieves the most recent sensor data report.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-getdata>.
  ISensorDataReport? getData() {
    final ppDataReport = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetDataFn(ptr, ppDataReport));
    if (hr$.isError) {
      free(ppDataReport);
      throw WindowsException(hr$);
    }
    final result$ = ppDataReport.value;
    free(ppDataReport);
    if (result$.isNull) return null;
    return ISensorDataReport(result$);
  }

  /// Indicates whether the sensor supports the specified event.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-supportsevent>.
  bool supportsEvent(Pointer<GUID> eventGuid) {
    final pIsSupported = loggingCalloc<VARIANT_BOOL>();
    final hr$ = HRESULT(_SupportsEventFn(ptr, eventGuid, pIsSupported));
    if (hr$.isError) {
      free(pIsSupported);
      throw WindowsException(hr$);
    }
    final result$ = pIsSupported.value;
    free(pIsSupported);
    return result$ != FALSE;
  }

  /// Retrieves the current event interest settings.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-geteventinterest>.
  @pragma('vm:prefer-inline')
  void getEventInterest(
    Pointer<Pointer<GUID>> ppValues,
    Pointer<Uint32> pCount,
  ) {
    final hr$ = HRESULT(_GetEventInterestFn(ptr, ppValues, pCount));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies the list of sensor events to receive.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-seteventinterest>.
  @pragma('vm:prefer-inline')
  void setEventInterest(Pointer<GUID>? pValues, int count) {
    final hr$ = HRESULT(_SetEventInterestFn(ptr, pValues ?? nullptr, count));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies the interface through which to receive sensor event
  /// notifications.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/sensorsapi/nf-sensorsapi-isensor-seteventsink>.
  @pragma('vm:prefer-inline')
  void setEventSink(ISensorEvents? pEvents) {
    final hr$ = HRESULT(_SetEventSinkFn(ptr, pEvents?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'ISensor(ptr: $ptr)';
}

/// @nodoc
base class ISensorVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<GUID> pID)>
  >
  GetID;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<GUID> pSensorCategory)
    >
  >
  GetCategory;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<GUID> pSensorType)
    >
  >
  GetType;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<BSTR> pFriendlyName)
    >
  >
  GetFriendlyName;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<PROPVARIANT> pProperty,
      )
    >
  >
  GetProperty;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pKeys,
        Pointer<VTablePointer> ppProperties,
      )
    >
  >
  GetProperties;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppDataFields)
    >
  >
  GetSupportedDataFields;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pProperties,
        Pointer<VTablePointer> ppResults,
      )
    >
  >
  SetProperties;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<PROPERTYKEY> key,
        Pointer<VARIANT_BOOL> pIsSupported,
      )
    >
  >
  SupportsDataField;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> pState)>
  >
  GetState;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppDataReport)
    >
  >
  GetData;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> eventGuid,
        Pointer<VARIANT_BOOL> pIsSupported,
      )
    >
  >
  SupportsEvent;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<GUID>> ppValues,
        Pointer<Uint32> pCount,
      )
    >
  >
  GetEventInterest;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<GUID> pValues, Uint32 count)
    >
  >
  SetEventInterest;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pEvents)>
  >
  SetEventSink;
}

@internal
final class ISensorCompanion extends ComCompanion<ISensor> {
  const ISensorCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISensor Function(VTablePointer) get fromPointer => ISensor.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_ISensor;
}
