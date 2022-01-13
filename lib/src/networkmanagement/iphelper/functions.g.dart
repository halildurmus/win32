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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/iphelper/structs.g.dart';
import '../../networking/winsock/structs.g.dart';
import '../../system/windowsprogramming/callbacks.g.dart';
import '../../networkmanagement/iphelper/callbacks.g.dart'; // -----------------------------------------------------------------------

// iphlpapi.dll
// -----------------------------------------------------------------------
final _iphlpapi = DynamicLibrary.open('iphlpapi.dll');

int AddIPAddress(
  int Address,
  int IpMask,
  int IfIndex,
  Pointer<Uint32> NTEContext,
  Pointer<Uint32> NTEInstance,
) =>
    _AddIPAddress(
      Address,
      IpMask,
      IfIndex,
      NTEContext,
      NTEInstance,
    );

late final _AddIPAddress = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint32 Address,
  Uint32 IpMask,
  Uint32 IfIndex,
  Pointer<Uint32> NTEContext,
  Pointer<Uint32> NTEInstance,
),
    int Function(
  int Address,
  int IpMask,
  int IfIndex,
  Pointer<Uint32> NTEContext,
  Pointer<Uint32> NTEInstance,
)>('AddIPAddress');

int CancelIPChangeNotify(
  Pointer<OVERLAPPED> notifyOverlapped,
) =>
    _CancelIPChangeNotify(
      notifyOverlapped,
    );

late final _CancelIPChangeNotify = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<OVERLAPPED> notifyOverlapped,
),
    int Function(
  Pointer<OVERLAPPED> notifyOverlapped,
)>('CancelIPChangeNotify');

int CancelMibChangeNotify2(
  int NotificationHandle,
) =>
    _CancelMibChangeNotify2(
      NotificationHandle,
    );

late final _CancelMibChangeNotify2 = _iphlpapi.lookupFunction<
    Int32 Function(
  IntPtr NotificationHandle,
),
    int Function(
  int NotificationHandle,
)>('CancelMibChangeNotify2');

int CaptureInterfaceHardwareCrossTimestamp(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<INTERFACE_HARDWARE_CROSSTIMESTAMP> CrossTimestamp,
) =>
    _CaptureInterfaceHardwareCrossTimestamp(
      InterfaceLuid,
      CrossTimestamp,
    );

late final _CaptureInterfaceHardwareCrossTimestamp = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<INTERFACE_HARDWARE_CROSSTIMESTAMP> CrossTimestamp,
),
    int Function(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<INTERFACE_HARDWARE_CROSSTIMESTAMP> CrossTimestamp,
)>('CaptureInterfaceHardwareCrossTimestamp');

int ConvertCompartmentGuidToId(
  Pointer<GUID> CompartmentGuid,
  Pointer<Uint32> CompartmentId,
) =>
    _ConvertCompartmentGuidToId(
      CompartmentGuid,
      CompartmentId,
    );

late final _ConvertCompartmentGuidToId = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<GUID> CompartmentGuid,
  Pointer<Uint32> CompartmentId,
),
    int Function(
  Pointer<GUID> CompartmentGuid,
  Pointer<Uint32> CompartmentId,
)>('ConvertCompartmentGuidToId');

int ConvertCompartmentIdToGuid(
  int CompartmentId,
  Pointer<GUID> CompartmentGuid,
) =>
    _ConvertCompartmentIdToGuid(
      CompartmentId,
      CompartmentGuid,
    );

late final _ConvertCompartmentIdToGuid = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint32 CompartmentId,
  Pointer<GUID> CompartmentGuid,
),
    int Function(
  int CompartmentId,
  Pointer<GUID> CompartmentGuid,
)>('ConvertCompartmentIdToGuid');

int ConvertInterfaceAliasToLuid(
  Pointer<Utf16> InterfaceAlias,
  Pointer<NET_LUID_LH> InterfaceLuid,
) =>
    _ConvertInterfaceAliasToLuid(
      InterfaceAlias,
      InterfaceLuid,
    );

late final _ConvertInterfaceAliasToLuid = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> InterfaceAlias,
  Pointer<NET_LUID_LH> InterfaceLuid,
),
    int Function(
  Pointer<Utf16> InterfaceAlias,
  Pointer<NET_LUID_LH> InterfaceLuid,
)>('ConvertInterfaceAliasToLuid');

int ConvertInterfaceGuidToLuid(
  Pointer<GUID> InterfaceGuid,
  Pointer<NET_LUID_LH> InterfaceLuid,
) =>
    _ConvertInterfaceGuidToLuid(
      InterfaceGuid,
      InterfaceLuid,
    );

late final _ConvertInterfaceGuidToLuid = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<GUID> InterfaceGuid,
  Pointer<NET_LUID_LH> InterfaceLuid,
),
    int Function(
  Pointer<GUID> InterfaceGuid,
  Pointer<NET_LUID_LH> InterfaceLuid,
)>('ConvertInterfaceGuidToLuid');

int ConvertInterfaceIndexToLuid(
  int InterfaceIndex,
  Pointer<NET_LUID_LH> InterfaceLuid,
) =>
    _ConvertInterfaceIndexToLuid(
      InterfaceIndex,
      InterfaceLuid,
    );

late final _ConvertInterfaceIndexToLuid = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint32 InterfaceIndex,
  Pointer<NET_LUID_LH> InterfaceLuid,
),
    int Function(
  int InterfaceIndex,
  Pointer<NET_LUID_LH> InterfaceLuid,
)>('ConvertInterfaceIndexToLuid');

int ConvertInterfaceLuidToAlias(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<Utf16> InterfaceAlias,
  int Length,
) =>
    _ConvertInterfaceLuidToAlias(
      InterfaceLuid,
      InterfaceAlias,
      Length,
    );

late final _ConvertInterfaceLuidToAlias = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<Utf16> InterfaceAlias,
  IntPtr Length,
),
    int Function(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<Utf16> InterfaceAlias,
  int Length,
)>('ConvertInterfaceLuidToAlias');

int ConvertInterfaceLuidToGuid(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<GUID> InterfaceGuid,
) =>
    _ConvertInterfaceLuidToGuid(
      InterfaceLuid,
      InterfaceGuid,
    );

late final _ConvertInterfaceLuidToGuid = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<GUID> InterfaceGuid,
),
    int Function(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<GUID> InterfaceGuid,
)>('ConvertInterfaceLuidToGuid');

int ConvertInterfaceLuidToIndex(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<Uint32> InterfaceIndex,
) =>
    _ConvertInterfaceLuidToIndex(
      InterfaceLuid,
      InterfaceIndex,
    );

late final _ConvertInterfaceLuidToIndex = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<Uint32> InterfaceIndex,
),
    int Function(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<Uint32> InterfaceIndex,
)>('ConvertInterfaceLuidToIndex');

int ConvertInterfaceLuidToName(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<Utf16> InterfaceName,
  int Length,
) =>
    _ConvertInterfaceLuidToName(
      InterfaceLuid,
      InterfaceName,
      Length,
    );

late final _ConvertInterfaceLuidToName = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<Utf16> InterfaceName,
  IntPtr Length,
),
    int Function(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<Utf16> InterfaceName,
  int Length,
)>('ConvertInterfaceLuidToNameW');

int ConvertInterfaceNameToLuid(
  Pointer<Utf16> InterfaceName,
  Pointer<NET_LUID_LH> InterfaceLuid,
) =>
    _ConvertInterfaceNameToLuid(
      InterfaceName,
      InterfaceLuid,
    );

late final _ConvertInterfaceNameToLuid = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> InterfaceName,
  Pointer<NET_LUID_LH> InterfaceLuid,
),
    int Function(
  Pointer<Utf16> InterfaceName,
  Pointer<NET_LUID_LH> InterfaceLuid,
)>('ConvertInterfaceNameToLuidW');

int ConvertIpv4MaskToLength(
  int Mask,
  Pointer<Uint8> MaskLength,
) =>
    _ConvertIpv4MaskToLength(
      Mask,
      MaskLength,
    );

late final _ConvertIpv4MaskToLength = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint32 Mask,
  Pointer<Uint8> MaskLength,
),
    int Function(
  int Mask,
  Pointer<Uint8> MaskLength,
)>('ConvertIpv4MaskToLength');

int ConvertLengthToIpv4Mask(
  int MaskLength,
  Pointer<Uint32> Mask,
) =>
    _ConvertLengthToIpv4Mask(
      MaskLength,
      Mask,
    );

late final _ConvertLengthToIpv4Mask = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint32 MaskLength,
  Pointer<Uint32> Mask,
),
    int Function(
  int MaskLength,
  Pointer<Uint32> Mask,
)>('ConvertLengthToIpv4Mask');

int CreateAnycastIpAddressEntry(
  Pointer<MIB_ANYCASTIPADDRESS_RO> Row,
) =>
    _CreateAnycastIpAddressEntry(
      Row,
    );

late final _CreateAnycastIpAddressEntry = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_ANYCASTIPADDRESS_RO> Row,
),
    int Function(
  Pointer<MIB_ANYCASTIPADDRESS_RO> Row,
)>('CreateAnycastIpAddressEntry');

int CreateIpForwardEntry(
  Pointer<MIB_IPFORWARDRO> pRoute,
) =>
    _CreateIpForwardEntry(
      pRoute,
    );

late final _CreateIpForwardEntry = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_IPFORWARDRO> pRoute,
),
    int Function(
  Pointer<MIB_IPFORWARDRO> pRoute,
)>('CreateIpForwardEntry');

int CreateIpForwardEntry2(
  Pointer<MIB_IPFORWARD_ROW2> Row,
) =>
    _CreateIpForwardEntry2(
      Row,
    );

late final _CreateIpForwardEntry2 = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_IPFORWARD_ROW2> Row,
),
    int Function(
  Pointer<MIB_IPFORWARD_ROW2> Row,
)>('CreateIpForwardEntry2');

int CreateIpNetEntry(
  Pointer<MIB_IPNETROW_LH> pArpEntry,
) =>
    _CreateIpNetEntry(
      pArpEntry,
    );

late final _CreateIpNetEntry = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_IPNETROW_LH> pArpEntry,
),
    int Function(
  Pointer<MIB_IPNETROW_LH> pArpEntry,
)>('CreateIpNetEntry');

int CreateIpNetEntry2(
  Pointer<MIB_IPNET_ROW2> Row,
) =>
    _CreateIpNetEntry2(
      Row,
    );

late final _CreateIpNetEntry2 = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_IPNET_ROW2> Row,
),
    int Function(
  Pointer<MIB_IPNET_ROW2> Row,
)>('CreateIpNetEntry2');

int CreatePersistentTcpPortReservation(
  int StartPort,
  int NumberOfPorts,
  Pointer<Uint64> Token,
) =>
    _CreatePersistentTcpPortReservation(
      StartPort,
      NumberOfPorts,
      Token,
    );

late final _CreatePersistentTcpPortReservation = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint16 StartPort,
  Uint16 NumberOfPorts,
  Pointer<Uint64> Token,
),
    int Function(
  int StartPort,
  int NumberOfPorts,
  Pointer<Uint64> Token,
)>('CreatePersistentTcpPortReservation');

int CreatePersistentUdpPortReservation(
  int StartPort,
  int NumberOfPorts,
  Pointer<Uint64> Token,
) =>
    _CreatePersistentUdpPortReservation(
      StartPort,
      NumberOfPorts,
      Token,
    );

late final _CreatePersistentUdpPortReservation = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint16 StartPort,
  Uint16 NumberOfPorts,
  Pointer<Uint64> Token,
),
    int Function(
  int StartPort,
  int NumberOfPorts,
  Pointer<Uint64> Token,
)>('CreatePersistentUdpPortReservation');

int CreateProxyArpEntry(
  int dwAddress,
  int dwMask,
  int dwIfIndex,
) =>
    _CreateProxyArpEntry(
      dwAddress,
      dwMask,
      dwIfIndex,
    );

late final _CreateProxyArpEntry = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint32 dwAddress,
  Uint32 dwMask,
  Uint32 dwIfIndex,
),
    int Function(
  int dwAddress,
  int dwMask,
  int dwIfIndex,
)>('CreateProxyArpEntry');

int CreateSortedAddressPairs(
  Pointer<SOCKADDR_IN6> SourceAddressList,
  int SourceAddressCount,
  Pointer<SOCKADDR_IN6> DestinationAddressList,
  int DestinationAddressCount,
  int AddressSortOptions,
  Pointer<Pointer<SOCKADDR_IN6_PAIR>> SortedAddressPairList,
  Pointer<Uint32> SortedAddressPairCount,
) =>
    _CreateSortedAddressPairs(
      SourceAddressList,
      SourceAddressCount,
      DestinationAddressList,
      DestinationAddressCount,
      AddressSortOptions,
      SortedAddressPairList,
      SortedAddressPairCount,
    );

late final _CreateSortedAddressPairs = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<SOCKADDR_IN6> SourceAddressList,
  Uint32 SourceAddressCount,
  Pointer<SOCKADDR_IN6> DestinationAddressList,
  Uint32 DestinationAddressCount,
  Uint32 AddressSortOptions,
  Pointer<Pointer<SOCKADDR_IN6_PAIR>> SortedAddressPairList,
  Pointer<Uint32> SortedAddressPairCount,
),
    int Function(
  Pointer<SOCKADDR_IN6> SourceAddressList,
  int SourceAddressCount,
  Pointer<SOCKADDR_IN6> DestinationAddressList,
  int DestinationAddressCount,
  int AddressSortOptions,
  Pointer<Pointer<SOCKADDR_IN6_PAIR>> SortedAddressPairList,
  Pointer<Uint32> SortedAddressPairCount,
)>('CreateSortedAddressPairs');

