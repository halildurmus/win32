// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';

class USB_COMMON_DESCRIPTOR extends Struct {
  @Uint8() external int bLength;
  @Uint8() external int bDescriptorType;
}

class USB_DEVICE_DESCRIPTOR extends Struct {
  @Uint8() external int bLength;
  @Uint8() external int bDescriptorType;
  @Uint16() external int bcdUSB;
  @Uint8() external int bDeviceClass;
  @Uint8() external int bDeviceSubClass;
  @Uint8() external int bDeviceProtocol;
  @Uint8() external int bMaxPacketSize0;
  @Uint16() external int idVendor;
  @Uint16() external int idProduct;
  @Uint16() external int bcdDevice;
  @Uint8() external int iManufacturer;
  @Uint8() external int iProduct;
  @Uint8() external int iSerialNumber;
  @Uint8() external int bNumConfigurations;
}

class USB_DEVICE_QUALIFIER_DESCRIPTOR extends Struct {
  @Uint8() external int bLength;
  @Uint8() external int bDescriptorType;
  @Uint16() external int bcdUSB;
  @Uint8() external int bDeviceClass;
  @Uint8() external int bDeviceSubClass;
  @Uint8() external int bDeviceProtocol;
  @Uint8() external int bMaxPacketSize0;
  @Uint8() external int bNumConfigurations;
  @Uint8() external int bReserved;
}

class USB_BOS_DESCRIPTOR extends Struct {
  @Uint8() external int bLength;
  @Uint8() external int bDescriptorType;
  @Uint16() external int wTotalLength;
  @Uint8() external int bNumDeviceCaps;
}

class USB_DEVICE_CAPABILITY_SUPERSPEED_USB_DESCRIPTOR extends Struct {
  @Uint8() external int bLength;
  @Uint8() external int bDescriptorType;
  @Uint8() external int bDevCapabilityType;
  @Uint8() external int bmAttributes;
  @Uint16() external int wSpeedsSupported;
  @Uint8() external int bFunctionalitySupport;
  @Uint8() external int bU1DevExitLat;
  @Uint16() external int wU2DevExitLat;
}

class USB_DEVICE_CAPABILITY_CONTAINER_ID_DESCRIPTOR extends Struct {
  @Uint8() external int bLength;
  @Uint8() external int bDescriptorType;
  @Uint8() external int bDevCapabilityType;
  @Uint8() external int bReserved;
  external __ubyte__ ContainerID;
}

class USB_DEVICE_CAPABILITY_PLATFORM_DESCRIPTOR extends Struct {
  @Uint8() external int bLength;
  @Uint8() external int bDescriptorType;
  @Uint8() external int bDevCapabilityType;
  @Uint8() external int bReserved;
  external GUID PlatformCapabilityUuid;
  external __ubyte__ CapabililityData;
}

class USB_DEVICE_CAPABILITY_DESCRIPTOR extends Struct {
  @Uint8() external int bLength;
  @Uint8() external int bDescriptorType;
  @Uint8() external int bDevCapabilityType;
}

class USB_CONFIGURATION_DESCRIPTOR extends Struct {
  @Uint8() external int bLength;
  @Uint8() external int bDescriptorType;
  @Uint16() external int wTotalLength;
  @Uint8() external int bNumInterfaces;
  @Uint8() external int bConfigurationValue;
  @Uint8() external int iConfiguration;
  @Uint8() external int bmAttributes;
  @Uint8() external int MaxPower;
}

class USB_INTERFACE_ASSOCIATION_DESCRIPTOR extends Struct {
  @Uint8() external int bLength;
  @Uint8() external int bDescriptorType;
  @Uint8() external int bFirstInterface;
  @Uint8() external int bInterfaceCount;
  @Uint8() external int bFunctionClass;
  @Uint8() external int bFunctionSubClass;
  @Uint8() external int bFunctionProtocol;
  @Uint8() external int iFunction;
}

class USB_INTERFACE_DESCRIPTOR extends Struct {
  @Uint8() external int bLength;
  @Uint8() external int bDescriptorType;
  @Uint8() external int bInterfaceNumber;
  @Uint8() external int bAlternateSetting;
  @Uint8() external int bNumEndpoints;
  @Uint8() external int bInterfaceClass;
  @Uint8() external int bInterfaceSubClass;
  @Uint8() external int bInterfaceProtocol;
  @Uint8() external int iInterface;
}

