// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../com/iinspectable.g.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
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
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

/// Activates the specified Windows Runtime class.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/roapi/nf-roapi-roactivateinstance>.
///
/// {@category winrt}
IInspectable? RoActivateInstance(HSTRING activatableClassId) {
  final instance = adaptiveCalloc<VTablePointer>();
  final hr$ = HRESULT(_RoActivateInstance(activatableClassId, instance));
  if (hr$.isError) {
    free(instance);
    throw WindowsException(hr$);
  }
  final result$ = instance.value;
  free(instance);
  if (result$.isNull) return null;
  return .new(result$);
}

@Native<Int32 Function(Pointer, Pointer<VTablePointer>)>(
  symbol: 'RoActivateInstance',
)
external int _RoActivateInstance(
  Pointer activatableClassId,
  Pointer<VTablePointer> instance,
);

/// Gets the activation factory for the specified runtime class.
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
/// <https://learn.microsoft.com/windows/win32/api/roapi/nf-roapi-rogetactivationfactory>.
///
/// {@category winrt}
T RoGetActivationFactory<T extends IUnknown>(HSTRING activatableClassId) {
  final companion = ComInterface.type<T>();
  final iid = companion.iid.toNative();
  final factory = adaptiveCalloc<Pointer>();
  final hr$ = HRESULT(
    _RoGetActivationFactory(activatableClassId, iid, factory),
  );
  free(iid);
  if (hr$.isError) {
    free(factory);
    throw WindowsException(hr$);
  }
  final result = companion.fromPointer(factory.value.cast());
  free(factory);
  return result;
}

@Native<Int32 Function(Pointer, Pointer<GUID>, Pointer<Pointer>)>(
  symbol: 'RoGetActivationFactory',
)
external int _RoGetActivationFactory(
  Pointer activatableClassId,
  Pointer<GUID> iid,
  Pointer<Pointer> factory,
);

/// Gets a unique identifier for the current apartment.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/roapi/nf-roapi-rogetapartmentidentifier>.
///
/// {@category winrt}
int RoGetApartmentIdentifier() {
  final apartmentIdentifier = adaptiveCalloc<Uint64>();
  final hr$ = HRESULT(_RoGetApartmentIdentifier(apartmentIdentifier));
  if (hr$.isError) {
    free(apartmentIdentifier);
    throw WindowsException(hr$);
  }
  final result$ = apartmentIdentifier.value;
  free(apartmentIdentifier);
  return result$;
}

@Native<Int32 Function(Pointer<Uint64>)>(symbol: 'RoGetApartmentIdentifier')
external int _RoGetApartmentIdentifier(Pointer<Uint64> apartmentIdentifier);

/// Initializes the Windows Runtime on the current thread with the specified
/// concurrency model.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/roapi/nf-roapi-roinitialize>.
///
/// {@category winrt}
@pragma('vm:prefer-inline')
void RoInitialize(RO_INIT_TYPE initType) {
  final hr$ = HRESULT(_RoInitialize(initType));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(Int32)>(symbol: 'RoInitialize')
external int _RoInitialize(int initType);

/// Closes the Windows Runtime on the current thread.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/roapi/nf-roapi-rouninitialize>.
///
/// {@category winrt}
@pragma('vm:prefer-inline')
void RoUninitialize() => _RoUninitialize();

@Native<Void Function()>(symbol: 'RoUninitialize')
external void _RoUninitialize();