int CreateUnicastIpAddressEntry(
  Pointer<MIB_UNICASTIPADDRESS_RO> Row,
) =>
    _CreateUnicastIpAddressEntry(
      Row,
    );

late final _CreateUnicastIpAddressEntry = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_UNICASTIPADDRESS_RO> Row,
),
    int Function(
  Pointer<MIB_UNICASTIPADDRESS_RO> Row,
)>('CreateUnicastIpAddressEntry');

int DeleteAnycastIpAddressEntry(
  Pointer<MIB_ANYCASTIPADDRESS_RO> Row,
) =>
    _DeleteAnycastIpAddressEntry(
      Row,
    );

late final _DeleteAnycastIpAddressEntry = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_ANYCASTIPADDRESS_RO> Row,
),
    int Function(
  Pointer<MIB_ANYCASTIPADDRESS_RO> Row,
)>('DeleteAnycastIpAddressEntry');

int DeleteIPAddress(
  int NTEContext,
) =>
    _DeleteIPAddress(
      NTEContext,
    );

late final _DeleteIPAddress = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint32 NTEContext,
),
    int Function(
  int NTEContext,
)>('DeleteIPAddress');

int DeleteIpForwardEntry(
  Pointer<MIB_IPFORWARDRO> pRoute,
) =>
    _DeleteIpForwardEntry(
      pRoute,
    );

late final _DeleteIpForwardEntry = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_IPFORWARDRO> pRoute,
),
    int Function(
  Pointer<MIB_IPFORWARDRO> pRoute,
)>('DeleteIpForwardEntry');

int DeleteIpForwardEntry2(
  Pointer<MIB_IPFORWARD_ROW2> Row,
) =>
    _DeleteIpForwardEntry2(
      Row,
    );

late final _DeleteIpForwardEntry2 = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_IPFORWARD_ROW2> Row,
),
    int Function(
  Pointer<MIB_IPFORWARD_ROW2> Row,
)>('DeleteIpForwardEntry2');

int DeleteIpNetEntry(
  Pointer<MIB_IPNETROW_LH> pArpEntry,
) =>
    _DeleteIpNetEntry(
      pArpEntry,
    );

late final _DeleteIpNetEntry = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_IPNETROW_LH> pArpEntry,
),
    int Function(
  Pointer<MIB_IPNETROW_LH> pArpEntry,
)>('DeleteIpNetEntry');

int DeleteIpNetEntry2(
  Pointer<MIB_IPNET_ROW2> Row,
) =>
    _DeleteIpNetEntry2(
      Row,
    );

late final _DeleteIpNetEntry2 = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_IPNET_ROW2> Row,
),
    int Function(
  Pointer<MIB_IPNET_ROW2> Row,
)>('DeleteIpNetEntry2');

int DeletePersistentTcpPortReservation(
  int StartPort,
  int NumberOfPorts,
) =>
    _DeletePersistentTcpPortReservation(
      StartPort,
      NumberOfPorts,
    );

late final _DeletePersistentTcpPortReservation = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint16 StartPort,
  Uint16 NumberOfPorts,
),
    int Function(
  int StartPort,
  int NumberOfPorts,
)>('DeletePersistentTcpPortReservation');

int DeletePersistentUdpPortReservation(
  int StartPort,
  int NumberOfPorts,
) =>
    _DeletePersistentUdpPortReservation(
      StartPort,
      NumberOfPorts,
    );

late final _DeletePersistentUdpPortReservation = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint16 StartPort,
  Uint16 NumberOfPorts,
),
    int Function(
  int StartPort,
  int NumberOfPorts,
)>('DeletePersistentUdpPortReservation');

int DeleteProxyArpEntry(
  int dwAddress,
  int dwMask,
  int dwIfIndex,
) =>
    _DeleteProxyArpEntry(
      dwAddress,
      dwMask,
      dwIfIndex,
    );

late final _DeleteProxyArpEntry = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint32 dwAddress,
  Uint32 dwMask,
  Uint32 dwIfIndex,
),
    int Function(
  int dwAddress,
  int dwMask,
  int dwIfIndex,
)>('DeleteProxyArpEntry');

int DeleteUnicastIpAddressEntry(
  Pointer<MIB_UNICASTIPADDRESS_RO> Row,
) =>
    _DeleteUnicastIpAddressEntry(
      Row,
    );

late final _DeleteUnicastIpAddressEntry = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_UNICASTIPADDRESS_RO> Row,
),
    int Function(
  Pointer<MIB_UNICASTIPADDRESS_RO> Row,
)>('DeleteUnicastIpAddressEntry');

int DisableMediaSense(
  Pointer<IntPtr> pHandle,
  Pointer<OVERLAPPED> pOverLapped,
) =>
    _DisableMediaSense(
      pHandle,
      pOverLapped,
    );

late final _DisableMediaSense = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> pHandle,
  Pointer<OVERLAPPED> pOverLapped,
),
    int Function(
  Pointer<IntPtr> pHandle,
  Pointer<OVERLAPPED> pOverLapped,
)>('DisableMediaSense');

int EnableRouter(
  Pointer<IntPtr> pHandle,
  Pointer<OVERLAPPED> pOverlapped,
) =>
    _EnableRouter(
      pHandle,
      pOverlapped,
    );

late final _EnableRouter = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> pHandle,
  Pointer<OVERLAPPED> pOverlapped,
),
    int Function(
  Pointer<IntPtr> pHandle,
  Pointer<OVERLAPPED> pOverlapped,
)>('EnableRouter');

int FlushIpNetTable(
  int dwIfIndex,
) =>
    _FlushIpNetTable(
      dwIfIndex,
    );

late final _FlushIpNetTable = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint32 dwIfIndex,
),
    int Function(
  int dwIfIndex,
)>('FlushIpNetTable');

int FlushIpNetTable2(
  int Family,
  int InterfaceIndex,
) =>
    _FlushIpNetTable2(
      Family,
      InterfaceIndex,
    );

late final _FlushIpNetTable2 = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint16 Family,
  Uint32 InterfaceIndex,
),
    int Function(
  int Family,
  int InterfaceIndex,
)>('FlushIpNetTable2');

int FlushIpPathTable(
  int Family,
) =>
    _FlushIpPathTable(
      Family,
    );

late final _FlushIpPathTable = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint16 Family,
),
    int Function(
  int Family,
)>('FlushIpPathTable');

void FreeDnsSettings(
  Pointer<DNS_SETTINGS> Settings,
) =>
    _FreeDnsSettings(
      Settings,
    );

late final _FreeDnsSettings = _iphlpapi.lookupFunction<
    Void Function(
  Pointer<DNS_SETTINGS> Settings,
),
    void Function(
  Pointer<DNS_SETTINGS> Settings,
)>('FreeDnsSettings');

void FreeInterfaceDnsSettings(
  Pointer<DNS_INTERFACE_SETTINGS> Settings,
) =>
    _FreeInterfaceDnsSettings(
      Settings,
    );

late final _FreeInterfaceDnsSettings = _iphlpapi.lookupFunction<
    Void Function(
  Pointer<DNS_INTERFACE_SETTINGS> Settings,
),
    void Function(
  Pointer<DNS_INTERFACE_SETTINGS> Settings,
)>('FreeInterfaceDnsSettings');

void FreeMibTable(
  Pointer Memory,
) =>
    _FreeMibTable(
      Memory,
    );

late final _FreeMibTable = _iphlpapi.lookupFunction<
    Void Function(
  Pointer Memory,
),
    void Function(
  Pointer Memory,
)>('FreeMibTable');

int GetAdapterIndex(
  Pointer<Utf16> AdapterName,
  Pointer<Uint32> IfIndex,
) =>
    _GetAdapterIndex(
      AdapterName,
      IfIndex,
    );

late final _GetAdapterIndex = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<Utf16> AdapterName,
  Pointer<Uint32> IfIndex,
),
    int Function(
  Pointer<Utf16> AdapterName,
  Pointer<Uint32> IfIndex,
)>('GetAdapterIndex');

Pointer<IP_ADAPTER_ORDER_MAP> GetAdapterOrderMap() => _GetAdapterOrderMap();

late final _GetAdapterOrderMap = _iphlpapi.lookupFunction<
    Pointer<IP_ADAPTER_ORDER_MAP> Function(),
    Pointer<IP_ADAPTER_ORDER_MAP> Function()>('GetAdapterOrderMap');

int GetAdaptersAddresses(
  int Family,
  int Flags,
  Pointer Reserved,
  Pointer<IP_ADAPTER_ADDRESSES_LH> AdapterAddresses,
  Pointer<Uint32> SizePointer,
) =>
    _GetAdaptersAddresses(
      Family,
      Flags,
      Reserved,
      AdapterAddresses,
      SizePointer,
    );

late final _GetAdaptersAddresses = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint32 Family,
  Uint32 Flags,
  Pointer Reserved,
  Pointer<IP_ADAPTER_ADDRESSES_LH> AdapterAddresses,
  Pointer<Uint32> SizePointer,
),
    int Function(
  int Family,
  int Flags,
  Pointer Reserved,
  Pointer<IP_ADAPTER_ADDRESSES_LH> AdapterAddresses,
  Pointer<Uint32> SizePointer,
)>('GetAdaptersAddresses');

int GetAdaptersInfo(
  Pointer<IP_ADAPTER_INFO> AdapterInfo,
  Pointer<Uint32> SizePointer,
) =>
    _GetAdaptersInfo(
      AdapterInfo,
      SizePointer,
    );

late final _GetAdaptersInfo = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<IP_ADAPTER_INFO> AdapterInfo,
  Pointer<Uint32> SizePointer,
),
    int Function(
  Pointer<IP_ADAPTER_INFO> AdapterInfo,
  Pointer<Uint32> SizePointer,
)>('GetAdaptersInfo');

int GetAnycastIpAddressEntry(
  Pointer<MIB_ANYCASTIPADDRESS_RO> Row,
) =>
    _GetAnycastIpAddressEntry(
      Row,
    );

late final _GetAnycastIpAddressEntry = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_ANYCASTIPADDRESS_RO> Row,
),
    int Function(
  Pointer<MIB_ANYCASTIPADDRESS_RO> Row,
)>('GetAnycastIpAddressEntry');

int GetAnycastIpAddressTable(
  int Family,
  Pointer<Pointer<MIB_ANYCASTIPADDRESS_TABLE>> Table,
) =>
    _GetAnycastIpAddressTable(
      Family,
      Table,
    );

late final _GetAnycastIpAddressTable = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint16 Family,
  Pointer<Pointer<MIB_ANYCASTIPADDRESS_TABLE>> Table,
),
    int Function(
  int Family,
  Pointer<Pointer<MIB_ANYCASTIPADDRESS_TABLE>> Table,
)>('GetAnycastIpAddressTable');

int GetBestInterface(
  int dwDestAddr,
  Pointer<Uint32> pdwBestIfIndex,
) =>
    _GetBestInterface(
      dwDestAddr,
      pdwBestIfIndex,
    );

late final _GetBestInterface = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint32 dwDestAddr,
  Pointer<Uint32> pdwBestIfIndex,
),
    int Function(
  int dwDestAddr,
  Pointer<Uint32> pdwBestIfIndex,
)>('GetBestInterface');

int GetBestInterfaceEx(
  Pointer<SOCKADDR> pDestAddr,
  Pointer<Uint32> pdwBestIfIndex,
) =>
    _GetBestInterfaceEx(
      pDestAddr,
      pdwBestIfIndex,
    );

late final _GetBestInterfaceEx = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<SOCKADDR> pDestAddr,
  Pointer<Uint32> pdwBestIfIndex,
),
    int Function(
  Pointer<SOCKADDR> pDestAddr,
  Pointer<Uint32> pdwBestIfIndex,
)>('GetBestInterfaceEx');

int GetBestRoute(
  int dwDestAddr,
  int dwSourceAddr,
  Pointer<MIB_IPFORWARDRO> pBestRoute,
) =>
    _GetBestRoute(
      dwDestAddr,
      dwSourceAddr,
      pBestRoute,
    );

late final _GetBestRoute = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint32 dwDestAddr,
  Uint32 dwSourceAddr,
  Pointer<MIB_IPFORWARDRO> pBestRoute,
),
    int Function(
  int dwDestAddr,
  int dwSourceAddr,
  Pointer<MIB_IPFORWARDRO> pBestRoute,
)>('GetBestRoute');

int GetBestRoute2(
  Pointer<NET_LUID_LH> InterfaceLuid,
  int InterfaceIndex,
  Pointer<SOCKADDR_INET> SourceAddress,
  Pointer<SOCKADDR_INET> DestinationAddress,
  int AddressSortOptions,
  Pointer<MIB_IPFORWARD_ROW2> BestRoute,
  Pointer<SOCKADDR_INET> BestSourceAddress,
) =>
    _GetBestRoute2(
      InterfaceLuid,
      InterfaceIndex,
      SourceAddress,
      DestinationAddress,
      AddressSortOptions,
      BestRoute,
      BestSourceAddress,
    );

late final _GetBestRoute2 = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Uint32 InterfaceIndex,
  Pointer<SOCKADDR_INET> SourceAddress,
  Pointer<SOCKADDR_INET> DestinationAddress,
  Uint32 AddressSortOptions,
  Pointer<MIB_IPFORWARD_ROW2> BestRoute,
  Pointer<SOCKADDR_INET> BestSourceAddress,
),
    int Function(
  Pointer<NET_LUID_LH> InterfaceLuid,
  int InterfaceIndex,
  Pointer<SOCKADDR_INET> SourceAddress,
  Pointer<SOCKADDR_INET> DestinationAddress,
  int AddressSortOptions,
  Pointer<MIB_IPFORWARD_ROW2> BestRoute,
  Pointer<SOCKADDR_INET> BestSourceAddress,
)>('GetBestRoute2');

