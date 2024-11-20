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
import 'inetwork.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_INetworkConnection = Guid.fromComponents(
  0xdcb00005,
  0x570f,
  0x4a9b,
  Uint8List.fromList(const [0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b]),
);

/// Represents a single network connection.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nn-netlistmgr-inetworkconnection>.
///
/// {@category com}
class INetworkConnection extends IDispatch implements ComInterface {
  /// Creates a new instance of [INetworkConnection] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [INetworkConnection]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  INetworkConnection(super.ptr)
    : _vtable = ptr.value.cast<INetworkConnectionVtbl>().ref;

  /// Creates a new instance of [INetworkConnection] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [INetworkConnection] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory INetworkConnection.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final INetworkConnectionVtbl _vtable;
  late final _GetNetworkFn =
      _vtable.GetNetwork.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _get_IsConnectedToInternetFn = _vtable.get_IsConnectedToInternet
      .asFunction<int Function(VTablePointer, Pointer<VARIANT_BOOL>)>();
  late final _get_IsConnectedFn = _vtable.get_IsConnected
      .asFunction<int Function(VTablePointer, Pointer<VARIANT_BOOL>)>();
  late final _GetConnectivityFn =
      _vtable.GetConnectivity.asFunction<
        int Function(VTablePointer, Pointer<Int32>)
      >();
  late final _GetConnectionIdFn = _vtable
      .GetConnectionId.asFunction<int Function(VTablePointer, Pointer<GUID>)>();
  late final _GetAdapterIdFn = _vtable
      .GetAdapterId.asFunction<int Function(VTablePointer, Pointer<GUID>)>();
  late final _GetDomainTypeFn = _vtable
      .GetDomainType.asFunction<int Function(VTablePointer, Pointer<Int32>)>();

  /// Returns the network associated with the connection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworkconnection-getnetwork>.
  INetwork? getNetwork() {
    final ppNetwork = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetNetworkFn(ptr, ppNetwork));
    if (hr$.isError) {
      free(ppNetwork);
      throw WindowsException(hr$);
    }
    final result$ = ppNetwork.value;
    free(ppNetwork);
    if (result$.isNull) return null;
    return INetwork(result$);
  }

  /// Specifies if the associated network connection has internet connectivity.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworkconnection-get_isconnectedtointernet>.
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

  /// Specifies if the associated network connection has network connectivity.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworkconnection-get_isconnected>.
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

  /// Returns the connectivity state of the network connection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworkconnection-getconnectivity>.
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

  /// Returns the Connection ID associated with this network connection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworkconnection-getconnectionid>.
  Pointer<GUID> getConnectionId() {
    final pgdConnectionId = loggingCalloc<GUID>();
    final hr$ = HRESULT(_GetConnectionIdFn(ptr, pgdConnectionId));
    if (hr$.isError) {
      free(pgdConnectionId);
      throw WindowsException(hr$);
    }
    return pgdConnectionId;
  }

  /// Returns the ID of the network adapter used by this connection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworkconnection-getadapterid>.
  Pointer<GUID> getAdapterId() {
    final pgdAdapterId = loggingCalloc<GUID>();
    final hr$ = HRESULT(_GetAdapterIdFn(ptr, pgdAdapterId));
    if (hr$.isError) {
      free(pgdAdapterId);
      throw WindowsException(hr$);
    }
    return pgdAdapterId;
  }

  /// Returns the domain type of the network connection.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetworkconnection-getdomaintype>.
  NLM_DOMAIN_TYPE getDomainType() {
    final pDomainType = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetDomainTypeFn(ptr, pDomainType));
    if (hr$.isError) {
      free(pDomainType);
      throw WindowsException(hr$);
    }
    final result$ = pDomainType.value;
    free(pDomainType);
    return NLM_DOMAIN_TYPE(result$);
  }

  @override
  String toString() => 'INetworkConnection(ptr: $ptr)';
}

/// @nodoc
base class INetworkConnectionVtbl extends Struct {
  external IDispatchVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> ppNetwork)
    >
  >
  GetNetwork;
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
      Int32 Function(VTablePointer this$, Pointer<GUID> pgdConnectionId)
    >
  >
  GetConnectionId;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<GUID> pgdAdapterId)
    >
  >
  GetAdapterId;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> pDomainType)
    >
  >
  GetDomainType;
}

@internal
final class INetworkConnectionCompanion
    extends ComCompanion<INetworkConnection> {
  const INetworkConnectionCompanion();

  @pragma('vm:prefer-inline')
  @override
  INetworkConnection Function(VTablePointer) get fromPointer =>
      INetworkConnection.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_INetworkConnection;
}
