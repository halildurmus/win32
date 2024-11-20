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
import 'immdevice.g.dart';
import 'immdevicecollection.g.dart';
import 'immnotificationclient.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IMMDeviceEnumerator = Guid.fromComponents(
  0xa95664d2,
  0x9614,
  0x4f35,
  Uint8List.fromList(const [0xa7, 0x46, 0xde, 0x8d, 0xb6, 0x36, 0x17, 0xe6]),
);

/// Provides methods for enumerating multimedia device resources.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nn-mmdeviceapi-immdeviceenumerator>.
///
/// {@category com}
class IMMDeviceEnumerator extends IUnknown implements ComInterface {
  /// Creates a new instance of [IMMDeviceEnumerator] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IMMDeviceEnumerator]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IMMDeviceEnumerator(super.ptr)
    : _vtable = ptr.value.cast<IMMDeviceEnumeratorVtbl>().ref;

  /// Creates a new instance of [IMMDeviceEnumerator] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IMMDeviceEnumerator] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IMMDeviceEnumerator.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IMMDeviceEnumeratorVtbl _vtable;
  late final _EnumAudioEndpointsFn =
      _vtable.EnumAudioEndpoints.asFunction<
        int Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _GetDefaultAudioEndpointFn =
      _vtable.GetDefaultAudioEndpoint.asFunction<
        int Function(VTablePointer, int, int, Pointer<VTablePointer>)
      >();
  late final _GetDeviceFn =
      _vtable.GetDevice.asFunction<
        int Function(VTablePointer, PCWSTR, Pointer<VTablePointer>)
      >();
  late final _RegisterEndpointNotificationCallbackFn =
      _vtable.RegisterEndpointNotificationCallback.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();
  late final _UnregisterEndpointNotificationCallbackFn =
      _vtable.UnregisterEndpointNotificationCallback.asFunction<
        int Function(VTablePointer, VTablePointer)
      >();

  /// Generates a collection of audio endpoint devices that meet the specified
  /// criteria.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immdeviceenumerator-enumaudioendpoints>.
  IMMDeviceCollection? enumAudioEndpoints(
    EDataFlow dataFlow,
    DEVICE_STATE dwStateMask,
  ) {
    final ppDevices = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _EnumAudioEndpointsFn(ptr, dataFlow, dwStateMask, ppDevices),
    );
    if (hr$.isError) {
      free(ppDevices);
      throw WindowsException(hr$);
    }
    final result$ = ppDevices.value;
    free(ppDevices);
    if (result$.isNull) return null;
    return IMMDeviceCollection(result$);
  }

  /// Retrieves the default audio endpoint for the specified data-flow direction
  /// and role.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immdeviceenumerator-getdefaultaudioendpoint>.
  IMMDevice? getDefaultAudioEndpoint(EDataFlow dataFlow, ERole role) {
    final ppEndpoint = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetDefaultAudioEndpointFn(ptr, dataFlow, role, ppEndpoint),
    );
    if (hr$.isError) {
      free(ppEndpoint);
      throw WindowsException(hr$);
    }
    final result$ = ppEndpoint.value;
    free(ppEndpoint);
    if (result$.isNull) return null;
    return IMMDevice(result$);
  }

  /// Retrieves an audio endpoint device that is identified by an endpoint ID
  /// string.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immdeviceenumerator-getdevice>.
  IMMDevice? getDevice(PCWSTR pwstrId) {
    final ppDevice = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetDeviceFn(ptr, pwstrId, ppDevice));
    if (hr$.isError) {
      free(ppDevice);
      throw WindowsException(hr$);
    }
    final result$ = ppDevice.value;
    free(ppDevice);
    if (result$.isNull) return null;
    return IMMDevice(result$);
  }

  /// Registers a client's notification callback interface.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immdeviceenumerator-registerendpointnotificationcallback>.
  @pragma('vm:prefer-inline')
  void registerEndpointNotificationCallback(IMMNotificationClient? pClient) {
    final hr$ = HRESULT(
      _RegisterEndpointNotificationCallbackFn(ptr, pClient?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Deletes the registration of a notification interface that the client
  /// registered in a previous call to the
  /// `IMMDeviceEnumerator.registerEndpointNotificationCallback` method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immdeviceenumerator-unregisterendpointnotificationcallback>.
  @pragma('vm:prefer-inline')
  void unregisterEndpointNotificationCallback(IMMNotificationClient? pClient) {
    final hr$ = HRESULT(
      _UnregisterEndpointNotificationCallbackFn(ptr, pClient?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IMMDeviceEnumerator(ptr: $ptr)';
}

/// @nodoc
base class IMMDeviceEnumeratorVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 dataFlow,
        Uint32 dwStateMask,
        Pointer<VTablePointer> ppDevices,
      )
    >
  >
  EnumAudioEndpoints;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 dataFlow,
        Int32 role,
        Pointer<VTablePointer> ppEndpoint,
      )
    >
  >
  GetDefaultAudioEndpoint;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        PCWSTR pwstrId,
        Pointer<VTablePointer> ppDevice,
      )
    >
  >
  GetDevice;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pClient)>
  >
  RegisterEndpointNotificationCallback;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, VTablePointer pClient)>
  >
  UnregisterEndpointNotificationCallback;
}

@internal
final class IMMDeviceEnumeratorCompanion
    extends ComCompanion<IMMDeviceEnumerator> {
  const IMMDeviceEnumeratorCompanion();

  @pragma('vm:prefer-inline')
  @override
  IMMDeviceEnumerator Function(VTablePointer) get fromPointer =>
      IMMDeviceEnumerator.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IMMDeviceEnumerator;
}