int GetCurrentThreadCompartmentId() => _GetCurrentThreadCompartmentId();

late final _GetCurrentThreadCompartmentId =
    _iphlpapi.lookupFunction<Uint32 Function(), int Function()>(
        'GetCurrentThreadCompartmentId');

void GetCurrentThreadCompartmentScope(
  Pointer<Uint32> CompartmentScope,
  Pointer<Uint32> CompartmentId,
) =>
    _GetCurrentThreadCompartmentScope(
      CompartmentScope,
      CompartmentId,
    );

late final _GetCurrentThreadCompartmentScope = _iphlpapi.lookupFunction<
    Void Function(
  Pointer<Uint32> CompartmentScope,
  Pointer<Uint32> CompartmentId,
),
    void Function(
  Pointer<Uint32> CompartmentScope,
  Pointer<Uint32> CompartmentId,
)>('GetCurrentThreadCompartmentScope');

int GetDefaultCompartmentId() => _GetDefaultCompartmentId();

late final _GetDefaultCompartmentId =
    _iphlpapi.lookupFunction<Uint32 Function(), int Function()>(
        'GetDefaultCompartmentId');

int GetDnsSettings(
  Pointer<DNS_SETTINGS> Settings,
) =>
    _GetDnsSettings(
      Settings,
    );

late final _GetDnsSettings = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<DNS_SETTINGS> Settings,
),
    int Function(
  Pointer<DNS_SETTINGS> Settings,
)>('GetDnsSettings');

int GetExtendedTcpTable(
  Pointer pTcpTable,
  Pointer<Uint32> pdwSize,
  int bOrder,
  int ulAf,
  int TableClass,
  int Reserved,
) =>
    _GetExtendedTcpTable(
      pTcpTable,
      pdwSize,
      bOrder,
      ulAf,
      TableClass,
      Reserved,
    );

late final _GetExtendedTcpTable = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer pTcpTable,
  Pointer<Uint32> pdwSize,
  Int32 bOrder,
  Uint32 ulAf,
  Int32 TableClass,
  Uint32 Reserved,
),
    int Function(
  Pointer pTcpTable,
  Pointer<Uint32> pdwSize,
  int bOrder,
  int ulAf,
  int TableClass,
  int Reserved,
)>('GetExtendedTcpTable');

int GetExtendedUdpTable(
  Pointer pUdpTable,
  Pointer<Uint32> pdwSize,
  int bOrder,
  int ulAf,
  int TableClass,
  int Reserved,
) =>
    _GetExtendedUdpTable(
      pUdpTable,
      pdwSize,
      bOrder,
      ulAf,
      TableClass,
      Reserved,
    );

late final _GetExtendedUdpTable = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer pUdpTable,
  Pointer<Uint32> pdwSize,
  Int32 bOrder,
  Uint32 ulAf,
  Int32 TableClass,
  Uint32 Reserved,
),
    int Function(
  Pointer pUdpTable,
  Pointer<Uint32> pdwSize,
  int bOrder,
  int ulAf,
  int TableClass,
  int Reserved,
)>('GetExtendedUdpTable');

int GetFriendlyIfIndex(
  int IfIndex,
) =>
    _GetFriendlyIfIndex(
      IfIndex,
    );

late final _GetFriendlyIfIndex = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint32 IfIndex,
),
    int Function(
  int IfIndex,
)>('GetFriendlyIfIndex');

int GetIcmpStatistics(
  Pointer<MIB_ICMP> Statistics,
) =>
    _GetIcmpStatistics(
      Statistics,
    );

late final _GetIcmpStatistics = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_ICMP> Statistics,
),
    int Function(
  Pointer<MIB_ICMP> Statistics,
)>('GetIcmpStatistics');

int GetIcmpStatisticsEx(
  Pointer<MIB_ICMP_EX_XPSP1> Statistics,
  int Family,
) =>
    _GetIcmpStatisticsEx(
      Statistics,
      Family,
    );

late final _GetIcmpStatisticsEx = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_ICMP_EX_XPSP1> Statistics,
  Uint32 Family,
),
    int Function(
  Pointer<MIB_ICMP_EX_XPSP1> Statistics,
  int Family,
)>('GetIcmpStatisticsEx');

int GetIfEntry(
  Pointer<MIB_IFRO> pIfRow,
) =>
    _GetIfEntry(
      pIfRow,
    );

late final _GetIfEntry = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_IFRO> pIfRow,
),
    int Function(
  Pointer<MIB_IFRO> pIfRow,
)>('GetIfEntry');

int GetIfEntry2(
  Pointer<MIB_IF_ROW2> Row,
) =>
    _GetIfEntry2(
      Row,
    );

late final _GetIfEntry2 = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_IF_ROW2> Row,
),
    int Function(
  Pointer<MIB_IF_ROW2> Row,
)>('GetIfEntry2');

int GetIfEntry2Ex(
  int Level,
  Pointer<MIB_IF_ROW2> Row,
) =>
    _GetIfEntry2Ex(
      Level,
      Row,
    );

late final _GetIfEntry2Ex = _iphlpapi.lookupFunction<
    Int32 Function(
  Int32 Level,
  Pointer<MIB_IF_ROW2> Row,
),
    int Function(
  int Level,
  Pointer<MIB_IF_ROW2> Row,
)>('GetIfEntry2Ex');

int GetIfStackTable(
  Pointer<Pointer<MIB_IFSTACK_TABLE>> Table,
) =>
    _GetIfStackTable(
      Table,
    );

late final _GetIfStackTable = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<Pointer<MIB_IFSTACK_TABLE>> Table,
),
    int Function(
  Pointer<Pointer<MIB_IFSTACK_TABLE>> Table,
)>('GetIfStackTable');

int GetIfTable(
  Pointer<MIB_IFTABLE> pIfTable,
  Pointer<Uint32> pdwSize,
  int bOrder,
) =>
    _GetIfTable(
      pIfTable,
      pdwSize,
      bOrder,
    );

late final _GetIfTable = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_IFTABLE> pIfTable,
  Pointer<Uint32> pdwSize,
  Int32 bOrder,
),
    int Function(
  Pointer<MIB_IFTABLE> pIfTable,
  Pointer<Uint32> pdwSize,
  int bOrder,
)>('GetIfTable');

int GetIfTable2(
  Pointer<Pointer<MIB_IF_TABLE2>> Table,
) =>
    _GetIfTable2(
      Table,
    );

late final _GetIfTable2 = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<Pointer<MIB_IF_TABLE2>> Table,
),
    int Function(
  Pointer<Pointer<MIB_IF_TABLE2>> Table,
)>('GetIfTable2');

int GetIfTable2Ex(
  int Level,
  Pointer<Pointer<MIB_IF_TABLE2>> Table,
) =>
    _GetIfTable2Ex(
      Level,
      Table,
    );

late final _GetIfTable2Ex = _iphlpapi.lookupFunction<
    Int32 Function(
  Int32 Level,
  Pointer<Pointer<MIB_IF_TABLE2>> Table,
),
    int Function(
  int Level,
  Pointer<Pointer<MIB_IF_TABLE2>> Table,
)>('GetIfTable2Ex');

int GetInterfaceActiveTimestampCapabilities(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<INTERFACE_TIMESTAMP_CAPABILITIES> TimestampCapabilites,
) =>
    _GetInterfaceActiveTimestampCapabilities(
      InterfaceLuid,
      TimestampCapabilites,
    );

late final _GetInterfaceActiveTimestampCapabilities = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<INTERFACE_TIMESTAMP_CAPABILITIES> TimestampCapabilites,
),
    int Function(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<INTERFACE_TIMESTAMP_CAPABILITIES> TimestampCapabilites,
)>('GetInterfaceActiveTimestampCapabilities');

int GetInterfaceDnsSettings(
  GUID Interface,
  Pointer<DNS_INTERFACE_SETTINGS> Settings,
) =>
    _GetInterfaceDnsSettings(
      Interface,
      Settings,
    );

late final _GetInterfaceDnsSettings = _iphlpapi.lookupFunction<
    Int32 Function(
  GUID Interface,
  Pointer<DNS_INTERFACE_SETTINGS> Settings,
),
    int Function(
  GUID Interface,
  Pointer<DNS_INTERFACE_SETTINGS> Settings,
)>('GetInterfaceDnsSettings');

int GetInterfaceInfo(
  Pointer<IP_INTERFACE_INFO> pIfTable,
  Pointer<Uint32> dwOutBufLen,
) =>
    _GetInterfaceInfo(
      pIfTable,
      dwOutBufLen,
    );

late final _GetInterfaceInfo = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<IP_INTERFACE_INFO> pIfTable,
  Pointer<Uint32> dwOutBufLen,
),
    int Function(
  Pointer<IP_INTERFACE_INFO> pIfTable,
  Pointer<Uint32> dwOutBufLen,
)>('GetInterfaceInfo');

int GetInterfaceSupportedTimestampCapabilities(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<INTERFACE_TIMESTAMP_CAPABILITIES> TimestampCapabilites,
) =>
    _GetInterfaceSupportedTimestampCapabilities(
      InterfaceLuid,
      TimestampCapabilites,
    );

late final _GetInterfaceSupportedTimestampCapabilities =
    _iphlpapi.lookupFunction<
        Uint32 Function(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<INTERFACE_TIMESTAMP_CAPABILITIES> TimestampCapabilites,
),
        int Function(
  Pointer<NET_LUID_LH> InterfaceLuid,
  Pointer<INTERFACE_TIMESTAMP_CAPABILITIES> TimestampCapabilites,
)>('GetInterfaceSupportedTimestampCapabilities');

int GetInvertedIfStackTable(
  Pointer<Pointer<MIB_INVERTEDIFSTACK_TABLE>> Table,
) =>
    _GetInvertedIfStackTable(
      Table,
    );

late final _GetInvertedIfStackTable = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<Pointer<MIB_INVERTEDIFSTACK_TABLE>> Table,
),
    int Function(
  Pointer<Pointer<MIB_INVERTEDIFSTACK_TABLE>> Table,
)>('GetInvertedIfStackTable');

int GetIpAddrTable(
  Pointer<MIB_IPADDRTABLE> pIpAddrTable,
  Pointer<Uint32> pdwSize,
  int bOrder,
) =>
    _GetIpAddrTable(
      pIpAddrTable,
      pdwSize,
      bOrder,
    );

late final _GetIpAddrTable = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_IPADDRTABLE> pIpAddrTable,
  Pointer<Uint32> pdwSize,
  Int32 bOrder,
),
    int Function(
  Pointer<MIB_IPADDRTABLE> pIpAddrTable,
  Pointer<Uint32> pdwSize,
  int bOrder,
)>('GetIpAddrTable');

int GetIpErrorString(
  int ErrorCode,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> Size,
) =>
    _GetIpErrorString(
      ErrorCode,
      Buffer,
      Size,
    );

late final _GetIpErrorString = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint32 ErrorCode,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> Size,
),
    int Function(
  int ErrorCode,
  Pointer<Utf16> Buffer,
  Pointer<Uint32> Size,
)>('GetIpErrorString');

int GetIpForwardEntry2(
  Pointer<MIB_IPFORWARD_ROW2> Row,
) =>
    _GetIpForwardEntry2(
      Row,
    );

late final _GetIpForwardEntry2 = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_IPFORWARD_ROW2> Row,
),
    int Function(
  Pointer<MIB_IPFORWARD_ROW2> Row,
)>('GetIpForwardEntry2');

int GetIpForwardTable(
  Pointer<MIB_IPFORWARDTABLE> pIpForwardTable,
  Pointer<Uint32> pdwSize,
  int bOrder,
) =>
    _GetIpForwardTable(
      pIpForwardTable,
      pdwSize,
      bOrder,
    );

late final _GetIpForwardTable = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_IPFORWARDTABLE> pIpForwardTable,
  Pointer<Uint32> pdwSize,
  Int32 bOrder,
),
    int Function(
  Pointer<MIB_IPFORWARDTABLE> pIpForwardTable,
  Pointer<Uint32> pdwSize,
  int bOrder,
)>('GetIpForwardTable');

int GetIpForwardTable2(
  int Family,
  Pointer<Pointer<MIB_IPFORWARD_TABLE2>> Table,
) =>
    _GetIpForwardTable2(
      Family,
      Table,
    );

late final _GetIpForwardTable2 = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint16 Family,
  Pointer<Pointer<MIB_IPFORWARD_TABLE2>> Table,
),
    int Function(
  int Family,
  Pointer<Pointer<MIB_IPFORWARD_TABLE2>> Table,
)>('GetIpForwardTable2');

int GetIpInterfaceEntry(
  Pointer<MIB_IPINTERFACE_RO> Row,
) =>
    _GetIpInterfaceEntry(
      Row,
    );

late final _GetIpInterfaceEntry = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_IPINTERFACE_RO> Row,
),
    int Function(
  Pointer<MIB_IPINTERFACE_RO> Row,
)>('GetIpInterfaceEntry');

int GetIpInterfaceTable(
  int Family,
  Pointer<Pointer<MIB_IPINTERFACE_TABLE>> Table,
) =>
    _GetIpInterfaceTable(
      Family,
      Table,
    );

late final _GetIpInterfaceTable = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint16 Family,
  Pointer<Pointer<MIB_IPINTERFACE_TABLE>> Table,
),
    int Function(
  int Family,
  Pointer<Pointer<MIB_IPINTERFACE_TABLE>> Table,
)>('GetIpInterfaceTable');