class USB_ENDPOINT_DESCRIPTOR extends Struct {
  @Uint8() external int bLength;
  @Uint8() external int bDescriptorType;
  @Uint8() external int bEndpointAddress;
  @Uint8() external int bmAttributes;
  @Uint16() external int wMaxPacketSize;
  @Uint8() external int bInterval;
}

class USB_HIGH_SPEED_MAXPACKET extends Struct {
  @Uint16() external int us;
}

class USB_STRING_DESCRIPTOR extends Struct {
  @Uint8() external int bLength;
  @Uint8() external int bDescriptorType;
  external __ushort__ bString;
}

class USB_SUPERSPEEDPLUS_ISOCH_ENDPOINT_COMPANION_DESCRIPTOR extends Struct {
  @Uint8() external int bLength;
  @Uint8() external int bDescriptorType;
  @Uint16() external int wReserved;
  @Uint32() external int dwBytesPerInterval;
}

class USB_HUB_DESCRIPTOR extends Struct {
  @Uint8() external int bDescriptorLength;
  @Uint8() external int bDescriptorType;
  @Uint8() external int bNumberOfPorts;
  @Uint16() external int wHubCharacteristics;
  @Uint8() external int bPowerOnToPowerGood;
  @Uint8() external int bHubControlCurrent;
  external __ubyte__ bRemoveAndPowerMask;
}

class USB_30_HUB_DESCRIPTOR extends Struct {
  @Uint8() external int bLength;
  @Uint8() external int bDescriptorType;
  @Uint8() external int bNumberOfPorts;
  @Uint16() external int wHubCharacteristics;
  @Uint8() external int bPowerOnToPowerGood;
  @Uint8() external int bHubControlCurrent;
  @Uint8() external int bHubHdrDecLat;
  @Uint16() external int wHubDelay;
  @Uint16() external int DeviceRemovable;
}

class USB_PORT_STATUS extends Struct {
  @Uint16() external int AsUshort16;
  external USB_20_PORT_STATUS Usb20PortStatus;
  external USB_30_PORT_STATUS Usb30PortStatus;
}

class USB_PORT_CHANGE extends Struct {
  @Uint16() external int AsUshort16;
  external USB_20_PORT_CHANGE Usb20PortChange;
  external USB_30_PORT_CHANGE Usb30PortChange;
}

class USB_CONFIGURATION_POWER_DESCRIPTOR extends Struct {
  @Uint8() external int bLength;
  @Uint8() external int bDescriptorType;
  external __ubyte__ SelfPowerConsumedD0;
  @Uint8() external int bPowerSummaryId;
  @Uint8() external int bBusPowerSavingD1;
  @Uint8() external int bSelfPowerSavingD1;
  @Uint8() external int bBusPowerSavingD2;
  @Uint8() external int bSelfPowerSavingD2;
  @Uint8() external int bBusPowerSavingD3;
  @Uint8() external int bSelfPowerSavingD3;
  @Uint16() external int TransitionTimeFromD1;
  @Uint16() external int TransitionTimeFromD2;
  @Uint16() external int TransitionTimeFromD3;
}

class USB_INTERFACE_POWER_DESCRIPTOR extends Struct {
  @Uint8() external int bLength;
  @Uint8() external int bDescriptorType;
  @Uint8() external int bmCapabilitiesFlags;
  @Uint8() external int bBusPowerSavingD1;
  @Uint8() external int bSelfPowerSavingD1;
  @Uint8() external int bBusPowerSavingD2;
  @Uint8() external int bSelfPowerSavingD2;
  @Uint8() external int bBusPowerSavingD3;
  @Uint8() external int bSelfPowerSavingD3;
  @Uint16() external int TransitionTimeFromD1;
  @Uint16() external int TransitionTimeFromD2;
  @Uint16() external int TransitionTimeFromD3;
}

class USBD_VERSION_INFORMATION extends Struct {
  @Uint32() external int USBDI_Version;
  @Uint32() external int Supported_USB_Version;
}

