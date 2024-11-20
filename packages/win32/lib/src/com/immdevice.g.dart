// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../propvariant.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'ipropertystore.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IMMDevice = GUID.fromComponents(
  0xd666063f,
  0x1587,
  0x4e43,
  Uint8List.fromList(const [0x81, 0xf1, 0xb9, 0x48, 0xe8, 0x7, 0x36, 0x3f]),
);

/// Encapsulates the generic features of a multimedia device resource.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nn-mmdeviceapi-immdevice>.
///
/// {@category com}
class IMMDevice extends IUnknown implements ComInterface {
  /// Creates a new instance of [IMMDevice] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IMMDevice] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  IMMDevice(super.ptr) : _vtable = ptr.value.cast<IMMDeviceVtbl>().ref;

  /// Creates a new instance of [IMMDevice] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IMMDevice] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IMMDevice.from(IUnknown interface) => interface.queryInterface();

  final IMMDeviceVtbl _vtable;
  late final _ActivateFn =
      _vtable.Activate.asFunction<
        int Function(
          VTablePointer,
          Pointer<GUID>,
          int,
          Pointer<PROPVARIANT>,
          Pointer<Pointer>,
        )
      >();
  late final _OpenPropertyStoreFn =
      _vtable.OpenPropertyStore.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _GetIdFn = _vtable
      .GetId.asFunction<int Function(VTablePointer, Pointer<Pointer<Utf16>>)>();
  late final _GetStateFn = _vtable
      .GetState.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();

  /// Creates a COM object with the specified interface.
  ///
  /// This method uses the [ComInterface.type] method to retrieve metadata about
  /// the target interface defined by [T], including its IID (Interface ID) and
  /// instantiation logic.
  ///
  /// All COM interfaces provided by this package are pre-registered. Custom COM
  /// interfaces must be registered manually using the [ComInterface.register]
  /// method before calling this method.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immdevice-activate>.
  T activate<T extends IUnknown>(
    CLSCTX dwClsCtx,
    Pointer<PROPVARIANT>? pActivationParams,
  ) {
    final companion = ComInterface.type<T>();
    final iid = companion.iid.toNative();
    final ppInterface = adaptiveCalloc<Pointer>();
    final hr$ = HRESULT(
      _ActivateFn(
        ptr,
        iid,
        dwClsCtx,
        pActivationParams ?? nullptr,
        ppInterface,
      ),
    );
    free(iid);
    if (hr$.isError) {
      free(ppInterface);
      throw WindowsException(hr$);
    }
    final result = companion.fromPointer(ppInterface.value.cast());
    free(ppInterface);
    return result;
  }

  /// Retrieves an interface to the device's property store.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immdevice-openpropertystore>.
  IPropertyStore? openPropertyStore(STGM stgmAccess) {
    final ppProperties = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(_OpenPropertyStoreFn(ptr, stgmAccess, ppProperties));
    if (hr$.isError) {
      free(ppProperties);
      throw WindowsException(hr$);
    }
    final result$ = ppProperties.value;
    free(ppProperties);
    if (result$.isNull) return null;
    return IPropertyStore(result$);
  }

  /// Retrieves an endpoint ID string that identifies the audio endpoint device.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immdevice-getid>.
  PWSTR getId() {
    final ppstrId = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetIdFn(ptr, ppstrId));
    if (hr$.isError) {
      free(ppstrId);
      throw WindowsException(hr$);
    }
    final result$ = ppstrId.value;
    free(ppstrId);
    return PWSTR(result$);
  }

  /// Retrieves the current device state.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/mmdeviceapi/nf-mmdeviceapi-immdevice-getstate>.
  DEVICE_STATE getState() {
    final pdwState = adaptiveCalloc<Uint32>();
    final hr$ = HRESULT(_GetStateFn(ptr, pdwState));
    if (hr$.isError) {
      free(pdwState);
      throw WindowsException(hr$);
    }
    final result$ = pdwState.value;
    free(pdwState);
    return DEVICE_STATE(result$);
  }

  @override
  String toString() => 'IMMDevice(ptr: $ptr)';
}

/// @nodoc
base class IMMDeviceVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<GUID> iid,
        Uint32 dwClsCtx,
        Pointer<PROPVARIANT> pActivationParams,
        Pointer<Pointer> ppInterface,
      )
    >
  >
  Activate;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Uint32 stgmAccess,
        Pointer<VTablePointer> ppProperties,
      )
    >
  >
  OpenPropertyStore;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> ppstrId)
    >
  >
  GetId;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pdwState)
    >
  >
  GetState;
}

@internal
final class IMMDeviceCompanion extends ComCompanion<IMMDevice> {
  const IMMDeviceCompanion();

  @pragma('vm:prefer-inline')
  @override
  IMMDevice Function(VTablePointer) get fromPointer => IMMDevice.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IMMDevice;
}