int GetIpNetEntry2(
  Pointer<MIB_IPNET_ROW2> Row,
) =>
    _GetIpNetEntry2(
      Row,
    );

late final _GetIpNetEntry2 = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_IPNET_ROW2> Row,
),
    int Function(
  Pointer<MIB_IPNET_ROW2> Row,
)>('GetIpNetEntry2');

int GetIpNetTable(
  Pointer<MIB_IPNETTABLE> IpNetTable,
  Pointer<Uint32> SizePointer,
  int Order,
) =>
    _GetIpNetTable(
      IpNetTable,
      SizePointer,
      Order,
    );

late final _GetIpNetTable = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_IPNETTABLE> IpNetTable,
  Pointer<Uint32> SizePointer,
  Int32 Order,
),
    int Function(
  Pointer<MIB_IPNETTABLE> IpNetTable,
  Pointer<Uint32> SizePointer,
  int Order,
)>('GetIpNetTable');

int GetIpNetTable2(
  int Family,
  Pointer<Pointer<MIB_IPNET_TABLE2>> Table,
) =>
    _GetIpNetTable2(
      Family,
      Table,
    );

late final _GetIpNetTable2 = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint16 Family,
  Pointer<Pointer<MIB_IPNET_TABLE2>> Table,
),
    int Function(
  int Family,
  Pointer<Pointer<MIB_IPNET_TABLE2>> Table,
)>('GetIpNetTable2');

int GetIpNetworkConnectionBandwidthEstimates(
  int InterfaceIndex,
  int AddressFamily,
  Pointer<MIB_IP_NETWORK_CONNECTION_BANDWIDTH_ESTIMATES> BandwidthEstimates,
) =>
    _GetIpNetworkConnectionBandwidthEstimates(
      InterfaceIndex,
      AddressFamily,
      BandwidthEstimates,
    );

late final _GetIpNetworkConnectionBandwidthEstimates = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint32 InterfaceIndex,
  Uint16 AddressFamily,
  Pointer<MIB_IP_NETWORK_CONNECTION_BANDWIDTH_ESTIMATES> BandwidthEstimates,
),
    int Function(
  int InterfaceIndex,
  int AddressFamily,
  Pointer<MIB_IP_NETWORK_CONNECTION_BANDWIDTH_ESTIMATES> BandwidthEstimates,
)>('GetIpNetworkConnectionBandwidthEstimates');

int GetIpPathEntry(
  Pointer<MIB_IPPATH_RO> Row,
) =>
    _GetIpPathEntry(
      Row,
    );

late final _GetIpPathEntry = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_IPPATH_RO> Row,
),
    int Function(
  Pointer<MIB_IPPATH_RO> Row,
)>('GetIpPathEntry');

int GetIpPathTable(
  int Family,
  Pointer<Pointer<MIB_IPPATH_TABLE>> Table,
) =>
    _GetIpPathTable(
      Family,
      Table,
    );

late final _GetIpPathTable = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint16 Family,
  Pointer<Pointer<MIB_IPPATH_TABLE>> Table,
),
    int Function(
  int Family,
  Pointer<Pointer<MIB_IPPATH_TABLE>> Table,
)>('GetIpPathTable');

int GetIpStatistics(
  Pointer<MIB_IPSTATS_LH> Statistics,
) =>
    _GetIpStatistics(
      Statistics,
    );

late final _GetIpStatistics = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_IPSTATS_LH> Statistics,
),
    int Function(
  Pointer<MIB_IPSTATS_LH> Statistics,
)>('GetIpStatistics');

int GetIpStatisticsEx(
  Pointer<MIB_IPSTATS_LH> Statistics,
  int Family,
) =>
    _GetIpStatisticsEx(
      Statistics,
      Family,
    );

late final _GetIpStatisticsEx = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_IPSTATS_LH> Statistics,
  Uint32 Family,
),
    int Function(
  Pointer<MIB_IPSTATS_LH> Statistics,
  int Family,
)>('GetIpStatisticsEx');

int GetJobCompartmentId(
  int JobHandle,
) =>
    _GetJobCompartmentId(
      JobHandle,
    );

late final _GetJobCompartmentId = _iphlpapi.lookupFunction<
    Uint32 Function(
  IntPtr JobHandle,
),
    int Function(
  int JobHandle,
)>('GetJobCompartmentId');

int GetMulticastIpAddressEntry(
  Pointer<MIB_MULTICASTIPADDRESS_RO> Row,
) =>
    _GetMulticastIpAddressEntry(
      Row,
    );

late final _GetMulticastIpAddressEntry = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_MULTICASTIPADDRESS_RO> Row,
),
    int Function(
  Pointer<MIB_MULTICASTIPADDRESS_RO> Row,
)>('GetMulticastIpAddressEntry');

int GetMulticastIpAddressTable(
  int Family,
  Pointer<Pointer<MIB_MULTICASTIPADDRESS_TABLE>> Table,
) =>
    _GetMulticastIpAddressTable(
      Family,
      Table,
    );

late final _GetMulticastIpAddressTable = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint16 Family,
  Pointer<Pointer<MIB_MULTICASTIPADDRESS_TABLE>> Table,
),
    int Function(
  int Family,
  Pointer<Pointer<MIB_MULTICASTIPADDRESS_TABLE>> Table,
)>('GetMulticastIpAddressTable');

int GetNetworkConnectivityHint(
  Pointer<NL_NETWORK_CONNECTIVITY_HINT> ConnectivityHint,
) =>
    _GetNetworkConnectivityHint(
      ConnectivityHint,
    );

late final _GetNetworkConnectivityHint = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<NL_NETWORK_CONNECTIVITY_HINT> ConnectivityHint,
),
    int Function(
  Pointer<NL_NETWORK_CONNECTIVITY_HINT> ConnectivityHint,
)>('GetNetworkConnectivityHint');

int GetNetworkConnectivityHintForInterface(
  int InterfaceIndex,
  Pointer<NL_NETWORK_CONNECTIVITY_HINT> ConnectivityHint,
) =>
    _GetNetworkConnectivityHintForInterface(
      InterfaceIndex,
      ConnectivityHint,
    );

late final _GetNetworkConnectivityHintForInterface = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint32 InterfaceIndex,
  Pointer<NL_NETWORK_CONNECTIVITY_HINT> ConnectivityHint,
),
    int Function(
  int InterfaceIndex,
  Pointer<NL_NETWORK_CONNECTIVITY_HINT> ConnectivityHint,
)>('GetNetworkConnectivityHintForInterface');

int GetNetworkInformation(
  Pointer<GUID> NetworkGuid,
  Pointer<Uint32> CompartmentId,
  Pointer<Uint32> SiteId,
  Pointer<Utf16> NetworkName,
  int Length,
) =>
    _GetNetworkInformation(
      NetworkGuid,
      CompartmentId,
      SiteId,
      NetworkName,
      Length,
    );

late final _GetNetworkInformation = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<GUID> NetworkGuid,
  Pointer<Uint32> CompartmentId,
  Pointer<Uint32> SiteId,
  Pointer<Utf16> NetworkName,
  Uint32 Length,
),
    int Function(
  Pointer<GUID> NetworkGuid,
  Pointer<Uint32> CompartmentId,
  Pointer<Uint32> SiteId,
  Pointer<Utf16> NetworkName,
  int Length,
)>('GetNetworkInformation');

int GetNetworkParams(
  Pointer<FIXED_INFO_W2KSP1> pFixedInfo,
  Pointer<Uint32> pOutBufLen,
) =>
    _GetNetworkParams(
      pFixedInfo,
      pOutBufLen,
    );

late final _GetNetworkParams = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<FIXED_INFO_W2KSP1> pFixedInfo,
  Pointer<Uint32> pOutBufLen,
),
    int Function(
  Pointer<FIXED_INFO_W2KSP1> pFixedInfo,
  Pointer<Uint32> pOutBufLen,
)>('GetNetworkParams');

int GetNumberOfInterfaces(
  Pointer<Uint32> pdwNumIf,
) =>
    _GetNumberOfInterfaces(
      pdwNumIf,
    );

late final _GetNumberOfInterfaces = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<Uint32> pdwNumIf,
),
    int Function(
  Pointer<Uint32> pdwNumIf,
)>('GetNumberOfInterfaces');

int GetOwnerModuleFromPidAndInfo(
  int ulPid,
  Pointer<Uint64> pInfo,
  int Class,
  Pointer pBuffer,
  Pointer<Uint32> pdwSize,
) =>
    _GetOwnerModuleFromPidAndInfo(
      ulPid,
      pInfo,
      Class,
      pBuffer,
      pdwSize,
    );

late final _GetOwnerModuleFromPidAndInfo = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint32 ulPid,
  Pointer<Uint64> pInfo,
  Int32 Class,
  Pointer pBuffer,
  Pointer<Uint32> pdwSize,
),
    int Function(
  int ulPid,
  Pointer<Uint64> pInfo,
  int Class,
  Pointer pBuffer,
  Pointer<Uint32> pdwSize,
)>('GetOwnerModuleFromPidAndInfo');

int GetOwnerModuleFromTcp6Entry(
  Pointer<MIB_TCP6ROW_OWNER_MODULE> pTcpEntry,
  int Class,
  Pointer pBuffer,
  Pointer<Uint32> pdwSize,
) =>
    _GetOwnerModuleFromTcp6Entry(
      pTcpEntry,
      Class,
      pBuffer,
      pdwSize,
    );

late final _GetOwnerModuleFromTcp6Entry = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_TCP6ROW_OWNER_MODULE> pTcpEntry,
  Int32 Class,
  Pointer pBuffer,
  Pointer<Uint32> pdwSize,
),
    int Function(
  Pointer<MIB_TCP6ROW_OWNER_MODULE> pTcpEntry,
  int Class,
  Pointer pBuffer,
  Pointer<Uint32> pdwSize,
)>('GetOwnerModuleFromTcp6Entry');

int GetOwnerModuleFromTcpEntry(
  Pointer<MIB_TCPROW_OWNER_MODULE> pTcpEntry,
  int Class,
  Pointer pBuffer,
  Pointer<Uint32> pdwSize,
) =>
    _GetOwnerModuleFromTcpEntry(
      pTcpEntry,
      Class,
      pBuffer,
      pdwSize,
    );

late final _GetOwnerModuleFromTcpEntry = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_TCPROW_OWNER_MODULE> pTcpEntry,
  Int32 Class,
  Pointer pBuffer,
  Pointer<Uint32> pdwSize,
),
    int Function(
  Pointer<MIB_TCPROW_OWNER_MODULE> pTcpEntry,
  int Class,
  Pointer pBuffer,
  Pointer<Uint32> pdwSize,
)>('GetOwnerModuleFromTcpEntry');

int GetOwnerModuleFromUdp6Entry(
  Pointer<MIB_UDP6ROW_OWNER_MODULE> pUdpEntry,
  int Class,
  Pointer pBuffer,
  Pointer<Uint32> pdwSize,
) =>
    _GetOwnerModuleFromUdp6Entry(
      pUdpEntry,
      Class,
      pBuffer,
      pdwSize,
    );

late final _GetOwnerModuleFromUdp6Entry = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_UDP6ROW_OWNER_MODULE> pUdpEntry,
  Int32 Class,
  Pointer pBuffer,
  Pointer<Uint32> pdwSize,
),
    int Function(
  Pointer<MIB_UDP6ROW_OWNER_MODULE> pUdpEntry,
  int Class,
  Pointer pBuffer,
  Pointer<Uint32> pdwSize,
)>('GetOwnerModuleFromUdp6Entry');

int GetOwnerModuleFromUdpEntry(
  Pointer<MIB_UDPROW_OWNER_MODULE> pUdpEntry,
  int Class,
  Pointer pBuffer,
  Pointer<Uint32> pdwSize,
) =>
    _GetOwnerModuleFromUdpEntry(
      pUdpEntry,
      Class,
      pBuffer,
      pdwSize,
    );

late final _GetOwnerModuleFromUdpEntry = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_UDPROW_OWNER_MODULE> pUdpEntry,
  Int32 Class,
  Pointer pBuffer,
  Pointer<Uint32> pdwSize,
),
    int Function(
  Pointer<MIB_UDPROW_OWNER_MODULE> pUdpEntry,
  int Class,
  Pointer pBuffer,
  Pointer<Uint32> pdwSize,
)>('GetOwnerModuleFromUdpEntry');

int GetPerAdapterInfo(
  int IfIndex,
  Pointer<IP_PER_ADAPTER_INFO_W2KSP1> pPerAdapterInfo,
  Pointer<Uint32> pOutBufLen,
) =>
    _GetPerAdapterInfo(
      IfIndex,
      pPerAdapterInfo,
      pOutBufLen,
    );

late final _GetPerAdapterInfo = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint32 IfIndex,
  Pointer<IP_PER_ADAPTER_INFO_W2KSP1> pPerAdapterInfo,
  Pointer<Uint32> pOutBufLen,
),
    int Function(
  int IfIndex,
  Pointer<IP_PER_ADAPTER_INFO_W2KSP1> pPerAdapterInfo,
  Pointer<Uint32> pOutBufLen,
)>('GetPerAdapterInfo');

int GetPerTcp6ConnectionEStats(
  Pointer<MIB_TCP6RO> Row,
  int EstatsType,
  Pointer<Uint8> Rw,
  int RwVersion,
  int RwSize,
  Pointer<Uint8> Ros,
  int RosVersion,
  int RosSize,
  Pointer<Uint8> Rod,
  int RodVersion,
  int RodSize,
) =>
    _GetPerTcp6ConnectionEStats(
      Row,
      EstatsType,
      Rw,
      RwVersion,
      RwSize,
      Ros,
      RosVersion,
      RosSize,
      Rod,
      RodVersion,
      RodSize,
    );

