// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../system/hostcomputenetwork/structs.g.dart';
import '../../system/hostcomputenetwork/callbacks.g.dart'; // -----------------------------------------------------------------------

// computenetwork.dll
// -----------------------------------------------------------------------
final _computenetwork = DynamicLibrary.open('computenetwork.dll');

int HcnCloseEndpoint(
  Pointer Endpoint,
) =>
    _HcnCloseEndpoint(
      Endpoint,
    );

late final _HcnCloseEndpoint = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer Endpoint,
),
    int Function(
  Pointer Endpoint,
)>('HcnCloseEndpoint');

int HcnCloseGuestNetworkService(
  Pointer GuestNetworkService,
) =>
    _HcnCloseGuestNetworkService(
      GuestNetworkService,
    );

late final _HcnCloseGuestNetworkService = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer GuestNetworkService,
),
    int Function(
  Pointer GuestNetworkService,
)>('HcnCloseGuestNetworkService');

int HcnCloseLoadBalancer(
  Pointer LoadBalancer,
) =>
    _HcnCloseLoadBalancer(
      LoadBalancer,
    );

late final _HcnCloseLoadBalancer = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer LoadBalancer,
),
    int Function(
  Pointer LoadBalancer,
)>('HcnCloseLoadBalancer');

int HcnCloseNamespace(
  Pointer Namespace,
) =>
    _HcnCloseNamespace(
      Namespace,
    );

late final _HcnCloseNamespace = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer Namespace,
),
    int Function(
  Pointer Namespace,
)>('HcnCloseNamespace');

int HcnCloseNetwork(
  Pointer Network,
) =>
    _HcnCloseNetwork(
      Network,
    );

late final _HcnCloseNetwork = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer Network,
),
    int Function(
  Pointer Network,
)>('HcnCloseNetwork');

