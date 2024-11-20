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
import 'idispatch.g.dart';
import 'ienumnetworkconnections.g.dart';
import 'ienumnetworks.g.dart';
import 'inetwork.g.dart';
import 'inetworkconnection.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_INetworkListManager = Guid.fromComponents(
  0xdcb00000,
  0x570f,
  0x4a9b,
  Uint8List.fromList(const [0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b]),
);

/// Provides a set of methods to perform network list management functions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nn-netlistmgr-inetworklistmanager>.
///
/// {@category com}
class INetworkListManager extends IDispatch implements ComInterface {
  /// Creates a new instance of [INetworkListManager] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [INetworkListManager]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  INetworkListManager(super.ptr)
    : _vtable = ptr.value.cast<INetworkListManagerVtbl>().ref;

  /// Creates a new instance of [INetworkListManager] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [INetworkListManager] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory INetworkListManager.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final INetworkListManagerVtbl _vtable;
  late final _GetNetworksFn =
      _vtable.GetNetworks.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _GetNetworkFn =
      _vtable.GetNetwork.asFunction<
        int Function(VTablePointer, GUID, Pointer<VTablePointer>)
      >();
  late final _GetNetworkConnectionsFn =
      _vtable.GetNetworkConnections.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetNetworkConnectionFn =
      _vtable.GetNetworkConnection.asFunction<
        int Function(VTablePointer, GUID, Pointer<VTablePointer>)
      >();
  late final _get_IsConnectedToInternetFn = _vtable.get_IsConnectedToInternet
      .asFunction<int Function(VTablePointer, Pointer<VARIANT_BOOL>)>();
  late final _get_IsConnectedFn = _vtable.get_IsConnected
      .asFunction<int Function(VTablePointer, Pointer<VARIANT_BOOL>)>();
  late final _GetConnectivityFn =
      _vtable.GetConnectivity.asFunction<
        int Function(VTablePointer, Pointer<Int32>)
      >();
  late final _SetSimulatedProfileInfoFn =
      _vtable.SetSimulatedProfileInfo.asFunction<
        int Function(VTablePointer, Pointer<NLM_SIMULATED_PROFILE_INFO>)
      >();
  late final _ClearSimulatedProfileInfoFn = _vtable
      .ClearSimulatedProfileInfo.asFunction<int Function(VTablePointer)>();