late final _GetPerTcp6ConnectionEStats = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_TCP6RO> Row,
  Int32 EstatsType,
  Pointer<Uint8> Rw,
  Uint32 RwVersion,
  Uint32 RwSize,
  Pointer<Uint8> Ros,
  Uint32 RosVersion,
  Uint32 RosSize,
  Pointer<Uint8> Rod,
  Uint32 RodVersion,
  Uint32 RodSize,
),
    int Function(
  Pointer<MIB_TCP6RO> Row,
  int EstatsType,
  Pointer<Uint8> Rw,
  int RwVersion,
  int RwSize,
  Pointer<Uint8> Ros,
  int RosVersion,
  int RosSize,
  Pointer<Uint8> Rod,
  int RodVersion,
  int RodSize,
)>('GetPerTcp6ConnectionEStats');

int GetPerTcpConnectionEStats(
  Pointer<MIB_TCPROW_LH> Row,
  int EstatsType,
  Pointer<Uint8> Rw,
  int RwVersion,
  int RwSize,
  Pointer<Uint8> Ros,
  int RosVersion,
  int RosSize,
  Pointer<Uint8> Rod,
  int RodVersion,
  int RodSize,
) =>
    _GetPerTcpConnectionEStats(
      Row,
      EstatsType,
      Rw,
      RwVersion,
      RwSize,
      Ros,
      RosVersion,
      RosSize,
      Rod,
      RodVersion,
      RodSize,
    );

late final _GetPerTcpConnectionEStats = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_TCPROW_LH> Row,
  Int32 EstatsType,
  Pointer<Uint8> Rw,
  Uint32 RwVersion,
  Uint32 RwSize,
  Pointer<Uint8> Ros,
  Uint32 RosVersion,
  Uint32 RosSize,
  Pointer<Uint8> Rod,
  Uint32 RodVersion,
  Uint32 RodSize,
),
    int Function(
  Pointer<MIB_TCPROW_LH> Row,
  int EstatsType,
  Pointer<Uint8> Rw,
  int RwVersion,
  int RwSize,
  Pointer<Uint8> Ros,
  int RosVersion,
  int RosSize,
  Pointer<Uint8> Rod,
  int RodVersion,
  int RodSize,
)>('GetPerTcpConnectionEStats');

int GetRTTAndHopCount(
  int DestIpAddress,
  Pointer<Uint32> HopCount,
  int MaxHops,
  Pointer<Uint32> RTT,
) =>
    _GetRTTAndHopCount(
      DestIpAddress,
      HopCount,
      MaxHops,
      RTT,
    );

late final _GetRTTAndHopCount = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint32 DestIpAddress,
  Pointer<Uint32> HopCount,
  Uint32 MaxHops,
  Pointer<Uint32> RTT,
),
    int Function(
  int DestIpAddress,
  Pointer<Uint32> HopCount,
  int MaxHops,
  Pointer<Uint32> RTT,
)>('GetRTTAndHopCount');

int GetSessionCompartmentId(
  int SessionId,
) =>
    _GetSessionCompartmentId(
      SessionId,
    );

late final _GetSessionCompartmentId = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint32 SessionId,
),
    int Function(
  int SessionId,
)>('GetSessionCompartmentId');

int GetTcp6Table(
  Pointer<MIB_TCP6TABLE> TcpTable,
  Pointer<Uint32> SizePointer,
  int Order,
) =>
    _GetTcp6Table(
      TcpTable,
      SizePointer,
      Order,
    );

late final _GetTcp6Table = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_TCP6TABLE> TcpTable,
  Pointer<Uint32> SizePointer,
  Int32 Order,
),
    int Function(
  Pointer<MIB_TCP6TABLE> TcpTable,
  Pointer<Uint32> SizePointer,
  int Order,
)>('GetTcp6Table');

int GetTcp6Table2(
  Pointer<MIB_TCP6TABLE2> TcpTable,
  Pointer<Uint32> SizePointer,
  int Order,
) =>
    _GetTcp6Table2(
      TcpTable,
      SizePointer,
      Order,
    );

late final _GetTcp6Table2 = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_TCP6TABLE2> TcpTable,
  Pointer<Uint32> SizePointer,
  Int32 Order,
),
    int Function(
  Pointer<MIB_TCP6TABLE2> TcpTable,
  Pointer<Uint32> SizePointer,
  int Order,
)>('GetTcp6Table2');

int GetTcpStatistics(
  Pointer<MIB_TCPSTATS_LH> Statistics,
) =>
    _GetTcpStatistics(
      Statistics,
    );

late final _GetTcpStatistics = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_TCPSTATS_LH> Statistics,
),
    int Function(
  Pointer<MIB_TCPSTATS_LH> Statistics,
)>('GetTcpStatistics');

int GetTcpStatisticsEx(
  Pointer<MIB_TCPSTATS_LH> Statistics,
  int Family,
) =>
    _GetTcpStatisticsEx(
      Statistics,
      Family,
    );

late final _GetTcpStatisticsEx = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_TCPSTATS_LH> Statistics,
  Uint32 Family,
),
    int Function(
  Pointer<MIB_TCPSTATS_LH> Statistics,
  int Family,
)>('GetTcpStatisticsEx');

int GetTcpStatisticsEx2(
  Pointer<MIB_TCPSTATS2> Statistics,
  int Family,
) =>
    _GetTcpStatisticsEx2(
      Statistics,
      Family,
    );

late final _GetTcpStatisticsEx2 = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_TCPSTATS2> Statistics,
  Uint32 Family,
),
    int Function(
  Pointer<MIB_TCPSTATS2> Statistics,
  int Family,
)>('GetTcpStatisticsEx2');

int GetTcpTable(
  Pointer<MIB_TCPTABLE> TcpTable,
  Pointer<Uint32> SizePointer,
  int Order,
) =>
    _GetTcpTable(
      TcpTable,
      SizePointer,
      Order,
    );

late final _GetTcpTable = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_TCPTABLE> TcpTable,
  Pointer<Uint32> SizePointer,
  Int32 Order,
),
    int Function(
  Pointer<MIB_TCPTABLE> TcpTable,
  Pointer<Uint32> SizePointer,
  int Order,
)>('GetTcpTable');

int GetTcpTable2(
  Pointer<MIB_TCPTABLE2> TcpTable,
  Pointer<Uint32> SizePointer,
  int Order,
) =>
    _GetTcpTable2(
      TcpTable,
      SizePointer,
      Order,
    );

late final _GetTcpTable2 = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_TCPTABLE2> TcpTable,
  Pointer<Uint32> SizePointer,
  Int32 Order,
),
    int Function(
  Pointer<MIB_TCPTABLE2> TcpTable,
  Pointer<Uint32> SizePointer,
  int Order,
)>('GetTcpTable2');

int GetTeredoPort(
  Pointer<Uint16> Port,
) =>
    _GetTeredoPort(
      Port,
    );

late final _GetTeredoPort = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<Uint16> Port,
),
    int Function(
  Pointer<Uint16> Port,
)>('GetTeredoPort');

int GetUdp6Table(
  Pointer<MIB_UDP6TABLE> Udp6Table,
  Pointer<Uint32> SizePointer,
  int Order,
) =>
    _GetUdp6Table(
      Udp6Table,
      SizePointer,
      Order,
    );

late final _GetUdp6Table = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_UDP6TABLE> Udp6Table,
  Pointer<Uint32> SizePointer,
  Int32 Order,
),
    int Function(
  Pointer<MIB_UDP6TABLE> Udp6Table,
  Pointer<Uint32> SizePointer,
  int Order,
)>('GetUdp6Table');

int GetUdpStatistics(
  Pointer<MIB_UDPSTATS> Stats,
) =>
    _GetUdpStatistics(
      Stats,
    );

late final _GetUdpStatistics = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_UDPSTATS> Stats,
),
    int Function(
  Pointer<MIB_UDPSTATS> Stats,
)>('GetUdpStatistics');

int GetUdpStatisticsEx(
  Pointer<MIB_UDPSTATS> Statistics,
  int Family,
) =>
    _GetUdpStatisticsEx(
      Statistics,
      Family,
    );

late final _GetUdpStatisticsEx = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_UDPSTATS> Statistics,
  Uint32 Family,
),
    int Function(
  Pointer<MIB_UDPSTATS> Statistics,
  int Family,
)>('GetUdpStatisticsEx');

int GetUdpStatisticsEx2(
  Pointer<MIB_UDPSTATS2> Statistics,
  int Family,
) =>
    _GetUdpStatisticsEx2(
      Statistics,
      Family,
    );

late final _GetUdpStatisticsEx2 = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_UDPSTATS2> Statistics,
  Uint32 Family,
),
    int Function(
  Pointer<MIB_UDPSTATS2> Statistics,
  int Family,
)>('GetUdpStatisticsEx2');

int GetUdpTable(
  Pointer<MIB_UDPTABLE> UdpTable,
  Pointer<Uint32> SizePointer,
  int Order,
) =>
    _GetUdpTable(
      UdpTable,
      SizePointer,
      Order,
    );

late final _GetUdpTable = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_UDPTABLE> UdpTable,
  Pointer<Uint32> SizePointer,
  Int32 Order,
),
    int Function(
  Pointer<MIB_UDPTABLE> UdpTable,
  Pointer<Uint32> SizePointer,
  int Order,
)>('GetUdpTable');

int GetUniDirectionalAdapterInfo(
  Pointer<IP_UNIDIRECTIONAL_ADAPTER_ADDRESS> pIPIfInfo,
  Pointer<Uint32> dwOutBufLen,
) =>
    _GetUniDirectionalAdapterInfo(
      pIPIfInfo,
      dwOutBufLen,
    );

late final _GetUniDirectionalAdapterInfo = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<IP_UNIDIRECTIONAL_ADAPTER_ADDRESS> pIPIfInfo,
  Pointer<Uint32> dwOutBufLen,
),
    int Function(
  Pointer<IP_UNIDIRECTIONAL_ADAPTER_ADDRESS> pIPIfInfo,
  Pointer<Uint32> dwOutBufLen,
)>('GetUniDirectionalAdapterInfo');

int GetUnicastIpAddressEntry(
  Pointer<MIB_UNICASTIPADDRESS_RO> Row,
) =>
    _GetUnicastIpAddressEntry(
      Row,
    );

late final _GetUnicastIpAddressEntry = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_UNICASTIPADDRESS_RO> Row,
),
    int Function(
  Pointer<MIB_UNICASTIPADDRESS_RO> Row,
)>('GetUnicastIpAddressEntry');

int GetUnicastIpAddressTable(
  int Family,
  Pointer<Pointer<MIB_UNICASTIPADDRESS_TABLE>> Table,
) =>
    _GetUnicastIpAddressTable(
      Family,
      Table,
    );

late final _GetUnicastIpAddressTable = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint16 Family,
  Pointer<Pointer<MIB_UNICASTIPADDRESS_TABLE>> Table,
),
    int Function(
  int Family,
  Pointer<Pointer<MIB_UNICASTIPADDRESS_TABLE>> Table,
)>('GetUnicastIpAddressTable');

int Icmp6CreateFile() => _Icmp6CreateFile();

late final _Icmp6CreateFile = _iphlpapi
    .lookupFunction<IntPtr Function(), int Function()>('Icmp6CreateFile');

int Icmp6ParseReplies(
  Pointer ReplyBuffer,
  int ReplySize,
) =>
    _Icmp6ParseReplies(
      ReplyBuffer,
      ReplySize,
    );

late final _Icmp6ParseReplies = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer ReplyBuffer,
  Uint32 ReplySize,
),
    int Function(
  Pointer ReplyBuffer,
  int ReplySize,
)>('Icmp6ParseReplies');

int Icmp6SendEcho2(
  int IcmpHandle,
  int Event,
  Pointer<NativeFunction<PIO_APC_ROUTINE>> ApcRoutine,
  Pointer ApcContext,
  Pointer<SOCKADDR_IN6> SourceAddress,
  Pointer<SOCKADDR_IN6> DestinationAddress,
  Pointer RequestData,
  int RequestSize,
  Pointer<ip_option_information> RequestOptions,
  Pointer ReplyBuffer,
  int ReplySize,
  int Timeout,
) =>
    _Icmp6SendEcho2(
      IcmpHandle,
      Event,
      ApcRoutine,
      ApcContext,
      SourceAddress,
      DestinationAddress,
      RequestData,
      RequestSize,
      RequestOptions,
      ReplyBuffer,
      ReplySize,
      Timeout,
    );

late final _Icmp6SendEcho2 = _iphlpapi.lookupFunction<
    Uint32 Function(
  IntPtr IcmpHandle,
  IntPtr Event,
  Pointer<NativeFunction<PIO_APC_ROUTINE>> ApcRoutine,
  Pointer ApcContext,
  Pointer<SOCKADDR_IN6> SourceAddress,
  Pointer<SOCKADDR_IN6> DestinationAddress,
  Pointer RequestData,
  Uint16 RequestSize,
  Pointer<ip_option_information> RequestOptions,
  Pointer ReplyBuffer,
  Uint32 ReplySize,
  Uint32 Timeout,
),
    int Function(
  int IcmpHandle,
  int Event,
  Pointer<NativeFunction<PIO_APC_ROUTINE>> ApcRoutine,
  Pointer ApcContext,
  Pointer<SOCKADDR_IN6> SourceAddress,
  Pointer<SOCKADDR_IN6> DestinationAddress,
  Pointer RequestData,
  int RequestSize,
  Pointer<ip_option_information> RequestOptions,
  Pointer ReplyBuffer,
  int ReplySize,
  int Timeout,
)>('Icmp6SendEcho2');