class USBD_DEVICE_INFORMATION extends Struct {
  @Uint32() external int OffsetNext;
  external Pointer UsbdDeviceHandle;
  external USB_DEVICE_DESCRIPTOR DeviceDescriptor;
}

class USBD_PIPE_INFORMATION extends Struct {
  @Uint16() external int MaximumPacketSize;
  @Uint8() external int EndpointAddress;
  @Uint8() external int Interval;
  @Uint32() external int PipeType;
  external Pointer PipeHandle;
  @Uint32() external int MaximumTransferSize;
  @Uint32() external int PipeFlags;
}

class USBD_ENDPOINT_OFFLOAD_INFORMATION extends Struct {
  @Uint32() external int Size;
  @Uint16() external int EndpointAddress;
  @Uint32() external int ResourceId;
  @Uint32() external int Mode;
  @Uint32() external int _bitfield1;
  @Uint32() external int _bitfield2;
  @Int64() external int TransferSegmentLA;
  external Pointer TransferSegmentVA;
  @IntPtr() external int TransferRingSize;
  @Uint32() external int TransferRingInitialCycleBit;
  @Uint32() external int MessageNumber;
  @Int64() external int EventRingSegmentLA;
  external Pointer EventRingSegmentVA;
  @IntPtr() external int EventRingSize;
  @Uint32() external int EventRingInitialCycleBit;
}

class USBD_INTERFACE_INFORMATION extends Struct {
  @Uint16() external int Length;
  @Uint8() external int InterfaceNumber;
  @Uint8() external int AlternateSetting;
  @Uint8() external int Class;
  @Uint8() external int SubClass;
  @Uint8() external int Protocol;
  @Uint8() external int Reserved;
  external Pointer InterfaceHandle;
  @Uint32() external int NumberOfPipes;
  external USBD_PIPE_INFORMATION Pipes;
}

class _URB_HCD_AREA extends Struct {
  external ____ Reserved8;
}

class _URB_HEADER extends Struct {
  @Uint16() external int Length;
  @Uint16() external int Function;
  @Int32() external int Status;
  external Pointer UsbdDeviceHandle;
  @Uint32() external int UsbdFlags;
}

class _URB_SELECT_INTERFACE extends Struct {
  external _URB_HEADER Hdr;
  external Pointer ConfigurationHandle;
  external USBD_INTERFACE_INFORMATION Interface;
}

class _URB_SELECT_CONFIGURATION extends Struct {
  external _URB_HEADER Hdr;
  external Pointer<USB_CONFIGURATION_DESCRIPTOR> ConfigurationDescriptor;
  external Pointer ConfigurationHandle;
  external USBD_INTERFACE_INFORMATION Interface;
}

class _URB_PIPE_REQUEST extends Struct {
  external _URB_HEADER Hdr;
  external Pointer PipeHandle;
  @Uint32() external int Reserved;
}

class _URB_FRAME_LENGTH_CONTROL extends Struct {
  external _URB_HEADER Hdr;
}

class _URB_GET_FRAME_LENGTH extends Struct {
  external _URB_HEADER Hdr;
  @Uint32() external int FrameLength;
  @Uint32() external int FrameNumber;
}

class _URB_SET_FRAME_LENGTH extends Struct {
  external _URB_HEADER Hdr;
  @Int32() external int FrameLengthDelta;
}

class _URB_GET_CURRENT_FRAME_NUMBER extends Struct {
  external _URB_HEADER Hdr;
  @Uint32() external int FrameNumber;
}

class _URB_CONTROL_DESCRIPTOR_REQUEST extends Struct {
  external _URB_HEADER Hdr;
  external Pointer Reserved;
  @Uint32() external int Reserved0;
  @Uint32() external int TransferBufferLength;
  external Pointer TransferBuffer;
  external Pointer TransferBufferMDL;
  external Pointer<URB> UrbLink;
  external _URB_HCD_AREA hca;
  @Uint16() external int Reserved1;
  @Uint8() external int Index;
  @Uint8() external int DescriptorType;
  @Uint16() external int LanguageId;
  @Uint16() external int Reserved2;
}