int HcnCreateEndpoint(
  Pointer Network,
  Pointer<GUID> Id,
  Pointer<Utf16> Settings,
  Pointer<Pointer> Endpoint,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnCreateEndpoint(
      Network,
      Id,
      Settings,
      Endpoint,
      ErrorRecord,
    );

late final _HcnCreateEndpoint = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer Network,
  Pointer<GUID> Id,
  Pointer<Utf16> Settings,
  Pointer<Pointer> Endpoint,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer Network,
  Pointer<GUID> Id,
  Pointer<Utf16> Settings,
  Pointer<Pointer> Endpoint,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnCreateEndpoint');

int HcnCreateGuestNetworkService(
  Pointer<GUID> Id,
  Pointer<Utf16> Settings,
  Pointer<Pointer> GuestNetworkService,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnCreateGuestNetworkService(
      Id,
      Settings,
      GuestNetworkService,
      ErrorRecord,
    );

late final _HcnCreateGuestNetworkService = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer<GUID> Id,
  Pointer<Utf16> Settings,
  Pointer<Pointer> GuestNetworkService,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer<GUID> Id,
  Pointer<Utf16> Settings,
  Pointer<Pointer> GuestNetworkService,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnCreateGuestNetworkService');

int HcnCreateLoadBalancer(
  Pointer<GUID> Id,
  Pointer<Utf16> Settings,
  Pointer<Pointer> LoadBalancer,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnCreateLoadBalancer(
      Id,
      Settings,
      LoadBalancer,
      ErrorRecord,
    );

late final _HcnCreateLoadBalancer = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer<GUID> Id,
  Pointer<Utf16> Settings,
  Pointer<Pointer> LoadBalancer,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer<GUID> Id,
  Pointer<Utf16> Settings,
  Pointer<Pointer> LoadBalancer,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnCreateLoadBalancer');

int HcnCreateNamespace(
  Pointer<GUID> Id,
  Pointer<Utf16> Settings,
  Pointer<Pointer> Namespace,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnCreateNamespace(
      Id,
      Settings,
      Namespace,
      ErrorRecord,
    );

late final _HcnCreateNamespace = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer<GUID> Id,
  Pointer<Utf16> Settings,
  Pointer<Pointer> Namespace,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer<GUID> Id,
  Pointer<Utf16> Settings,
  Pointer<Pointer> Namespace,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnCreateNamespace');

int HcnCreateNetwork(
  Pointer<GUID> Id,
  Pointer<Utf16> Settings,
  Pointer<Pointer> Network,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnCreateNetwork(
      Id,
      Settings,
      Network,
      ErrorRecord,
    );

late final _HcnCreateNetwork = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer<GUID> Id,
  Pointer<Utf16> Settings,
  Pointer<Pointer> Network,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer<GUID> Id,
  Pointer<Utf16> Settings,
  Pointer<Pointer> Network,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnCreateNetwork');

int HcnDeleteEndpoint(
  Pointer<GUID> Id,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnDeleteEndpoint(
      Id,
      ErrorRecord,
    );

late final _HcnDeleteEndpoint = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer<GUID> Id,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer<GUID> Id,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnDeleteEndpoint');

int HcnDeleteGuestNetworkService(
  Pointer<GUID> Id,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnDeleteGuestNetworkService(
      Id,
      ErrorRecord,
    );

late final _HcnDeleteGuestNetworkService = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer<GUID> Id,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer<GUID> Id,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnDeleteGuestNetworkService');

int HcnDeleteLoadBalancer(
  Pointer<GUID> Id,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnDeleteLoadBalancer(
      Id,
      ErrorRecord,
    );

late final _HcnDeleteLoadBalancer = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer<GUID> Id,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer<GUID> Id,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnDeleteLoadBalancer');

int HcnDeleteNamespace(
  Pointer<GUID> Id,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnDeleteNamespace(
      Id,
      ErrorRecord,
    );

late final _HcnDeleteNamespace = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer<GUID> Id,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer<GUID> Id,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnDeleteNamespace');

int HcnDeleteNetwork(
  Pointer<GUID> Id,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnDeleteNetwork(
      Id,
      ErrorRecord,
    );

late final _HcnDeleteNetwork = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer<GUID> Id,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer<GUID> Id,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnDeleteNetwork');

int HcnEnumerateEndpoints(
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Endpoints,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnEnumerateEndpoints(
      Query,
      Endpoints,
      ErrorRecord,
    );

late final _HcnEnumerateEndpoints = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Endpoints,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Endpoints,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnEnumerateEndpoints');

int HcnEnumerateGuestNetworkPortReservations(
  Pointer<Uint32> ReturnCount,
  Pointer<Pointer<HCN_PORT_RANGE_ENTRY>> PortEntries,
) =>
    _HcnEnumerateGuestNetworkPortReservations(
      ReturnCount,
      PortEntries,
    );

late final _HcnEnumerateGuestNetworkPortReservations =
    _computenetwork.lookupFunction<
        Int32 Function(
  Pointer<Uint32> ReturnCount,
  Pointer<Pointer<HCN_PORT_RANGE_ENTRY>> PortEntries,
),
        int Function(
  Pointer<Uint32> ReturnCount,
  Pointer<Pointer<HCN_PORT_RANGE_ENTRY>> PortEntries,
)>('HcnEnumerateGuestNetworkPortReservations');

int HcnEnumerateLoadBalancers(
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> LoadBalancer,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnEnumerateLoadBalancers(
      Query,
      LoadBalancer,
      ErrorRecord,
    );

late final _HcnEnumerateLoadBalancers = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> LoadBalancer,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> LoadBalancer,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnEnumerateLoadBalancers');

int HcnEnumerateNamespaces(
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Namespaces,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnEnumerateNamespaces(
      Query,
      Namespaces,
      ErrorRecord,
    );

late final _HcnEnumerateNamespaces = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Namespaces,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Namespaces,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnEnumerateNamespaces');

int HcnEnumerateNetworks(
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Networks,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnEnumerateNetworks(
      Query,
      Networks,
      ErrorRecord,
    );

late final _HcnEnumerateNetworks = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Networks,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Networks,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnEnumerateNetworks');

void HcnFreeGuestNetworkPortReservations(
  Pointer<HCN_PORT_RANGE_ENTRY> PortEntries,
) =>
    _HcnFreeGuestNetworkPortReservations(
      PortEntries,
    );

late final _HcnFreeGuestNetworkPortReservations =
    _computenetwork.lookupFunction<
        Void Function(
  Pointer<HCN_PORT_RANGE_ENTRY> PortEntries,
),
        void Function(
  Pointer<HCN_PORT_RANGE_ENTRY> PortEntries,
)>('HcnFreeGuestNetworkPortReservations');

int HcnModifyEndpoint(
  Pointer Endpoint,
  Pointer<Utf16> Settings,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnModifyEndpoint(
      Endpoint,
      Settings,
      ErrorRecord,
    );

late final _HcnModifyEndpoint = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer Endpoint,
  Pointer<Utf16> Settings,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer Endpoint,
  Pointer<Utf16> Settings,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnModifyEndpoint');

int HcnModifyGuestNetworkService(
  Pointer GuestNetworkService,
  Pointer<Utf16> Settings,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnModifyGuestNetworkService(
      GuestNetworkService,
      Settings,
      ErrorRecord,
    );

late final _HcnModifyGuestNetworkService = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer GuestNetworkService,
  Pointer<Utf16> Settings,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer GuestNetworkService,
  Pointer<Utf16> Settings,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnModifyGuestNetworkService');

int HcnModifyLoadBalancer(
  Pointer LoadBalancer,
  Pointer<Utf16> Settings,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnModifyLoadBalancer(
      LoadBalancer,
      Settings,
      ErrorRecord,
    );

late final _HcnModifyLoadBalancer = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer LoadBalancer,
  Pointer<Utf16> Settings,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer LoadBalancer,
  Pointer<Utf16> Settings,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnModifyLoadBalancer');

int HcnModifyNamespace(
  Pointer Namespace,
  Pointer<Utf16> Settings,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnModifyNamespace(
      Namespace,
      Settings,
      ErrorRecord,
    );

late final _HcnModifyNamespace = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer Namespace,
  Pointer<Utf16> Settings,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer Namespace,
  Pointer<Utf16> Settings,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnModifyNamespace');

int HcnModifyNetwork(
  Pointer Network,
  Pointer<Utf16> Settings,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnModifyNetwork(
      Network,
      Settings,
      ErrorRecord,
    );

late final _HcnModifyNetwork = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer Network,
  Pointer<Utf16> Settings,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer Network,
  Pointer<Utf16> Settings,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnModifyNetwork');

int HcnOpenEndpoint(
  Pointer<GUID> Id,
  Pointer<Pointer> Endpoint,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnOpenEndpoint(
      Id,
      Endpoint,
      ErrorRecord,
    );

late final _HcnOpenEndpoint = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer<GUID> Id,
  Pointer<Pointer> Endpoint,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer<GUID> Id,
  Pointer<Pointer> Endpoint,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnOpenEndpoint');

int HcnOpenLoadBalancer(
  Pointer<GUID> Id,
  Pointer<Pointer> LoadBalancer,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnOpenLoadBalancer(
      Id,
      LoadBalancer,
      ErrorRecord,
    );

late final _HcnOpenLoadBalancer = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer<GUID> Id,
  Pointer<Pointer> LoadBalancer,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer<GUID> Id,
  Pointer<Pointer> LoadBalancer,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnOpenLoadBalancer');

int HcnOpenNamespace(
  Pointer<GUID> Id,
  Pointer<Pointer> Namespace,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnOpenNamespace(
      Id,
      Namespace,
      ErrorRecord,
    );

late final _HcnOpenNamespace = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer<GUID> Id,
  Pointer<Pointer> Namespace,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer<GUID> Id,
  Pointer<Pointer> Namespace,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnOpenNamespace');

int HcnOpenNetwork(
  Pointer<GUID> Id,
  Pointer<Pointer> Network,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnOpenNetwork(
      Id,
      Network,
      ErrorRecord,
    );

late final _HcnOpenNetwork = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer<GUID> Id,
  Pointer<Pointer> Network,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer<GUID> Id,
  Pointer<Pointer> Network,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnOpenNetwork');

int HcnQueryEndpointProperties(
  Pointer Endpoint,
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Properties,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnQueryEndpointProperties(
      Endpoint,
      Query,
      Properties,
      ErrorRecord,
    );

late final _HcnQueryEndpointProperties = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer Endpoint,
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Properties,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer Endpoint,
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Properties,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnQueryEndpointProperties');

int HcnQueryLoadBalancerProperties(
  Pointer LoadBalancer,
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Properties,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnQueryLoadBalancerProperties(
      LoadBalancer,
      Query,
      Properties,
      ErrorRecord,
    );

late final _HcnQueryLoadBalancerProperties = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer LoadBalancer,
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Properties,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer LoadBalancer,
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Properties,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnQueryLoadBalancerProperties');

int HcnQueryNamespaceProperties(
  Pointer Namespace,
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Properties,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnQueryNamespaceProperties(
      Namespace,
      Query,
      Properties,
      ErrorRecord,
    );

late final _HcnQueryNamespaceProperties = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer Namespace,
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Properties,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer Namespace,
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Properties,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnQueryNamespaceProperties');

int HcnQueryNetworkProperties(
  Pointer Network,
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Properties,
  Pointer<Pointer<Utf16>> ErrorRecord,
) =>
    _HcnQueryNetworkProperties(
      Network,
      Query,
      Properties,
      ErrorRecord,
    );

late final _HcnQueryNetworkProperties = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer Network,
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Properties,
  Pointer<Pointer<Utf16>> ErrorRecord,
),
    int Function(
  Pointer Network,
  Pointer<Utf16> Query,
  Pointer<Pointer<Utf16>> Properties,
  Pointer<Pointer<Utf16>> ErrorRecord,
)>('HcnQueryNetworkProperties');

int HcnRegisterGuestNetworkServiceCallback(
  Pointer GuestNetworkService,
  Pointer<NativeFunction<HCN_NOTIFICATION_CALLBACK>> Callback,
  Pointer Context,
  Pointer<Pointer> CallbackHandle,
) =>
    _HcnRegisterGuestNetworkServiceCallback(
      GuestNetworkService,
      Callback,
      Context,
      CallbackHandle,
    );

late final _HcnRegisterGuestNetworkServiceCallback =
    _computenetwork.lookupFunction<
        Int32 Function(
  Pointer GuestNetworkService,
  Pointer<NativeFunction<HCN_NOTIFICATION_CALLBACK>> Callback,
  Pointer Context,
  Pointer<Pointer> CallbackHandle,
),
        int Function(
  Pointer GuestNetworkService,
  Pointer<NativeFunction<HCN_NOTIFICATION_CALLBACK>> Callback,
  Pointer Context,
  Pointer<Pointer> CallbackHandle,
)>('HcnRegisterGuestNetworkServiceCallback');

int HcnRegisterServiceCallback(
  Pointer<NativeFunction<HCN_NOTIFICATION_CALLBACK>> Callback,
  Pointer Context,
  Pointer<Pointer> CallbackHandle,
) =>
    _HcnRegisterServiceCallback(
      Callback,
      Context,
      CallbackHandle,
    );

late final _HcnRegisterServiceCallback = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<HCN_NOTIFICATION_CALLBACK>> Callback,
  Pointer Context,
  Pointer<Pointer> CallbackHandle,
),
    int Function(
  Pointer<NativeFunction<HCN_NOTIFICATION_CALLBACK>> Callback,
  Pointer Context,
  Pointer<Pointer> CallbackHandle,
)>('HcnRegisterServiceCallback');

int HcnReleaseGuestNetworkServicePortReservationHandle(
  int PortReservationHandle,
) =>
    _HcnReleaseGuestNetworkServicePortReservationHandle(
      PortReservationHandle,
    );

late final _HcnReleaseGuestNetworkServicePortReservationHandle =
    _computenetwork.lookupFunction<
        Int32 Function(
  IntPtr PortReservationHandle,
),
        int Function(
  int PortReservationHandle,
)>('HcnReleaseGuestNetworkServicePortReservationHandle');

int HcnReserveGuestNetworkServicePort(
  Pointer GuestNetworkService,
  int Protocol,
  int Access,
  int Port,
  Pointer<IntPtr> PortReservationHandle,
) =>
    _HcnReserveGuestNetworkServicePort(
      GuestNetworkService,
      Protocol,
      Access,
      Port,
      PortReservationHandle,
    );

late final _HcnReserveGuestNetworkServicePort = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer GuestNetworkService,
  Int32 Protocol,
  Int32 Access,
  Uint16 Port,
  Pointer<IntPtr> PortReservationHandle,
),
    int Function(
  Pointer GuestNetworkService,
  int Protocol,
  int Access,
  int Port,
  Pointer<IntPtr> PortReservationHandle,
)>('HcnReserveGuestNetworkServicePort');

int HcnReserveGuestNetworkServicePortRange(
  Pointer GuestNetworkService,
  int PortCount,
  Pointer<HCN_PORT_RANGE_RESERVATION> PortRangeReservation,
  Pointer<IntPtr> PortReservationHandle,
) =>
    _HcnReserveGuestNetworkServicePortRange(
      GuestNetworkService,
      PortCount,
      PortRangeReservation,
      PortReservationHandle,
    );

late final _HcnReserveGuestNetworkServicePortRange =
    _computenetwork.lookupFunction<
        Int32 Function(
  Pointer GuestNetworkService,
  Uint16 PortCount,
  Pointer<HCN_PORT_RANGE_RESERVATION> PortRangeReservation,
  Pointer<IntPtr> PortReservationHandle,
),
        int Function(
  Pointer GuestNetworkService,
  int PortCount,
  Pointer<HCN_PORT_RANGE_RESERVATION> PortRangeReservation,
  Pointer<IntPtr> PortReservationHandle,
)>('HcnReserveGuestNetworkServicePortRange');

int HcnUnregisterGuestNetworkServiceCallback(
  Pointer CallbackHandle,
) =>
    _HcnUnregisterGuestNetworkServiceCallback(
      CallbackHandle,
    );

late final _HcnUnregisterGuestNetworkServiceCallback =
    _computenetwork.lookupFunction<
        Int32 Function(
  Pointer CallbackHandle,
),
        int Function(
  Pointer CallbackHandle,
)>('HcnUnregisterGuestNetworkServiceCallback');

int HcnUnregisterServiceCallback(
  Pointer CallbackHandle,
) =>
    _HcnUnregisterServiceCallback(
      CallbackHandle,
    );

late final _HcnUnregisterServiceCallback = _computenetwork.lookupFunction<
    Int32 Function(
  Pointer CallbackHandle,
),
    int Function(
  Pointer CallbackHandle,
)>('HcnUnregisterServiceCallback');