int IcmpCloseHandle(
  int IcmpHandle,
) =>
    _IcmpCloseHandle(
      IcmpHandle,
    );

late final _IcmpCloseHandle = _iphlpapi.lookupFunction<
    Int32 Function(
  IntPtr IcmpHandle,
),
    int Function(
  int IcmpHandle,
)>('IcmpCloseHandle');

int IcmpCreateFile() => _IcmpCreateFile();

late final _IcmpCreateFile = _iphlpapi
    .lookupFunction<IntPtr Function(), int Function()>('IcmpCreateFile');

int IcmpParseReplies(
  Pointer ReplyBuffer,
  int ReplySize,
) =>
    _IcmpParseReplies(
      ReplyBuffer,
      ReplySize,
    );

late final _IcmpParseReplies = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer ReplyBuffer,
  Uint32 ReplySize,
),
    int Function(
  Pointer ReplyBuffer,
  int ReplySize,
)>('IcmpParseReplies');

int IcmpSendEcho(
  int IcmpHandle,
  int DestinationAddress,
  Pointer RequestData,
  int RequestSize,
  Pointer<ip_option_information> RequestOptions,
  Pointer ReplyBuffer,
  int ReplySize,
  int Timeout,
) =>
    _IcmpSendEcho(
      IcmpHandle,
      DestinationAddress,
      RequestData,
      RequestSize,
      RequestOptions,
      ReplyBuffer,
      ReplySize,
      Timeout,
    );

late final _IcmpSendEcho = _iphlpapi.lookupFunction<
    Uint32 Function(
  IntPtr IcmpHandle,
  Uint32 DestinationAddress,
  Pointer RequestData,
  Uint16 RequestSize,
  Pointer<ip_option_information> RequestOptions,
  Pointer ReplyBuffer,
  Uint32 ReplySize,
  Uint32 Timeout,
),
    int Function(
  int IcmpHandle,
  int DestinationAddress,
  Pointer RequestData,
  int RequestSize,
  Pointer<ip_option_information> RequestOptions,
  Pointer ReplyBuffer,
  int ReplySize,
  int Timeout,
)>('IcmpSendEcho');

int IcmpSendEcho2(
  int IcmpHandle,
  int Event,
  Pointer<NativeFunction<PIO_APC_ROUTINE>> ApcRoutine,
  Pointer ApcContext,
  int DestinationAddress,
  Pointer RequestData,
  int RequestSize,
  Pointer<ip_option_information> RequestOptions,
  Pointer ReplyBuffer,
  int ReplySize,
  int Timeout,
) =>
    _IcmpSendEcho2(
      IcmpHandle,
      Event,
      ApcRoutine,
      ApcContext,
      DestinationAddress,
      RequestData,
      RequestSize,
      RequestOptions,
      ReplyBuffer,
      ReplySize,
      Timeout,
    );

late final _IcmpSendEcho2 = _iphlpapi.lookupFunction<
    Uint32 Function(
  IntPtr IcmpHandle,
  IntPtr Event,
  Pointer<NativeFunction<PIO_APC_ROUTINE>> ApcRoutine,
  Pointer ApcContext,
  Uint32 DestinationAddress,
  Pointer RequestData,
  Uint16 RequestSize,
  Pointer<ip_option_information> RequestOptions,
  Pointer ReplyBuffer,
  Uint32 ReplySize,
  Uint32 Timeout,
),
    int Function(
  int IcmpHandle,
  int Event,
  Pointer<NativeFunction<PIO_APC_ROUTINE>> ApcRoutine,
  Pointer ApcContext,
  int DestinationAddress,
  Pointer RequestData,
  int RequestSize,
  Pointer<ip_option_information> RequestOptions,
  Pointer ReplyBuffer,
  int ReplySize,
  int Timeout,
)>('IcmpSendEcho2');

int IcmpSendEcho2Ex(
  int IcmpHandle,
  int Event,
  Pointer<NativeFunction<PIO_APC_ROUTINE>> ApcRoutine,
  Pointer ApcContext,
  int SourceAddress,
  int DestinationAddress,
  Pointer RequestData,
  int RequestSize,
  Pointer<ip_option_information> RequestOptions,
  Pointer ReplyBuffer,
  int ReplySize,
  int Timeout,
) =>
    _IcmpSendEcho2Ex(
      IcmpHandle,
      Event,
      ApcRoutine,
      ApcContext,
      SourceAddress,
      DestinationAddress,
      RequestData,
      RequestSize,
      RequestOptions,
      ReplyBuffer,
      ReplySize,
      Timeout,
    );

late final _IcmpSendEcho2Ex = _iphlpapi.lookupFunction<
    Uint32 Function(
  IntPtr IcmpHandle,
  IntPtr Event,
  Pointer<NativeFunction<PIO_APC_ROUTINE>> ApcRoutine,
  Pointer ApcContext,
  Uint32 SourceAddress,
  Uint32 DestinationAddress,
  Pointer RequestData,
  Uint16 RequestSize,
  Pointer<ip_option_information> RequestOptions,
  Pointer ReplyBuffer,
  Uint32 ReplySize,
  Uint32 Timeout,
),
    int Function(
  int IcmpHandle,
  int Event,
  Pointer<NativeFunction<PIO_APC_ROUTINE>> ApcRoutine,
  Pointer ApcContext,
  int SourceAddress,
  int DestinationAddress,
  Pointer RequestData,
  int RequestSize,
  Pointer<ip_option_information> RequestOptions,
  Pointer ReplyBuffer,
  int ReplySize,
  int Timeout,
)>('IcmpSendEcho2Ex');

void InitializeIpForwardEntry(
  Pointer<MIB_IPFORWARD_ROW2> Row,
) =>
    _InitializeIpForwardEntry(
      Row,
    );

late final _InitializeIpForwardEntry = _iphlpapi.lookupFunction<
    Void Function(
  Pointer<MIB_IPFORWARD_ROW2> Row,
),
    void Function(
  Pointer<MIB_IPFORWARD_ROW2> Row,
)>('InitializeIpForwardEntry');

void InitializeIpInterfaceEntry(
  Pointer<MIB_IPINTERFACE_RO> Row,
) =>
    _InitializeIpInterfaceEntry(
      Row,
    );

late final _InitializeIpInterfaceEntry = _iphlpapi.lookupFunction<
    Void Function(
  Pointer<MIB_IPINTERFACE_RO> Row,
),
    void Function(
  Pointer<MIB_IPINTERFACE_RO> Row,
)>('InitializeIpInterfaceEntry');

void InitializeUnicastIpAddressEntry(
  Pointer<MIB_UNICASTIPADDRESS_RO> Row,
) =>
    _InitializeUnicastIpAddressEntry(
      Row,
    );

late final _InitializeUnicastIpAddressEntry = _iphlpapi.lookupFunction<
    Void Function(
  Pointer<MIB_UNICASTIPADDRESS_RO> Row,
),
    void Function(
  Pointer<MIB_UNICASTIPADDRESS_RO> Row,
)>('InitializeUnicastIpAddressEntry');

int IpReleaseAddress(
  Pointer<IP_ADAPTER_INDEX_MAP> AdapterInfo,
) =>
    _IpReleaseAddress(
      AdapterInfo,
    );

late final _IpReleaseAddress = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<IP_ADAPTER_INDEX_MAP> AdapterInfo,
),
    int Function(
  Pointer<IP_ADAPTER_INDEX_MAP> AdapterInfo,
)>('IpReleaseAddress');

int IpRenewAddress(
  Pointer<IP_ADAPTER_INDEX_MAP> AdapterInfo,
) =>
    _IpRenewAddress(
      AdapterInfo,
    );

late final _IpRenewAddress = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<IP_ADAPTER_INDEX_MAP> AdapterInfo,
),
    int Function(
  Pointer<IP_ADAPTER_INDEX_MAP> AdapterInfo,
)>('IpRenewAddress');

int LookupPersistentTcpPortReservation(
  int StartPort,
  int NumberOfPorts,
  Pointer<Uint64> Token,
) =>
    _LookupPersistentTcpPortReservation(
      StartPort,
      NumberOfPorts,
      Token,
    );

late final _LookupPersistentTcpPortReservation = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint16 StartPort,
  Uint16 NumberOfPorts,
  Pointer<Uint64> Token,
),
    int Function(
  int StartPort,
  int NumberOfPorts,
  Pointer<Uint64> Token,
)>('LookupPersistentTcpPortReservation');

int LookupPersistentUdpPortReservation(
  int StartPort,
  int NumberOfPorts,
  Pointer<Uint64> Token,
) =>
    _LookupPersistentUdpPortReservation(
      StartPort,
      NumberOfPorts,
      Token,
    );

late final _LookupPersistentUdpPortReservation = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint16 StartPort,
  Uint16 NumberOfPorts,
  Pointer<Uint64> Token,
),
    int Function(
  int StartPort,
  int NumberOfPorts,
  Pointer<Uint64> Token,
)>('LookupPersistentUdpPortReservation');

int NhpAllocateAndGetInterfaceInfoFromStack(
  Pointer<Pointer<ip_interface_name_info_w2ksp1>> ppTable,
  Pointer<Uint32> pdwCount,
  int bOrder,
  int hHeap,
  int dwFlags,
) =>
    _NhpAllocateAndGetInterfaceInfoFromStack(
      ppTable,
      pdwCount,
      bOrder,
      hHeap,
      dwFlags,
    );

late final _NhpAllocateAndGetInterfaceInfoFromStack = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<Pointer<ip_interface_name_info_w2ksp1>> ppTable,
  Pointer<Uint32> pdwCount,
  Int32 bOrder,
  IntPtr hHeap,
  Uint32 dwFlags,
),
    int Function(
  Pointer<Pointer<ip_interface_name_info_w2ksp1>> ppTable,
  Pointer<Uint32> pdwCount,
  int bOrder,
  int hHeap,
  int dwFlags,
)>('NhpAllocateAndGetInterfaceInfoFromStack');

int NotifyAddrChange(
  Pointer<IntPtr> $Handle,
  Pointer<OVERLAPPED> overlapped,
) =>
    _NotifyAddrChange(
      $Handle,
      overlapped,
    );

late final _NotifyAddrChange = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> $Handle,
  Pointer<OVERLAPPED> overlapped,
),
    int Function(
  Pointer<IntPtr> $Handle,
  Pointer<OVERLAPPED> overlapped,
)>('NotifyAddrChange');

int NotifyIpInterfaceChange(
  int Family,
  Pointer<NativeFunction<PIPINTERFACE_CHANGE_CALLBACK>> Callback,
  Pointer CallerContext,
  int InitialNotification,
  Pointer<IntPtr> NotificationHandle,
) =>
    _NotifyIpInterfaceChange(
      Family,
      Callback,
      CallerContext,
      InitialNotification,
      NotificationHandle,
    );

late final _NotifyIpInterfaceChange = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint16 Family,
  Pointer<NativeFunction<PIPINTERFACE_CHANGE_CALLBACK>> Callback,
  Pointer CallerContext,
  Uint8 InitialNotification,
  Pointer<IntPtr> NotificationHandle,
),
    int Function(
  int Family,
  Pointer<NativeFunction<PIPINTERFACE_CHANGE_CALLBACK>> Callback,
  Pointer CallerContext,
  int InitialNotification,
  Pointer<IntPtr> NotificationHandle,
)>('NotifyIpInterfaceChange');

int NotifyNetworkConnectivityHintChange(
  Pointer<NativeFunction<PNETWORK_CONNECTIVITY_HINT_CHANGE_CALLBACK>> Callback,
  Pointer CallerContext,
  int InitialNotification,
  Pointer<IntPtr> NotificationHandle,
) =>
    _NotifyNetworkConnectivityHintChange(
      Callback,
      CallerContext,
      InitialNotification,
      NotificationHandle,
    );

late final _NotifyNetworkConnectivityHintChange = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<PNETWORK_CONNECTIVITY_HINT_CHANGE_CALLBACK>> Callback,
  Pointer CallerContext,
  Uint8 InitialNotification,
  Pointer<IntPtr> NotificationHandle,
),
    int Function(
  Pointer<NativeFunction<PNETWORK_CONNECTIVITY_HINT_CHANGE_CALLBACK>> Callback,
  Pointer CallerContext,
  int InitialNotification,
  Pointer<IntPtr> NotificationHandle,
)>('NotifyNetworkConnectivityHintChange');

int NotifyRouteChange(
  Pointer<IntPtr> $Handle,
  Pointer<OVERLAPPED> overlapped,
) =>
    _NotifyRouteChange(
      $Handle,
      overlapped,
    );

late final _NotifyRouteChange = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<IntPtr> $Handle,
  Pointer<OVERLAPPED> overlapped,
),
    int Function(
  Pointer<IntPtr> $Handle,
  Pointer<OVERLAPPED> overlapped,
)>('NotifyRouteChange');

int NotifyRouteChange2(
  int AddressFamily,
  Pointer<NativeFunction<PIPFORWARD_CHANGE_CALLBACK>> Callback,
  Pointer CallerContext,
  int InitialNotification,
  Pointer<IntPtr> NotificationHandle,
) =>
    _NotifyRouteChange2(
      AddressFamily,
      Callback,
      CallerContext,
      InitialNotification,
      NotificationHandle,
    );

late final _NotifyRouteChange2 = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint16 AddressFamily,
  Pointer<NativeFunction<PIPFORWARD_CHANGE_CALLBACK>> Callback,
  Pointer CallerContext,
  Uint8 InitialNotification,
  Pointer<IntPtr> NotificationHandle,
),
    int Function(
  int AddressFamily,
  Pointer<NativeFunction<PIPFORWARD_CHANGE_CALLBACK>> Callback,
  Pointer CallerContext,
  int InitialNotification,
  Pointer<IntPtr> NotificationHandle,
)>('NotifyRouteChange2');