class _URB_CONTROL_GET_STATUS_REQUEST extends Struct {
  external _URB_HEADER Hdr;
  external Pointer Reserved;
  @Uint32() external int Reserved0;
  @Uint32() external int TransferBufferLength;
  external Pointer TransferBuffer;
  external Pointer TransferBufferMDL;
  external Pointer<URB> UrbLink;
  external _URB_HCD_AREA hca;
  external __ubyte__ Reserved1;
  @Uint16() external int Index;
  @Uint16() external int Reserved2;
}

class _URB_CONTROL_FEATURE_REQUEST extends Struct {
  external _URB_HEADER Hdr;
  external Pointer Reserved;
  @Uint32() external int Reserved2;
  @Uint32() external int Reserved3;
  external Pointer Reserved4;
  external Pointer Reserved5;
  external Pointer<URB> UrbLink;
  external _URB_HCD_AREA hca;
  @Uint16() external int Reserved0;
  @Uint16() external int FeatureSelector;
  @Uint16() external int Index;
  @Uint16() external int Reserved1;
}

class _URB_CONTROL_VENDOR_OR_CLASS_REQUEST extends Struct {
  external _URB_HEADER Hdr;
  external Pointer Reserved;
  @Uint32() external int TransferFlags;
  @Uint32() external int TransferBufferLength;
  external Pointer TransferBuffer;
  external Pointer TransferBufferMDL;
  external Pointer<URB> UrbLink;
  external _URB_HCD_AREA hca;
  @Uint8() external int RequestTypeReservedBits;
  @Uint8() external int Request;
  @Uint16() external int Value;
  @Uint16() external int Index;
  @Uint16() external int Reserved1;
}

class _URB_CONTROL_GET_INTERFACE_REQUEST extends Struct {
  external _URB_HEADER Hdr;
  external Pointer Reserved;
  @Uint32() external int Reserved0;
  @Uint32() external int TransferBufferLength;
  external Pointer TransferBuffer;
  external Pointer TransferBufferMDL;
  external Pointer<URB> UrbLink;
  external _URB_HCD_AREA hca;
  external __ubyte__ Reserved1;
  @Uint16() external int Interface;
  @Uint16() external int Reserved2;
}

class _URB_CONTROL_GET_CONFIGURATION_REQUEST extends Struct {
  external _URB_HEADER Hdr;
  external Pointer Reserved;
  @Uint32() external int Reserved0;
  @Uint32() external int TransferBufferLength;
  external Pointer TransferBuffer;
  external Pointer TransferBufferMDL;
  external Pointer<URB> UrbLink;
  external _URB_HCD_AREA hca;
  external __ubyte__ Reserved1;
}

class _URB_OS_FEATURE_DESCRIPTOR_REQUEST extends Struct {
  external _URB_HEADER Hdr;
  external Pointer Reserved;
  @Uint32() external int Reserved0;
  @Uint32() external int TransferBufferLength;
  external Pointer TransferBuffer;
  external Pointer TransferBufferMDL;
  external Pointer<URB> UrbLink;
  external _URB_HCD_AREA hca;
  @Uint8() external int _bitfield;
  @Uint8() external int Reserved2;
  @Uint8() external int InterfaceNumber;
  @Uint8() external int MS_PageIndex;
  @Uint16() external int MS_FeatureDescriptorIndex;
  @Uint16() external int Reserved3;
}

class _URB_CONTROL_TRANSFER extends Struct {
  external _URB_HEADER Hdr;
  external Pointer PipeHandle;
  @Uint32() external int TransferFlags;
  @Uint32() external int TransferBufferLength;
  external Pointer TransferBuffer;
  external Pointer TransferBufferMDL;
  external Pointer<URB> UrbLink;
  external _URB_HCD_AREA hca;
  external __ubyte__ SetupPacket;
}

class _URB_CONTROL_TRANSFER_EX extends Struct {
  external _URB_HEADER Hdr;
  external Pointer PipeHandle;
  @Uint32() external int TransferFlags;
  @Uint32() external int TransferBufferLength;
  external Pointer TransferBuffer;
  external Pointer TransferBufferMDL;
  @Uint32() external int Timeout;
  external _URB_HCD_AREA hca;
  external __ubyte__ SetupPacket;
}