  /// Retrieves the list of networks available on the local machine.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworklistmanager-getnetworks>.
  IEnumNetworks? getNetworks(NLM_ENUM_NETWORK flags) {
    final ppEnumNetwork = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetNetworksFn(ptr, flags, ppEnumNetwork));
    if (hr$.isError) {
      free(ppEnumNetwork);
      throw WindowsException(hr$);
    }
    final result$ = ppEnumNetwork.value;
    free(ppEnumNetwork);
    if (result$.isNull) return null;
    return IEnumNetworks(result$);
  }

  /// Retrieves a network based on a supplied network ID.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworklistmanager-getnetwork>.
  INetwork? getNetwork(GUID gdNetworkId) {
    final ppNetwork = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetNetworkFn(ptr, gdNetworkId, ppNetwork));
    if (hr$.isError) {
      free(ppNetwork);
      throw WindowsException(hr$);
    }
    final result$ = ppNetwork.value;
    free(ppNetwork);
    if (result$.isNull) return null;
    return INetwork(result$);
  }

  /// Enumerates a complete list of the network connections that have been made.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworklistmanager-getnetworkconnections>.
  IEnumNetworkConnections? getNetworkConnections() {
    final ppEnum = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetNetworkConnectionsFn(ptr, ppEnum));
    if (hr$.isError) {
      free(ppEnum);
      throw WindowsException(hr$);
    }
    final result$ = ppEnum.value;
    free(ppEnum);
    if (result$.isNull) return null;
    return IEnumNetworkConnections(result$);
  }

  /// Retrieves a network based on a supplied Network Connection ID.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworklistmanager-getnetworkconnection>.
  INetworkConnection? getNetworkConnection(GUID gdNetworkConnectionId) {
    final ppNetworkConnection = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _GetNetworkConnectionFn(ptr, gdNetworkConnectionId, ppNetworkConnection),
    );
    if (hr$.isError) {
      free(ppNetworkConnection);
      throw WindowsException(hr$);
    }
    final result$ = ppNetworkConnection.value;
    free(ppNetworkConnection);
    if (result$.isNull) return null;
    return INetworkConnection(result$);
  }

  /// Specifies if the local machine has internet connectivity.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworklistmanager-get_isconnectedtointernet>.
  bool get isConnectedToInternet {
    final pbIsConnected = loggingCalloc<VARIANT_BOOL>();
    final hr$ = HRESULT(_get_IsConnectedToInternetFn(ptr, pbIsConnected));
    if (hr$.isError) {
      free(pbIsConnected);
      throw WindowsException(hr$);
    }
    final result$ = pbIsConnected.value;
    free(pbIsConnected);
    return result$ != FALSE;
  }

  /// Specifies if the local machine has network connectivity.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworklistmanager-get_isconnected>.
  bool get isConnected {
    final pbIsConnected = loggingCalloc<VARIANT_BOOL>();
    final hr$ = HRESULT(_get_IsConnectedFn(ptr, pbIsConnected));
    if (hr$.isError) {
      free(pbIsConnected);
      throw WindowsException(hr$);
    }
    final result$ = pbIsConnected.value;
    free(pbIsConnected);
    return result$ != FALSE;
  }

  /// Returns the overall connectivity state of the machine.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworklistmanager-getconnectivity>.
  NLM_CONNECTIVITY getConnectivity() {
    final pConnectivity = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetConnectivityFn(ptr, pConnectivity));
    if (hr$.isError) {
      free(pConnectivity);
      throw WindowsException(hr$);
    }
    final result$ = pConnectivity.value;
    free(pConnectivity);
    return NLM_CONNECTIVITY(result$);
  }

  /// Applies a specific set of connection profile values to the internet
  /// connection profile in support of the simulation of specific metered
  /// internet connection conditions.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworklistmanager-setsimulatedprofileinfo>.
  @pragma('vm:prefer-inline')
  void setSimulatedProfileInfo(
    Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo,
  ) {
    final hr$ = HRESULT(_SetSimulatedProfileInfoFn(ptr, pSimulatedInfo));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Clears the connection profile values previously applied to the internet
  /// connection profile by SetSimulatedProfileInfo.
  ///
  /// The next internet connection query, via GetInternetConnectionProfile, will
  /// use system information.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworklistmanager-clearsimulatedprofileinfo>.
  @pragma('vm:prefer-inline')
  void clearSimulatedProfileInfo() {
    final hr$ = HRESULT(_ClearSimulatedProfileInfoFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'INetworkListManager(ptr: $ptr)';
}

/// @nodoc
base class INetworkListManagerVtbl extends Struct {
  external IDispatchVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 flags,
        Pointer<VTablePointer> ppEnumNetwork,
      )
    >
  >
  GetNetworks;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        GUID gdNetworkId,
        Pointer<VTablePointer> ppNetwork,
      )
    >
  >
  GetNetwork;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppEnum)
    >
  >
  GetNetworkConnections;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        GUID gdNetworkConnectionId,
        Pointer<VTablePointer> ppNetworkConnection,
      )
    >
  >
  GetNetworkConnection;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VARIANT_BOOL> pbIsConnected)
    >
  >
  get_IsConnectedToInternet;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VARIANT_BOOL> pbIsConnected)
    >
  >
  get_IsConnected;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> pConnectivity)
    >
  >
  GetConnectivity;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<NLM_SIMULATED_PROFILE_INFO> pSimulatedInfo,
      )
    >
  >
  SetSimulatedProfileInfo;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  ClearSimulatedProfileInfo;
}

@internal
final class INetworkListManagerCompanion
    extends ComCompanion<INetworkListManager> {
  const INetworkListManagerCompanion();

  @pragma('vm:prefer-inline')
  @override
  INetworkListManager Function(VTablePointer) get fromPointer =>
      INetworkListManager.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_INetworkListManager;
}