int NotifyStableUnicastIpAddressTable(
  int Family,
  Pointer<Pointer<MIB_UNICASTIPADDRESS_TABLE>> Table,
  Pointer<NativeFunction<PSTABLE_UNICAST_IPADDRESS_TABLE_CALLBACK>>
      CallerCallback,
  Pointer CallerContext,
  Pointer<IntPtr> NotificationHandle,
) =>
    _NotifyStableUnicastIpAddressTable(
      Family,
      Table,
      CallerCallback,
      CallerContext,
      NotificationHandle,
    );

late final _NotifyStableUnicastIpAddressTable = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint16 Family,
  Pointer<Pointer<MIB_UNICASTIPADDRESS_TABLE>> Table,
  Pointer<NativeFunction<PSTABLE_UNICAST_IPADDRESS_TABLE_CALLBACK>>
      CallerCallback,
  Pointer CallerContext,
  Pointer<IntPtr> NotificationHandle,
),
    int Function(
  int Family,
  Pointer<Pointer<MIB_UNICASTIPADDRESS_TABLE>> Table,
  Pointer<NativeFunction<PSTABLE_UNICAST_IPADDRESS_TABLE_CALLBACK>>
      CallerCallback,
  Pointer CallerContext,
  Pointer<IntPtr> NotificationHandle,
)>('NotifyStableUnicastIpAddressTable');

int NotifyTeredoPortChange(
  Pointer<NativeFunction<PTEREDO_PORT_CHANGE_CALLBACK>> Callback,
  Pointer CallerContext,
  int InitialNotification,
  Pointer<IntPtr> NotificationHandle,
) =>
    _NotifyTeredoPortChange(
      Callback,
      CallerContext,
      InitialNotification,
      NotificationHandle,
    );

late final _NotifyTeredoPortChange = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<PTEREDO_PORT_CHANGE_CALLBACK>> Callback,
  Pointer CallerContext,
  Uint8 InitialNotification,
  Pointer<IntPtr> NotificationHandle,
),
    int Function(
  Pointer<NativeFunction<PTEREDO_PORT_CHANGE_CALLBACK>> Callback,
  Pointer CallerContext,
  int InitialNotification,
  Pointer<IntPtr> NotificationHandle,
)>('NotifyTeredoPortChange');

int NotifyUnicastIpAddressChange(
  int Family,
  Pointer<NativeFunction<PUNICAST_IPADDRESS_CHANGE_CALLBACK>> Callback,
  Pointer CallerContext,
  int InitialNotification,
  Pointer<IntPtr> NotificationHandle,
) =>
    _NotifyUnicastIpAddressChange(
      Family,
      Callback,
      CallerContext,
      InitialNotification,
      NotificationHandle,
    );

late final _NotifyUnicastIpAddressChange = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint16 Family,
  Pointer<NativeFunction<PUNICAST_IPADDRESS_CHANGE_CALLBACK>> Callback,
  Pointer CallerContext,
  Uint8 InitialNotification,
  Pointer<IntPtr> NotificationHandle,
),
    int Function(
  int Family,
  Pointer<NativeFunction<PUNICAST_IPADDRESS_CHANGE_CALLBACK>> Callback,
  Pointer CallerContext,
  int InitialNotification,
  Pointer<IntPtr> NotificationHandle,
)>('NotifyUnicastIpAddressChange');

int PfAddFiltersToInterface(
  Pointer ih,
  int cInFilters,
  Pointer<PF_FILTER_DESCRIPTOR> pfiltIn,
  int cOutFilters,
  Pointer<PF_FILTER_DESCRIPTOR> pfiltOut,
  Pointer<Pointer> pfHandle,
) =>
    _PfAddFiltersToInterface(
      ih,
      cInFilters,
      pfiltIn,
      cOutFilters,
      pfiltOut,
      pfHandle,
    );

late final _PfAddFiltersToInterface = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer ih,
  Uint32 cInFilters,
  Pointer<PF_FILTER_DESCRIPTOR> pfiltIn,
  Uint32 cOutFilters,
  Pointer<PF_FILTER_DESCRIPTOR> pfiltOut,
  Pointer<Pointer> pfHandle,
),
    int Function(
  Pointer ih,
  int cInFilters,
  Pointer<PF_FILTER_DESCRIPTOR> pfiltIn,
  int cOutFilters,
  Pointer<PF_FILTER_DESCRIPTOR> pfiltOut,
  Pointer<Pointer> pfHandle,
)>('PfAddFiltersToInterface');

int PfAddGlobalFilterToInterface(
  Pointer pInterface,
  int gfFilter,
) =>
    _PfAddGlobalFilterToInterface(
      pInterface,
      gfFilter,
    );

late final _PfAddGlobalFilterToInterface = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer pInterface,
  Int32 gfFilter,
),
    int Function(
  Pointer pInterface,
  int gfFilter,
)>('PfAddGlobalFilterToInterface');

int PfBindInterfaceToIPAddress(
  Pointer pInterface,
  int pfatType,
  Pointer<Uint8> IPAddress,
) =>
    _PfBindInterfaceToIPAddress(
      pInterface,
      pfatType,
      IPAddress,
    );

late final _PfBindInterfaceToIPAddress = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer pInterface,
  Int32 pfatType,
  Pointer<Uint8> IPAddress,
),
    int Function(
  Pointer pInterface,
  int pfatType,
  Pointer<Uint8> IPAddress,
)>('PfBindInterfaceToIPAddress');

int PfBindInterfaceToIndex(
  Pointer pInterface,
  int dwIndex,
  int pfatLinkType,
  Pointer<Uint8> LinkIPAddress,
) =>
    _PfBindInterfaceToIndex(
      pInterface,
      dwIndex,
      pfatLinkType,
      LinkIPAddress,
    );

late final _PfBindInterfaceToIndex = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer pInterface,
  Uint32 dwIndex,
  Int32 pfatLinkType,
  Pointer<Uint8> LinkIPAddress,
),
    int Function(
  Pointer pInterface,
  int dwIndex,
  int pfatLinkType,
  Pointer<Uint8> LinkIPAddress,
)>('PfBindInterfaceToIndex');

int PfCreateInterface(
  int dwName,
  int inAction,
  int outAction,
  int bUseLog,
  int bMustBeUnique,
  Pointer<Pointer> ppInterface,
) =>
    _PfCreateInterface(
      dwName,
      inAction,
      outAction,
      bUseLog,
      bMustBeUnique,
      ppInterface,
    );

late final _PfCreateInterface = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint32 dwName,
  Int32 inAction,
  Int32 outAction,
  Int32 bUseLog,
  Int32 bMustBeUnique,
  Pointer<Pointer> ppInterface,
),
    int Function(
  int dwName,
  int inAction,
  int outAction,
  int bUseLog,
  int bMustBeUnique,
  Pointer<Pointer> ppInterface,
)>('PfCreateInterface');

int PfDeleteInterface(
  Pointer pInterface,
) =>
    _PfDeleteInterface(
      pInterface,
    );

late final _PfDeleteInterface = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer pInterface,
),
    int Function(
  Pointer pInterface,
)>('PfDeleteInterface');

int PfDeleteLog() => _PfDeleteLog();

late final _PfDeleteLog =
    _iphlpapi.lookupFunction<Uint32 Function(), int Function()>('PfDeleteLog');

int PfGetInterfaceStatistics(
  Pointer pInterface,
  Pointer<PF_INTERFACE_STATS> ppfStats,
  Pointer<Uint32> pdwBufferSize,
  int fResetCounters,
) =>
    _PfGetInterfaceStatistics(
      pInterface,
      ppfStats,
      pdwBufferSize,
      fResetCounters,
    );

late final _PfGetInterfaceStatistics = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer pInterface,
  Pointer<PF_INTERFACE_STATS> ppfStats,
  Pointer<Uint32> pdwBufferSize,
  Int32 fResetCounters,
),
    int Function(
  Pointer pInterface,
  Pointer<PF_INTERFACE_STATS> ppfStats,
  Pointer<Uint32> pdwBufferSize,
  int fResetCounters,
)>('PfGetInterfaceStatistics');

int PfMakeLog(
  int hEvent,
) =>
    _PfMakeLog(
      hEvent,
    );

late final _PfMakeLog = _iphlpapi.lookupFunction<
    Uint32 Function(
  IntPtr hEvent,
),
    int Function(
  int hEvent,
)>('PfMakeLog');

int PfRebindFilters(
  Pointer pInterface,
  Pointer<PF_LATEBIND_INFO> pLateBindInfo,
) =>
    _PfRebindFilters(
      pInterface,
      pLateBindInfo,
    );

late final _PfRebindFilters = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer pInterface,
  Pointer<PF_LATEBIND_INFO> pLateBindInfo,
),
    int Function(
  Pointer pInterface,
  Pointer<PF_LATEBIND_INFO> pLateBindInfo,
)>('PfRebindFilters');

int PfRemoveFilterHandles(
  Pointer pInterface,
  int cFilters,
  Pointer<Pointer> pvHandles,
) =>
    _PfRemoveFilterHandles(
      pInterface,
      cFilters,
      pvHandles,
    );

late final _PfRemoveFilterHandles = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer pInterface,
  Uint32 cFilters,
  Pointer<Pointer> pvHandles,
),
    int Function(
  Pointer pInterface,
  int cFilters,
  Pointer<Pointer> pvHandles,
)>('PfRemoveFilterHandles');

int PfRemoveFiltersFromInterface(
  Pointer ih,
  int cInFilters,
  Pointer<PF_FILTER_DESCRIPTOR> pfiltIn,
  int cOutFilters,
  Pointer<PF_FILTER_DESCRIPTOR> pfiltOut,
) =>
    _PfRemoveFiltersFromInterface(
      ih,
      cInFilters,
      pfiltIn,
      cOutFilters,
      pfiltOut,
    );

late final _PfRemoveFiltersFromInterface = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer ih,
  Uint32 cInFilters,
  Pointer<PF_FILTER_DESCRIPTOR> pfiltIn,
  Uint32 cOutFilters,
  Pointer<PF_FILTER_DESCRIPTOR> pfiltOut,
),
    int Function(
  Pointer ih,
  int cInFilters,
  Pointer<PF_FILTER_DESCRIPTOR> pfiltIn,
  int cOutFilters,
  Pointer<PF_FILTER_DESCRIPTOR> pfiltOut,
)>('PfRemoveFiltersFromInterface');

int PfRemoveGlobalFilterFromInterface(
  Pointer pInterface,
  int gfFilter,
) =>
    _PfRemoveGlobalFilterFromInterface(
      pInterface,
      gfFilter,
    );

late final _PfRemoveGlobalFilterFromInterface = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer pInterface,
  Int32 gfFilter,
),
    int Function(
  Pointer pInterface,
  int gfFilter,
)>('PfRemoveGlobalFilterFromInterface');

int PfSetLogBuffer(
  Pointer<Uint8> pbBuffer,
  int dwSize,
  int dwThreshold,
  int dwEntries,
  Pointer<Uint32> pdwLoggedEntries,
  Pointer<Uint32> pdwLostEntries,
  Pointer<Uint32> pdwSizeUsed,
) =>
    _PfSetLogBuffer(
      pbBuffer,
      dwSize,
      dwThreshold,
      dwEntries,
      pdwLoggedEntries,
      pdwLostEntries,
      pdwSizeUsed,
    );

late final _PfSetLogBuffer = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<Uint8> pbBuffer,
  Uint32 dwSize,
  Uint32 dwThreshold,
  Uint32 dwEntries,
  Pointer<Uint32> pdwLoggedEntries,
  Pointer<Uint32> pdwLostEntries,
  Pointer<Uint32> pdwSizeUsed,
),
    int Function(
  Pointer<Uint8> pbBuffer,
  int dwSize,
  int dwThreshold,
  int dwEntries,
  Pointer<Uint32> pdwLoggedEntries,
  Pointer<Uint32> pdwLostEntries,
  Pointer<Uint32> pdwSizeUsed,
)>('PfSetLogBuffer');

int PfTestPacket(
  Pointer pInInterface,
  Pointer pOutInterface,
  int cBytes,
  Pointer<Uint8> pbPacket,
  Pointer<Int32> ppAction,
) =>
    _PfTestPacket(
      pInInterface,
      pOutInterface,
      cBytes,
      pbPacket,
      ppAction,
    );

late final _PfTestPacket = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer pInInterface,
  Pointer pOutInterface,
  Uint32 cBytes,
  Pointer<Uint8> pbPacket,
  Pointer<Int32> ppAction,
),
    int Function(
  Pointer pInInterface,
  Pointer pOutInterface,
  int cBytes,
  Pointer<Uint8> pbPacket,
  Pointer<Int32> ppAction,
)>('PfTestPacket');

int PfUnBindInterface(
  Pointer pInterface,
) =>
    _PfUnBindInterface(
      pInterface,
    );

late final _PfUnBindInterface = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer pInterface,
),
    int Function(
  Pointer pInterface,
)>('PfUnBindInterface');

int RegisterInterfaceTimestampConfigChange(
  Pointer<NativeFunction<PINTERFACE_TIMESTAMP_CONFIG_CHANGE_CALLBACK>> Callback,
  Pointer CallerContext,
  Pointer<IntPtr> NotificationHandle,
) =>
    _RegisterInterfaceTimestampConfigChange(
      Callback,
      CallerContext,
      NotificationHandle,
    );