class _URB_BULK_OR_INTERRUPT_TRANSFER extends Struct {
  external _URB_HEADER Hdr;
  external Pointer PipeHandle;
  @Uint32() external int TransferFlags;
  @Uint32() external int TransferBufferLength;
  external Pointer TransferBuffer;
  external Pointer TransferBufferMDL;
  external Pointer<URB> UrbLink;
  external _URB_HCD_AREA hca;
}

class USBD_ISO_PACKET_DESCRIPTOR extends Struct {
  @Uint32() external int Offset;
  @Uint32() external int Length;
  @Int32() external int Status;
}

class _URB_ISOCH_TRANSFER extends Struct {
  external _URB_HEADER Hdr;
  external Pointer PipeHandle;
  @Uint32() external int TransferFlags;
  @Uint32() external int TransferBufferLength;
  external Pointer TransferBuffer;
  external Pointer TransferBufferMDL;
  external Pointer<URB> UrbLink;
  external _URB_HCD_AREA hca;
  @Uint32() external int StartFrame;
  @Uint32() external int NumberOfPackets;
  @Uint32() external int ErrorCount;
  external USBD_ISO_PACKET_DESCRIPTOR IsoPacket;
}

class USBD_STREAM_INFORMATION extends Struct {
  external Pointer PipeHandle;
  @Uint32() external int StreamID;
  @Uint32() external int MaximumTransferSize;
  @Uint32() external int PipeFlags;
}

class _URB_OPEN_STATIC_STREAMS extends Struct {
  external _URB_HEADER Hdr;
  external Pointer PipeHandle;
  @Uint32() external int NumberOfStreams;
  @Uint16() external int StreamInfoVersion;
  @Uint16() external int StreamInfoSize;
  external Pointer<USBD_STREAM_INFORMATION> Streams;
}

class _URB_GET_ISOCH_PIPE_TRANSFER_PATH_DELAYS extends Struct {
  external _URB_HEADER Hdr;
  external Pointer PipeHandle;
  @Uint32() external int MaximumSendPathDelayInMilliSeconds;
  @Uint32() external int MaximumCompletionPathDelayInMilliSeconds;
}

class USB_IDLE_CALLBACK_INFO extends Struct {
  external USB_IDLE_CALLBACK IdleCallback;
  external Pointer IdleContext;
}

class USBUSER_REQUEST_HEADER extends Struct {
  @Uint32() external int UsbUserRequest;
  @Uint32() external int UsbUserStatusCode;
  @Uint32() external int RequestBufferLength;
  @Uint32() external int ActualBufferLength;
}

class PACKET_PARAMETERS extends Struct {
  @Uint8() external int DeviceAddress;
  @Uint8() external int EndpointAddress;
  @Uint16() external int MaximumPacketSize;
  @Uint32() external int Timeout;
  @Uint32() external int Flags;
  @Uint32() external int DataLength;
  @Uint16() external int HubDeviceAddress;
  @Uint16() external int PortTTNumber;
  @Uint8() external int ErrorCount;
  external __ubyte__ Pad;
  @Int32() external int UsbdStatusCode;
  external __ubyte__ Data;
}

class USBUSER_SEND_ONE_PACKET extends Struct {
  external USBUSER_REQUEST_HEADER Header;
  external PACKET_PARAMETERS PacketParameters;
}

class RAW_RESET_PORT_PARAMETERS extends Struct {
  @Uint16() external int PortNumber;
  @Uint16() external int PortStatus;
}

class USBUSER_RAW_RESET_ROOT_PORT extends Struct {
  external USBUSER_REQUEST_HEADER Header;
  external RAW_RESET_PORT_PARAMETERS Parameters;
}

class RAW_ROOTPORT_FEATURE extends Struct {
  @Uint16() external int PortNumber;
  @Uint16() external int PortFeature;
  @Uint16() external int PortStatus;
}

class USBUSER_ROOTPORT_FEATURE_REQUEST extends Struct {
  external USBUSER_REQUEST_HEADER Header;
  external RAW_ROOTPORT_FEATURE Parameters;
}

class RAW_ROOTPORT_PARAMETERS extends Struct {
  @Uint16() external int PortNumber;
  @Uint16() external int PortStatus;
}

class USBUSER_ROOTPORT_PARAMETERS extends Struct {
  external USBUSER_REQUEST_HEADER Header;
  external RAW_ROOTPORT_PARAMETERS Parameters;
}