late final _RegisterInterfaceTimestampConfigChange = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<NativeFunction<PINTERFACE_TIMESTAMP_CONFIG_CHANGE_CALLBACK>> Callback,
  Pointer CallerContext,
  Pointer<IntPtr> NotificationHandle,
),
    int Function(
  Pointer<NativeFunction<PINTERFACE_TIMESTAMP_CONFIG_CHANGE_CALLBACK>> Callback,
  Pointer CallerContext,
  Pointer<IntPtr> NotificationHandle,
)>('RegisterInterfaceTimestampConfigChange');

int ResolveIpNetEntry2(
  Pointer<MIB_IPNET_ROW2> Row,
  Pointer<SOCKADDR_INET> SourceAddress,
) =>
    _ResolveIpNetEntry2(
      Row,
      SourceAddress,
    );

late final _ResolveIpNetEntry2 = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_IPNET_ROW2> Row,
  Pointer<SOCKADDR_INET> SourceAddress,
),
    int Function(
  Pointer<MIB_IPNET_ROW2> Row,
  Pointer<SOCKADDR_INET> SourceAddress,
)>('ResolveIpNetEntry2');

int ResolveNeighbor(
  Pointer<SOCKADDR> NetworkAddress,
  Pointer PhysicalAddress,
  Pointer<Uint32> PhysicalAddressLength,
) =>
    _ResolveNeighbor(
      NetworkAddress,
      PhysicalAddress,
      PhysicalAddressLength,
    );

late final _ResolveNeighbor = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<SOCKADDR> NetworkAddress,
  Pointer PhysicalAddress,
  Pointer<Uint32> PhysicalAddressLength,
),
    int Function(
  Pointer<SOCKADDR> NetworkAddress,
  Pointer PhysicalAddress,
  Pointer<Uint32> PhysicalAddressLength,
)>('ResolveNeighbor');

int RestoreMediaSense(
  Pointer<OVERLAPPED> pOverlapped,
  Pointer<Uint32> lpdwEnableCount,
) =>
    _RestoreMediaSense(
      pOverlapped,
      lpdwEnableCount,
    );

late final _RestoreMediaSense = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<OVERLAPPED> pOverlapped,
  Pointer<Uint32> lpdwEnableCount,
),
    int Function(
  Pointer<OVERLAPPED> pOverlapped,
  Pointer<Uint32> lpdwEnableCount,
)>('RestoreMediaSense');

int SendARP(
  int DestIP,
  int SrcIP,
  Pointer pMacAddr,
  Pointer<Uint32> PhyAddrLen,
) =>
    _SendARP(
      DestIP,
      SrcIP,
      pMacAddr,
      PhyAddrLen,
    );

late final _SendARP = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint32 DestIP,
  Uint32 SrcIP,
  Pointer pMacAddr,
  Pointer<Uint32> PhyAddrLen,
),
    int Function(
  int DestIP,
  int SrcIP,
  Pointer pMacAddr,
  Pointer<Uint32> PhyAddrLen,
)>('SendARP');

int SetCurrentThreadCompartmentId(
  int CompartmentId,
) =>
    _SetCurrentThreadCompartmentId(
      CompartmentId,
    );

late final _SetCurrentThreadCompartmentId = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint32 CompartmentId,
),
    int Function(
  int CompartmentId,
)>('SetCurrentThreadCompartmentId');

int SetCurrentThreadCompartmentScope(
  int CompartmentScope,
) =>
    _SetCurrentThreadCompartmentScope(
      CompartmentScope,
    );

late final _SetCurrentThreadCompartmentScope = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint32 CompartmentScope,
),
    int Function(
  int CompartmentScope,
)>('SetCurrentThreadCompartmentScope');

int SetDnsSettings(
  Pointer<DNS_SETTINGS> Settings,
) =>
    _SetDnsSettings(
      Settings,
    );

late final _SetDnsSettings = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<DNS_SETTINGS> Settings,
),
    int Function(
  Pointer<DNS_SETTINGS> Settings,
)>('SetDnsSettings');

int SetIfEntry(
  Pointer<MIB_IFRO> pIfRow,
) =>
    _SetIfEntry(
      pIfRow,
    );

late final _SetIfEntry = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_IFRO> pIfRow,
),
    int Function(
  Pointer<MIB_IFRO> pIfRow,
)>('SetIfEntry');

int SetInterfaceDnsSettings(
  GUID Interface,
  Pointer<DNS_INTERFACE_SETTINGS> Settings,
) =>
    _SetInterfaceDnsSettings(
      Interface,
      Settings,
    );

late final _SetInterfaceDnsSettings = _iphlpapi.lookupFunction<
    Int32 Function(
  GUID Interface,
  Pointer<DNS_INTERFACE_SETTINGS> Settings,
),
    int Function(
  GUID Interface,
  Pointer<DNS_INTERFACE_SETTINGS> Settings,
)>('SetInterfaceDnsSettings');

int SetIpForwardEntry(
  Pointer<MIB_IPFORWARDRO> pRoute,
) =>
    _SetIpForwardEntry(
      pRoute,
    );

late final _SetIpForwardEntry = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_IPFORWARDRO> pRoute,
),
    int Function(
  Pointer<MIB_IPFORWARDRO> pRoute,
)>('SetIpForwardEntry');

int SetIpForwardEntry2(
  Pointer<MIB_IPFORWARD_ROW2> Route,
) =>
    _SetIpForwardEntry2(
      Route,
    );

late final _SetIpForwardEntry2 = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_IPFORWARD_ROW2> Route,
),
    int Function(
  Pointer<MIB_IPFORWARD_ROW2> Route,
)>('SetIpForwardEntry2');

int SetIpInterfaceEntry(
  Pointer<MIB_IPINTERFACE_RO> Row,
) =>
    _SetIpInterfaceEntry(
      Row,
    );

late final _SetIpInterfaceEntry = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_IPINTERFACE_RO> Row,
),
    int Function(
  Pointer<MIB_IPINTERFACE_RO> Row,
)>('SetIpInterfaceEntry');

int SetIpNetEntry(
  Pointer<MIB_IPNETROW_LH> pArpEntry,
) =>
    _SetIpNetEntry(
      pArpEntry,
    );

late final _SetIpNetEntry = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_IPNETROW_LH> pArpEntry,
),
    int Function(
  Pointer<MIB_IPNETROW_LH> pArpEntry,
)>('SetIpNetEntry');

int SetIpNetEntry2(
  Pointer<MIB_IPNET_ROW2> Row,
) =>
    _SetIpNetEntry2(
      Row,
    );

late final _SetIpNetEntry2 = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_IPNET_ROW2> Row,
),
    int Function(
  Pointer<MIB_IPNET_ROW2> Row,
)>('SetIpNetEntry2');

int SetIpStatistics(
  Pointer<MIB_IPSTATS_LH> pIpStats,
) =>
    _SetIpStatistics(
      pIpStats,
    );

late final _SetIpStatistics = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_IPSTATS_LH> pIpStats,
),
    int Function(
  Pointer<MIB_IPSTATS_LH> pIpStats,
)>('SetIpStatistics');

int SetIpStatisticsEx(
  Pointer<MIB_IPSTATS_LH> Statistics,
  int Family,
) =>
    _SetIpStatisticsEx(
      Statistics,
      Family,
    );

late final _SetIpStatisticsEx = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_IPSTATS_LH> Statistics,
  Uint32 Family,
),
    int Function(
  Pointer<MIB_IPSTATS_LH> Statistics,
  int Family,
)>('SetIpStatisticsEx');

int SetIpTTL(
  int nTTL,
) =>
    _SetIpTTL(
      nTTL,
    );

late final _SetIpTTL = _iphlpapi.lookupFunction<
    Uint32 Function(
  Uint32 nTTL,
),
    int Function(
  int nTTL,
)>('SetIpTTL');

int SetJobCompartmentId(
  int JobHandle,
  int CompartmentId,
) =>
    _SetJobCompartmentId(
      JobHandle,
      CompartmentId,
    );

late final _SetJobCompartmentId = _iphlpapi.lookupFunction<
    Int32 Function(
  IntPtr JobHandle,
  Uint32 CompartmentId,
),
    int Function(
  int JobHandle,
  int CompartmentId,
)>('SetJobCompartmentId');

int SetNetworkInformation(
  Pointer<GUID> NetworkGuid,
  int CompartmentId,
  Pointer<Utf16> NetworkName,
) =>
    _SetNetworkInformation(
      NetworkGuid,
      CompartmentId,
      NetworkName,
    );

late final _SetNetworkInformation = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<GUID> NetworkGuid,
  Uint32 CompartmentId,
  Pointer<Utf16> NetworkName,
),
    int Function(
  Pointer<GUID> NetworkGuid,
  int CompartmentId,
  Pointer<Utf16> NetworkName,
)>('SetNetworkInformation');

int SetPerTcp6ConnectionEStats(
  Pointer<MIB_TCP6RO> Row,
  int EstatsType,
  Pointer<Uint8> Rw,
  int RwVersion,
  int RwSize,
  int Offset,
) =>
    _SetPerTcp6ConnectionEStats(
      Row,
      EstatsType,
      Rw,
      RwVersion,
      RwSize,
      Offset,
    );

late final _SetPerTcp6ConnectionEStats = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_TCP6RO> Row,
  Int32 EstatsType,
  Pointer<Uint8> Rw,
  Uint32 RwVersion,
  Uint32 RwSize,
  Uint32 Offset,
),
    int Function(
  Pointer<MIB_TCP6RO> Row,
  int EstatsType,
  Pointer<Uint8> Rw,
  int RwVersion,
  int RwSize,
  int Offset,
)>('SetPerTcp6ConnectionEStats');

int SetPerTcpConnectionEStats(
  Pointer<MIB_TCPROW_LH> Row,
  int EstatsType,
  Pointer<Uint8> Rw,
  int RwVersion,
  int RwSize,
  int Offset,
) =>
    _SetPerTcpConnectionEStats(
      Row,
      EstatsType,
      Rw,
      RwVersion,
      RwSize,
      Offset,
    );

late final _SetPerTcpConnectionEStats = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_TCPROW_LH> Row,
  Int32 EstatsType,
  Pointer<Uint8> Rw,
  Uint32 RwVersion,
  Uint32 RwSize,
  Uint32 Offset,
),
    int Function(
  Pointer<MIB_TCPROW_LH> Row,
  int EstatsType,
  Pointer<Uint8> Rw,
  int RwVersion,
  int RwSize,
  int Offset,
)>('SetPerTcpConnectionEStats');

int SetSessionCompartmentId(
  int SessionId,
  int CompartmentId,
) =>
    _SetSessionCompartmentId(
      SessionId,
      CompartmentId,
    );

late final _SetSessionCompartmentId = _iphlpapi.lookupFunction<
    Int32 Function(
  Uint32 SessionId,
  Uint32 CompartmentId,
),
    int Function(
  int SessionId,
  int CompartmentId,
)>('SetSessionCompartmentId');

int SetTcpEntry(
  Pointer<MIB_TCPROW_LH> pTcpRow,
) =>
    _SetTcpEntry(
      pTcpRow,
    );

late final _SetTcpEntry = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<MIB_TCPROW_LH> pTcpRow,
),
    int Function(
  Pointer<MIB_TCPROW_LH> pTcpRow,
)>('SetTcpEntry');

int SetUnicastIpAddressEntry(
  Pointer<MIB_UNICASTIPADDRESS_RO> Row,
) =>
    _SetUnicastIpAddressEntry(
      Row,
    );

late final _SetUnicastIpAddressEntry = _iphlpapi.lookupFunction<
    Int32 Function(
  Pointer<MIB_UNICASTIPADDRESS_RO> Row,
),
    int Function(
  Pointer<MIB_UNICASTIPADDRESS_RO> Row,
)>('SetUnicastIpAddressEntry');

int UnenableRouter(
  Pointer<OVERLAPPED> pOverlapped,
  Pointer<Uint32> lpdwEnableCount,
) =>
    _UnenableRouter(
      pOverlapped,
      lpdwEnableCount,
    );

late final _UnenableRouter = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<OVERLAPPED> pOverlapped,
  Pointer<Uint32> lpdwEnableCount,
),
    int Function(
  Pointer<OVERLAPPED> pOverlapped,
  Pointer<Uint32> lpdwEnableCount,
)>('UnenableRouter');

void UnregisterInterfaceTimestampConfigChange(
  int NotificationHandle,
) =>
    _UnregisterInterfaceTimestampConfigChange(
      NotificationHandle,
    );

late final _UnregisterInterfaceTimestampConfigChange = _iphlpapi.lookupFunction<
    Void Function(
  IntPtr NotificationHandle,
),
    void Function(
  int NotificationHandle,
)>('UnregisterInterfaceTimestampConfigChange');

Pointer<Utf8> if_indextoname(
  int InterfaceIndex,
  Pointer<Utf8> InterfaceName,
) =>
    _if_indextoname(
      InterfaceIndex,
      InterfaceName,
    );

late final _if_indextoname = _iphlpapi.lookupFunction<
    Pointer<Utf8> Function(
  Uint32 InterfaceIndex,
  Pointer<Utf8> InterfaceName,
),
    Pointer<Utf8> Function(
  int InterfaceIndex,
  Pointer<Utf8> InterfaceName,
)>('if_indextoname');

int if_nametoindex(
  Pointer<Utf8> InterfaceName,
) =>
    _if_nametoindex(
      InterfaceName,
    );

late final _if_nametoindex = _iphlpapi.lookupFunction<
    Uint32 Function(
  Pointer<Utf8> InterfaceName,
),
    int Function(
  Pointer<Utf8> InterfaceName,
)>('if_nametoindex');