class USB_CONTROLLER_INFO_0 extends Struct {
  @Uint32() external int PciVendorId;
  @Uint32() external int PciDeviceId;
  @Uint32() external int PciRevision;
  @Uint32() external int NumberOfRootPorts;
  @Uint32() external int ControllerFlavor;
  @Uint32() external int HcFeatureFlags;
}

class USBUSER_CONTROLLER_INFO_0 extends Struct {
  external USBUSER_REQUEST_HEADER Header;
  external USB_CONTROLLER_INFO_0 Info0;
}

class USB_UNICODE_NAME extends Struct {
  @Uint32() external int Length;
  external __ushort__ String;
}

class USBUSER_CONTROLLER_UNICODE_NAME extends Struct {
  external USBUSER_REQUEST_HEADER Header;
  external USB_UNICODE_NAME UnicodeName;
}

class USB_PASS_THRU_PARAMETERS extends Struct {
  external GUID FunctionGUID;
  @Uint32() external int ParameterLength;
  external __ubyte__ Parameters;
}

class USBUSER_PASS_THRU_REQUEST extends Struct {
  external USBUSER_REQUEST_HEADER Header;
  external USB_PASS_THRU_PARAMETERS PassThru;
}

class USB_POWER_INFO extends Struct {
  @Uint32() external int SystemState;
  @Uint32() external int HcDevicePowerState;
  @Uint32() external int HcDeviceWake;
  @Uint32() external int HcSystemWake;
  @Uint32() external int RhDevicePowerState;
  @Uint32() external int RhDeviceWake;
  @Uint32() external int RhSystemWake;
  @Uint32() external int LastSystemSleepState;
  @Uint8() external int CanWakeup;
  @Uint8() external int IsPowered;
}

class USBUSER_POWER_INFO_REQUEST extends Struct {
  external USBUSER_REQUEST_HEADER Header;
  external USB_POWER_INFO PowerInformation;
}

class USB_OPEN_RAW_DEVICE_PARAMETERS extends Struct {
  @Uint16() external int PortStatus;
  @Uint16() external int MaxPacketEp0;
}

class USBUSER_OPEN_RAW_DEVICE extends Struct {
  external USBUSER_REQUEST_HEADER Header;
  external USB_OPEN_RAW_DEVICE_PARAMETERS Parameters;
}

class USB_CLOSE_RAW_DEVICE_PARAMETERS extends Struct {
  @Uint32() external int xxx;
}

class USBUSER_CLOSE_RAW_DEVICE extends Struct {
  external USBUSER_REQUEST_HEADER Header;
  external USB_CLOSE_RAW_DEVICE_PARAMETERS Parameters;
}

class USB_SEND_RAW_COMMAND_PARAMETERS extends Struct {
  @Uint8() external int Usb_bmRequest;
  @Uint8() external int Usb_bRequest;
  @Uint16() external int Usb_wVlaue;
  @Uint16() external int Usb_wIndex;
  @Uint16() external int Usb_wLength;
  @Uint16() external int DeviceAddress;
  @Uint16() external int MaximumPacketSize;
  @Uint32() external int Timeout;
  @Uint32() external int DataLength;
  @Int32() external int UsbdStatusCode;
  external __ubyte__ Data;
}

class USBUSER_SEND_RAW_COMMAND extends Struct {
  external USBUSER_REQUEST_HEADER Header;
  external USB_SEND_RAW_COMMAND_PARAMETERS Parameters;
}

class USB_BANDWIDTH_INFO extends Struct {
  @Uint32() external int DeviceCount;
  @Uint32() external int TotalBusBandwidth;
  @Uint32() external int Total32secBandwidth;
  @Uint32() external int AllocedBulkAndControl;
  @Uint32() external int AllocedIso;
  @Uint32() external int AllocedInterrupt_1ms;
  @Uint32() external int AllocedInterrupt_2ms;
  @Uint32() external int AllocedInterrupt_4ms;
  @Uint32() external int AllocedInterrupt_8ms;
  @Uint32() external int AllocedInterrupt_16ms;
  @Uint32() external int AllocedInterrupt_32ms;
}

class USBUSER_BANDWIDTH_INFO_REQUEST extends Struct {
  external USBUSER_REQUEST_HEADER Header;
  external USB_BANDWIDTH_INFO BandwidthInformation;
}

class USB_BUS_STATISTICS_0 extends Struct {
  @Uint32() external int DeviceCount;
  @Int64() external int CurrentSystemTime;
  @Uint32() external int CurrentUsbFrame;
  @Uint32() external int BulkBytes;
  @Uint32() external int IsoBytes;
  @Uint32() external int InterruptBytes;
  @Uint32() external int ControlDataBytes;
  @Uint32() external int PciInterruptCount;
  @Uint32() external int HardResetCount;
  @Uint32() external int WorkerSignalCount;
  @Uint32() external int CommonBufferBytes;
  @Uint32() external int WorkerIdleTimeMs;
  @Uint8() external int RootHubEnabled;
  @Uint8() external int RootHubDevicePowerState;
  @Uint8() external int Unused;
  @Uint8() external int NameIndex;
}

class USBUSER_BUS_STATISTICS_0_REQUEST extends Struct {
  external USBUSER_REQUEST_HEADER Header;
  external USB_BUS_STATISTICS_0 BusStatistics0;
}

class USB_DRIVER_VERSION_PARAMETERS extends Struct {
  @Uint32() external int DriverTrackingCode;
  @Uint32() external int USBDI_Version;
  @Uint32() external int USBUSER_Version;
  @Uint8() external int CheckedPortDriver;
  @Uint8() external int CheckedMiniportDriver;
  @Uint16() external int USB_Version;
}

class USBUSER_GET_DRIVER_VERSION extends Struct {
  external USBUSER_REQUEST_HEADER Header;
  external USB_DRIVER_VERSION_PARAMETERS Parameters;
}

class USB_USB2HW_VERSION_PARAMETERS extends Struct {
  @Uint8() external int Usb2HwRevision;
}

class USBUSER_GET_USB2HW_VERSION extends Struct {
  external USBUSER_REQUEST_HEADER Header;
  external USB_USB2HW_VERSION_PARAMETERS Parameters;
}

class USBUSER_REFRESH_HCT_REG extends Struct {
  external USBUSER_REQUEST_HEADER Header;
  @Uint32() external int Flags;
}

class WINUSB_PIPE_INFORMATION extends Struct {
  @Uint32() external int PipeType;
  @Uint8() external int PipeId;
  @Uint16() external int MaximumPacketSize;
  @Uint8() external int Interval;
}

class WINUSB_PIPE_INFORMATION_EX extends Struct {
  @Uint32() external int PipeType;
  @Uint8() external int PipeId;
  @Uint16() external int MaximumPacketSize;
  @Uint8() external int Interval;
  @Uint32() external int MaximumBytesPerInterval;
}

class WINUSB_SETUP_PACKET extends Struct {
  @Uint8() external int RequestType;
  @Uint8() external int Request;
  @Uint16() external int Value;
  @Uint16() external int Index;
  @Uint16() external int Length;
}

class USB_START_TRACKING_FOR_TIME_SYNC_INFORMATION extends Struct {
  @IntPtr() external int TimeTrackingHandle;
  @Uint8() external int IsStartupDelayTolerable;
}

class USB_STOP_TRACKING_FOR_TIME_SYNC_INFORMATION extends Struct {
  @IntPtr() external int TimeTrackingHandle;
}

class USB_FRAME_NUMBER_AND_QPC_FOR_TIME_SYNC_INFORMATION extends Struct {
  @IntPtr() external int TimeTrackingHandle;
  @Uint32() external int InputFrameNumber;
  @Uint32() external int InputMicroFrameNumber;
  @Int64() external int QueryPerformanceCounterAtInputFrameOrMicroFrame;
  @Int64() external int QueryPerformanceCounterFrequency;
  @Uint32() external int PredictedAccuracyInMicroSeconds;
  @Uint32() external int CurrentGenerationID;
  @Int64() external int CurrentQueryPerformanceCounter;
  @Uint32() external int CurrentHardwareFrameNumber;
  @Uint32() external int CurrentHardwareMicroFrameNumber;
  @Uint32() external int CurrentUSBFrameNumber;
}

