// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../devices/usb/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../devices/usb/callbacks.g.dart';

/// {@category Struct}
class ALTERNATE_INTERFACE extends Struct {
  @Uint16()
  external int InterfaceNumber;

  @Uint16()
  external int AlternateInterfaceNumber;
}

/// {@category Struct}
class BM_REQUEST_TYPE extends Union {
  external _BM_REQUEST_TYPE__BM s;

  @Uint8()
  external int B;
}

/// {@category Struct}
class _BM_REQUEST_TYPE__BM extends Struct {
  @Uint8()
  external int bitfield;
}

extension BM_REQUEST_TYPE_Extension on BM_REQUEST_TYPE {
  int get bitfield => this.s.bitfield;
  set bitfield(int value) => this.s.bitfield = value;
}

/// {@category Struct}
class CHANNEL_INFO extends Struct {
  @Uint32()
  external int EventChannelSize;

  @Uint32()
  external int uReadDataAlignment;

  @Uint32()
  external int uWriteDataAlignment;
}

/// {@category Struct}
class DEVICE_DESCRIPTOR extends Struct {
  @Uint16()
  external int usVendorId;

  @Uint16()
  external int usProductId;

  @Uint16()
  external int usBcdDevice;

  @Uint16()
  external int usLanguageId;
}

/// {@category Struct}
class DRV_VERSION extends Struct {
  @Uint32()
  external int major;

  @Uint32()
  external int minor;

  @Uint32()
  external int internal;
}

/// {@category Struct}
class IO_BLOCK extends Struct {
  @Uint32()
  external int uOffset;

  @Uint32()
  external int uLength;

  external Pointer<Uint8> pbyData;

  @Uint32()
  external int uIndex;
}

/// {@category Struct}
class IO_BLOCK_EX extends Struct {
  @Uint32()
  external int uOffset;

  @Uint32()
  external int uLength;

  external Pointer<Uint8> pbyData;

  @Uint32()
  external int uIndex;

  @Uint8()
  external int bRequest;

  @Uint8()
  external int bmRequestType;

  @Uint8()
  external int fTransferDirectionIn;
}

/// {@category Struct}
class OS_STRING extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Array(7)
  external Array<Uint16> _MicrosoftString;

  String get MicrosoftString {
    final charCodes = <int>[];
    for (var i = 0; i < 7; i++) {
      charCodes.add(_MicrosoftString[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set MicrosoftString(String value) {
    final stringToStore = value.padRight(7, '\x00');
    for (var i = 0; i < 7; i++) {
      _MicrosoftString[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint8()
  external int bVendorCode;

  external _OS_STRING__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _OS_STRING__Anonymous_e__Union extends Union {
  @Uint8()
  external int bPad;

  @Uint8()
  external int bFlags;
}

extension OS_STRING_Extension on OS_STRING {
  int get bPad => this.Anonymous.bPad;
  set bPad(int value) => this.Anonymous.bPad = value;

  int get bFlags => this.Anonymous.bFlags;
  set bFlags(int value) => this.Anonymous.bFlags = value;
}

/// {@category Struct}
@Packed(1)
class PACKET_PARAMETERS extends Struct {
  @Uint8()
  external int DeviceAddress;

  @Uint8()
  external int EndpointAddress;

  @Uint16()
  external int MaximumPacketSize;

  @Uint32()
  external int Timeout;

  @Uint32()
  external int Flags;

  @Uint32()
  external int DataLength;

  @Uint16()
  external int HubDeviceAddress;

  @Uint16()
  external int PortTTNumber;

  @Uint8()
  external int ErrorCount;

  @Array(3)
  external Array<Uint8> Pad;

  @Int32()
  external int UsbdStatusCode;

  @Array(4)
  external Array<Uint8> Data;
}

/// {@category Struct}
@Packed(1)
class RAW_RESET_PORT_PARAMETERS extends Struct {
  @Uint16()
  external int PortNumber;

  @Uint16()
  external int PortStatus;
}

/// {@category Struct}
@Packed(1)
class RAW_ROOTPORT_FEATURE extends Struct {
  @Uint16()
  external int PortNumber;

  @Uint16()
  external int PortFeature;

  @Uint16()
  external int PortStatus;
}

/// {@category Struct}
@Packed(1)
class RAW_ROOTPORT_PARAMETERS extends Struct {
  @Uint16()
  external int PortNumber;

  @Uint16()
  external int PortStatus;
}

/// {@category Struct}
class URB extends Struct {
  external _URB__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _URB__Anonymous_e__Union extends Union {
  external URB_HEADER UrbHeader;

  external URB_SELECT_INTERFACE UrbSelectInterface;

  external URB_SELECT_CONFIGURATION UrbSelectConfiguration;

  external URB_PIPE_REQUEST UrbPipeRequest;

  external URB_FRAME_LENGTH_CONTROL UrbFrameLengthControl;

  external URB_GET_FRAME_LENGTH UrbGetFrameLength;

  external URB_SET_FRAME_LENGTH UrbSetFrameLength;

  external URB_GET_CURRENT_FRAME_NUMBER UrbGetCurrentFrameNumber;

  external URB_CONTROL_TRANSFER UrbControlTransfer;

  external URB_CONTROL_TRANSFER_EX UrbControlTransferEx;

  external URB_BULK_OR_INTERRUPT_TRANSFER UrbBulkOrInterruptTransfer;

  external URB_ISOCH_TRANSFER UrbIsochronousTransfer;

  external URB_CONTROL_DESCRIPTOR_REQUEST UrbControlDescriptorRequest;

  external URB_CONTROL_GET_STATUS_REQUEST UrbControlGetStatusRequest;

  external URB_CONTROL_FEATURE_REQUEST UrbControlFeatureRequest;

  external URB_CONTROL_VENDOR_OR_CLASS_REQUEST UrbControlVendorClassRequest;

  external URB_CONTROL_GET_INTERFACE_REQUEST UrbControlGetInterfaceRequest;

  external URB_CONTROL_GET_CONFIGURATION_REQUEST
      UrbControlGetConfigurationRequest;

  external URB_OS_FEATURE_DESCRIPTOR_REQUEST UrbOSFeatureDescriptorRequest;

  external URB_OPEN_STATIC_STREAMS UrbOpenStaticStreams;

  external URB_GET_ISOCH_PIPE_TRANSFER_PATH_DELAYS
      UrbGetIsochPipeTransferPathDelays;
}

extension URB_Extension on URB {
  URB_HEADER get UrbHeader => this.Anonymous.UrbHeader;
  set UrbHeader(URB_HEADER value) => this.Anonymous.UrbHeader = value;

  URB_SELECT_INTERFACE get UrbSelectInterface =>
      this.Anonymous.UrbSelectInterface;
  set UrbSelectInterface(URB_SELECT_INTERFACE value) =>
      this.Anonymous.UrbSelectInterface = value;

  URB_SELECT_CONFIGURATION get UrbSelectConfiguration =>
      this.Anonymous.UrbSelectConfiguration;
  set UrbSelectConfiguration(URB_SELECT_CONFIGURATION value) =>
      this.Anonymous.UrbSelectConfiguration = value;

  URB_PIPE_REQUEST get UrbPipeRequest => this.Anonymous.UrbPipeRequest;
  set UrbPipeRequest(URB_PIPE_REQUEST value) =>
      this.Anonymous.UrbPipeRequest = value;

  URB_FRAME_LENGTH_CONTROL get UrbFrameLengthControl =>
      this.Anonymous.UrbFrameLengthControl;
  set UrbFrameLengthControl(URB_FRAME_LENGTH_CONTROL value) =>
      this.Anonymous.UrbFrameLengthControl = value;

  URB_GET_FRAME_LENGTH get UrbGetFrameLength =>
      this.Anonymous.UrbGetFrameLength;
  set UrbGetFrameLength(URB_GET_FRAME_LENGTH value) =>
      this.Anonymous.UrbGetFrameLength = value;

  URB_SET_FRAME_LENGTH get UrbSetFrameLength =>
      this.Anonymous.UrbSetFrameLength;
  set UrbSetFrameLength(URB_SET_FRAME_LENGTH value) =>
      this.Anonymous.UrbSetFrameLength = value;

  URB_GET_CURRENT_FRAME_NUMBER get UrbGetCurrentFrameNumber =>
      this.Anonymous.UrbGetCurrentFrameNumber;
  set UrbGetCurrentFrameNumber(URB_GET_CURRENT_FRAME_NUMBER value) =>
      this.Anonymous.UrbGetCurrentFrameNumber = value;

  URB_CONTROL_TRANSFER get UrbControlTransfer =>
      this.Anonymous.UrbControlTransfer;
  set UrbControlTransfer(URB_CONTROL_TRANSFER value) =>
      this.Anonymous.UrbControlTransfer = value;

  URB_CONTROL_TRANSFER_EX get UrbControlTransferEx =>
      this.Anonymous.UrbControlTransferEx;
  set UrbControlTransferEx(URB_CONTROL_TRANSFER_EX value) =>
      this.Anonymous.UrbControlTransferEx = value;

  URB_BULK_OR_INTERRUPT_TRANSFER get UrbBulkOrInterruptTransfer =>
      this.Anonymous.UrbBulkOrInterruptTransfer;
  set UrbBulkOrInterruptTransfer(URB_BULK_OR_INTERRUPT_TRANSFER value) =>
      this.Anonymous.UrbBulkOrInterruptTransfer = value;

  URB_ISOCH_TRANSFER get UrbIsochronousTransfer =>
      this.Anonymous.UrbIsochronousTransfer;
  set UrbIsochronousTransfer(URB_ISOCH_TRANSFER value) =>
      this.Anonymous.UrbIsochronousTransfer = value;

  URB_CONTROL_DESCRIPTOR_REQUEST get UrbControlDescriptorRequest =>
      this.Anonymous.UrbControlDescriptorRequest;
  set UrbControlDescriptorRequest(URB_CONTROL_DESCRIPTOR_REQUEST value) =>
      this.Anonymous.UrbControlDescriptorRequest = value;

  URB_CONTROL_GET_STATUS_REQUEST get UrbControlGetStatusRequest =>
      this.Anonymous.UrbControlGetStatusRequest;
  set UrbControlGetStatusRequest(URB_CONTROL_GET_STATUS_REQUEST value) =>
      this.Anonymous.UrbControlGetStatusRequest = value;

  URB_CONTROL_FEATURE_REQUEST get UrbControlFeatureRequest =>
      this.Anonymous.UrbControlFeatureRequest;
  set UrbControlFeatureRequest(URB_CONTROL_FEATURE_REQUEST value) =>
      this.Anonymous.UrbControlFeatureRequest = value;

  URB_CONTROL_VENDOR_OR_CLASS_REQUEST get UrbControlVendorClassRequest =>
      this.Anonymous.UrbControlVendorClassRequest;
  set UrbControlVendorClassRequest(URB_CONTROL_VENDOR_OR_CLASS_REQUEST value) =>
      this.Anonymous.UrbControlVendorClassRequest = value;

  URB_CONTROL_GET_INTERFACE_REQUEST get UrbControlGetInterfaceRequest =>
      this.Anonymous.UrbControlGetInterfaceRequest;
  set UrbControlGetInterfaceRequest(URB_CONTROL_GET_INTERFACE_REQUEST value) =>
      this.Anonymous.UrbControlGetInterfaceRequest = value;

  URB_CONTROL_GET_CONFIGURATION_REQUEST get UrbControlGetConfigurationRequest =>
      this.Anonymous.UrbControlGetConfigurationRequest;
  set UrbControlGetConfigurationRequest(
          URB_CONTROL_GET_CONFIGURATION_REQUEST value) =>
      this.Anonymous.UrbControlGetConfigurationRequest = value;

  URB_OS_FEATURE_DESCRIPTOR_REQUEST get UrbOSFeatureDescriptorRequest =>
      this.Anonymous.UrbOSFeatureDescriptorRequest;
  set UrbOSFeatureDescriptorRequest(URB_OS_FEATURE_DESCRIPTOR_REQUEST value) =>
      this.Anonymous.UrbOSFeatureDescriptorRequest = value;

  URB_OPEN_STATIC_STREAMS get UrbOpenStaticStreams =>
      this.Anonymous.UrbOpenStaticStreams;
  set UrbOpenStaticStreams(URB_OPEN_STATIC_STREAMS value) =>
      this.Anonymous.UrbOpenStaticStreams = value;

  URB_GET_ISOCH_PIPE_TRANSFER_PATH_DELAYS
      get UrbGetIsochPipeTransferPathDelays =>
          this.Anonymous.UrbGetIsochPipeTransferPathDelays;
  set UrbGetIsochPipeTransferPathDelays(
          URB_GET_ISOCH_PIPE_TRANSFER_PATH_DELAYS value) =>
      this.Anonymous.UrbGetIsochPipeTransferPathDelays = value;
}

/// {@category Struct}
@Packed(1)
class USBD_DEVICE_INFORMATION extends Struct {
  @Uint32()
  external int OffsetNext;

  external Pointer UsbdDeviceHandle;

  external USB_DEVICE_DESCRIPTOR DeviceDescriptor;
}

/// {@category Struct}
class USBD_ENDPOINT_OFFLOAD_INFORMATION extends Struct {
  @Uint32()
  external int Size;

  @Uint16()
  external int EndpointAddress;

  @Uint32()
  external int ResourceId;

  @Int32()
  external int Mode;

  @Uint32()
  external int bitfield1;

  @Uint32()
  external int bitfield2;

  @Int64()
  external int TransferSegmentLA;

  external Pointer TransferSegmentVA;

  @IntPtr()
  external int TransferRingSize;

  @Uint32()
  external int TransferRingInitialCycleBit;

  @Uint32()
  external int MessageNumber;

  @Int64()
  external int EventRingSegmentLA;

  external Pointer EventRingSegmentVA;

  @IntPtr()
  external int EventRingSize;

  @Uint32()
  external int EventRingInitialCycleBit;
}

/// {@category Struct}
class USBD_INTERFACE_INFORMATION extends Struct {
  @Uint16()
  external int Length;

  @Uint8()
  external int InterfaceNumber;

  @Uint8()
  external int AlternateSetting;

  @Uint8()
  external int Class;

  @Uint8()
  external int SubClass;

  @Uint8()
  external int Protocol;

  @Uint8()
  external int Reserved;

  external Pointer InterfaceHandle;

  @Uint32()
  external int NumberOfPipes;

  @Array(1)
  external Array<USBD_PIPE_INFORMATION> Pipes;
}

/// {@category Struct}
class USBD_ISO_PACKET_DESCRIPTOR extends Struct {
  @Uint32()
  external int Offset;

  @Uint32()
  external int Length;

  @Int32()
  external int Status;
}

/// {@category Struct}
class USBD_PIPE_INFORMATION extends Struct {
  @Uint16()
  external int MaximumPacketSize;

  @Uint8()
  external int EndpointAddress;

  @Uint8()
  external int Interval;

  @Int32()
  external int PipeType;

  external Pointer PipeHandle;

  @Uint32()
  external int MaximumTransferSize;

  @Uint32()
  external int PipeFlags;
}

/// {@category Struct}
class USBD_STREAM_INFORMATION extends Struct {
  external Pointer PipeHandle;

  @Uint32()
  external int StreamID;

  @Uint32()
  external int MaximumTransferSize;

  @Uint32()
  external int PipeFlags;
}

/// {@category Struct}
class USBD_VERSION_INFORMATION extends Struct {
  @Uint32()
  external int USBDI_Version;

  @Uint32()
  external int Supported_USB_Version;
}

/// {@category Struct}
class USBFN_BUS_CONFIGURATION_INFO extends Struct {
  @Array(40)
  external Array<Uint16> _ConfigurationName;

  String get ConfigurationName {
    final charCodes = <int>[];
    for (var i = 0; i < 40; i++) {
      charCodes.add(_ConfigurationName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ConfigurationName(String value) {
    final stringToStore = value.padRight(40, '\x00');
    for (var i = 0; i < 40; i++) {
      _ConfigurationName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint8()
  external int IsCurrent;

  @Uint8()
  external int IsActive;
}

/// {@category Struct}
class USBFN_CLASS_INFORMATION_PACKET extends Struct {
  external USBFN_CLASS_INTERFACE FullSpeedClassInterface;

  external USBFN_CLASS_INTERFACE HighSpeedClassInterface;

  @Array(40)
  external Array<Uint16> _InterfaceName;

  String get InterfaceName {
    final charCodes = <int>[];
    for (var i = 0; i < 40; i++) {
      charCodes.add(_InterfaceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InterfaceName(String value) {
    final stringToStore = value.padRight(40, '\x00');
    for (var i = 0; i < 40; i++) {
      _InterfaceName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(39)
  external Array<Uint16> _InterfaceGuid;

  String get InterfaceGuid {
    final charCodes = <int>[];
    for (var i = 0; i < 39; i++) {
      charCodes.add(_InterfaceGuid[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InterfaceGuid(String value) {
    final stringToStore = value.padRight(39, '\x00');
    for (var i = 0; i < 39; i++) {
      _InterfaceGuid[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint8()
  external int HasInterfaceGuid;

  external USBFN_CLASS_INTERFACE SuperSpeedClassInterface;
}

/// {@category Struct}
class USBFN_CLASS_INFORMATION_PACKET_EX extends Struct {
  external USBFN_CLASS_INTERFACE_EX FullSpeedClassInterfaceEx;

  external USBFN_CLASS_INTERFACE_EX HighSpeedClassInterfaceEx;

  external USBFN_CLASS_INTERFACE_EX SuperSpeedClassInterfaceEx;

  @Array(40)
  external Array<Uint16> _InterfaceName;

  String get InterfaceName {
    final charCodes = <int>[];
    for (var i = 0; i < 40; i++) {
      charCodes.add(_InterfaceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InterfaceName(String value) {
    final stringToStore = value.padRight(40, '\x00');
    for (var i = 0; i < 40; i++) {
      _InterfaceName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(39)
  external Array<Uint16> _InterfaceGuid;

  String get InterfaceGuid {
    final charCodes = <int>[];
    for (var i = 0; i < 39; i++) {
      charCodes.add(_InterfaceGuid[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InterfaceGuid(String value) {
    final stringToStore = value.padRight(39, '\x00');
    for (var i = 0; i < 39; i++) {
      _InterfaceGuid[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint8()
  external int HasInterfaceGuid;
}

/// {@category Struct}
@Packed(1)
class USBFN_CLASS_INTERFACE extends Struct {
  @Uint8()
  external int InterfaceNumber;

  @Uint8()
  external int PipeCount;

  @Array(16)
  external Array<USBFN_PIPE_INFORMATION> PipeArr;
}

/// {@category Struct}
@Packed(1)
class USBFN_CLASS_INTERFACE_EX extends Struct {
  @Uint8()
  external int BaseInterfaceNumber;

  @Uint8()
  external int InterfaceCount;

  @Uint8()
  external int PipeCount;

  @Array(16)
  external Array<USBFN_PIPE_INFORMATION> PipeArr;
}

/// {@category Struct}
class USBFN_INTERFACE_INFO extends Struct {
  @Uint8()
  external int InterfaceNumber;

  @Int32()
  external int Speed;

  @Uint16()
  external int Size;

  @Array(1)
  external Array<Uint8> InterfaceDescriptorSet;
}

/// {@category Struct}
class USBFN_NOTIFICATION extends Struct {
  @Int32()
  external int Event;

  external _USBFN_NOTIFICATION__u_e__Union u;
}

/// {@category Struct}
class _USBFN_NOTIFICATION__u_e__Union extends Union {
  @Int32()
  external int BusSpeed;

  external USB_DEFAULT_PIPE_SETUP_PACKET SetupPacket;

  @Uint16()
  external int ConfigurationValue;

  @Int32()
  external int PortType;

  external ALTERNATE_INTERFACE AlternateInterface;
}

extension USBFN_NOTIFICATION_Extension on USBFN_NOTIFICATION {
  int get BusSpeed => this.u.BusSpeed;
  set BusSpeed(int value) => this.u.BusSpeed = value;

  USB_DEFAULT_PIPE_SETUP_PACKET get SetupPacket => this.u.SetupPacket;
  set SetupPacket(USB_DEFAULT_PIPE_SETUP_PACKET value) =>
      this.u.SetupPacket = value;

  int get ConfigurationValue => this.u.ConfigurationValue;
  set ConfigurationValue(int value) => this.u.ConfigurationValue = value;

  int get PortType => this.u.PortType;
  set PortType(int value) => this.u.PortType = value;

  ALTERNATE_INTERFACE get AlternateInterface => this.u.AlternateInterface;
  set AlternateInterface(ALTERNATE_INTERFACE value) =>
      this.u.AlternateInterface = value;
}

/// {@category Struct}
@Packed(1)
class USBFN_PIPE_INFORMATION extends Struct {
  external USB_ENDPOINT_DESCRIPTOR EpDesc;

  @Uint32()
  external int PipeId;
}

/// {@category Struct}
class USBFN_USB_STRING extends Struct {
  @Uint8()
  external int StringIndex;

  @Array(255)
  external Array<Uint16> _UsbString;

  String get UsbString {
    final charCodes = <int>[];
    for (var i = 0; i < 255; i++) {
      charCodes.add(_UsbString[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set UsbString(String value) {
    final stringToStore = value.padRight(255, '\x00');
    for (var i = 0; i < 255; i++) {
      _UsbString[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class USBSCAN_GET_DESCRIPTOR extends Struct {
  @Uint8()
  external int DescriptorType;

  @Uint8()
  external int Index;

  @Uint16()
  external int LanguageId;
}

/// {@category Struct}
class USBSCAN_PIPE_CONFIGURATION extends Struct {
  @Uint32()
  external int NumberOfPipes;

  @Array(8)
  external Array<USBSCAN_PIPE_INFORMATION> PipeInfo;
}

/// {@category Struct}
class USBSCAN_PIPE_INFORMATION extends Struct {
  @Uint16()
  external int MaximumPacketSize;

  @Uint8()
  external int EndpointAddress;

  @Uint8()
  external int Interval;

  @Int32()
  external int PipeType;
}

/// {@category Struct}
class USBSCAN_TIMEOUT extends Struct {
  @Uint32()
  external int TimeoutRead;

  @Uint32()
  external int TimeoutWrite;

  @Uint32()
  external int TimeoutEvent;
}

/// {@category Struct}
class USBUSER_BANDWIDTH_INFO_REQUEST extends Struct {
  external USBUSER_REQUEST_HEADER Header;

  external USB_BANDWIDTH_INFO BandwidthInformation;
}

/// {@category Struct}
class USBUSER_BUS_STATISTICS_0_REQUEST extends Struct {
  external USBUSER_REQUEST_HEADER Header;

  external USB_BUS_STATISTICS_0 BusStatistics0;
}

/// {@category Struct}
class USBUSER_CLOSE_RAW_DEVICE extends Struct {
  external USBUSER_REQUEST_HEADER Header;

  external USB_CLOSE_RAW_DEVICE_PARAMETERS Parameters;
}

/// {@category Struct}
class USBUSER_CONTROLLER_INFO_0 extends Struct {
  external USBUSER_REQUEST_HEADER Header;

  external USB_CONTROLLER_INFO_0 Info0;
}

/// {@category Struct}
class USBUSER_CONTROLLER_UNICODE_NAME extends Struct {
  external USBUSER_REQUEST_HEADER Header;

  external USB_UNICODE_NAME UnicodeName;
}

/// {@category Struct}
class USBUSER_GET_DRIVER_VERSION extends Struct {
  external USBUSER_REQUEST_HEADER Header;

  external USB_DRIVER_VERSION_PARAMETERS Parameters;
}

/// {@category Struct}
class USBUSER_GET_USB2HW_VERSION extends Struct {
  external USBUSER_REQUEST_HEADER Header;

  external USB_USB2HW_VERSION_PARAMETERS Parameters;
}

/// {@category Struct}
class USBUSER_OPEN_RAW_DEVICE extends Struct {
  external USBUSER_REQUEST_HEADER Header;

  external USB_OPEN_RAW_DEVICE_PARAMETERS Parameters;
}

/// {@category Struct}
class USBUSER_PASS_THRU_REQUEST extends Struct {
  external USBUSER_REQUEST_HEADER Header;

  external USB_PASS_THRU_PARAMETERS PassThru;
}

/// {@category Struct}
class USBUSER_POWER_INFO_REQUEST extends Struct {
  external USBUSER_REQUEST_HEADER Header;

  external USB_POWER_INFO PowerInformation;
}

/// {@category Struct}
class USBUSER_RAW_RESET_ROOT_PORT extends Struct {
  external USBUSER_REQUEST_HEADER Header;

  external RAW_RESET_PORT_PARAMETERS Parameters;
}

/// {@category Struct}
class USBUSER_REFRESH_HCT_REG extends Struct {
  external USBUSER_REQUEST_HEADER Header;

  @Uint32()
  external int Flags;
}

/// {@category Struct}
class USBUSER_REQUEST_HEADER extends Struct {
  @Uint32()
  external int UsbUserRequest;

  @Int32()
  external int UsbUserStatusCode;

  @Uint32()
  external int RequestBufferLength;

  @Uint32()
  external int ActualBufferLength;
}

/// {@category Struct}
class USBUSER_ROOTPORT_FEATURE_REQUEST extends Struct {
  external USBUSER_REQUEST_HEADER Header;

  external RAW_ROOTPORT_FEATURE Parameters;
}

/// {@category Struct}
class USBUSER_ROOTPORT_PARAMETERS extends Struct {
  external USBUSER_REQUEST_HEADER Header;

  external RAW_ROOTPORT_PARAMETERS Parameters;
}

/// {@category Struct}
class USBUSER_SEND_ONE_PACKET extends Struct {
  external USBUSER_REQUEST_HEADER Header;

  external PACKET_PARAMETERS PacketParameters;
}

/// {@category Struct}
class USBUSER_SEND_RAW_COMMAND extends Struct {
  external USBUSER_REQUEST_HEADER Header;

  external USB_SEND_RAW_COMMAND_PARAMETERS Parameters;
}

/// {@category Struct}
@Packed(1)
class USB_20_PORT_CHANGE extends Union {
  @Uint16()
  external int AsUshort16;

  external _USB_20_PORT_CHANGE__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_20_PORT_CHANGE__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int bitfield;
}

extension USB_20_PORT_CHANGE_Extension on USB_20_PORT_CHANGE {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
@Packed(1)
class USB_20_PORT_STATUS extends Union {
  @Uint16()
  external int AsUshort16;

  external _USB_20_PORT_STATUS__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_20_PORT_STATUS__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int bitfield;
}

extension USB_20_PORT_STATUS_Extension on USB_20_PORT_STATUS {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
@Packed(1)
class USB_30_HUB_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint8()
  external int bNumberOfPorts;

  @Uint16()
  external int wHubCharacteristics;

  @Uint8()
  external int bPowerOnToPowerGood;

  @Uint8()
  external int bHubControlCurrent;

  @Uint8()
  external int bHubHdrDecLat;

  @Uint16()
  external int wHubDelay;

  @Uint16()
  external int DeviceRemovable;
}

/// {@category Struct}
@Packed(1)
class USB_30_PORT_CHANGE extends Union {
  @Uint16()
  external int AsUshort16;

  external _USB_30_PORT_CHANGE__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_30_PORT_CHANGE__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int bitfield;
}

extension USB_30_PORT_CHANGE_Extension on USB_30_PORT_CHANGE {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
@Packed(1)
class USB_30_PORT_STATUS extends Union {
  @Uint16()
  external int AsUshort16;

  external _USB_30_PORT_STATUS__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_30_PORT_STATUS__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int bitfield;
}

extension USB_30_PORT_STATUS_Extension on USB_30_PORT_STATUS {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
@Packed(1)
class USB_BANDWIDTH_INFO extends Struct {
  @Uint32()
  external int DeviceCount;

  @Uint32()
  external int TotalBusBandwidth;

  @Uint32()
  external int Total32secBandwidth;

  @Uint32()
  external int AllocedBulkAndControl;

  @Uint32()
  external int AllocedIso;

  @Uint32()
  external int AllocedInterrupt_1ms;

  @Uint32()
  external int AllocedInterrupt_2ms;

  @Uint32()
  external int AllocedInterrupt_4ms;

  @Uint32()
  external int AllocedInterrupt_8ms;

  @Uint32()
  external int AllocedInterrupt_16ms;

  @Uint32()
  external int AllocedInterrupt_32ms;
}

/// {@category Struct}
@Packed(1)
class USB_BOS_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint16()
  external int wTotalLength;

  @Uint8()
  external int bNumDeviceCaps;
}

/// {@category Struct}
class USB_BUS_STATISTICS_0 extends Struct {
  @Uint32()
  external int DeviceCount;

  @Int64()
  external int CurrentSystemTime;

  @Uint32()
  external int CurrentUsbFrame;

  @Uint32()
  external int BulkBytes;

  @Uint32()
  external int IsoBytes;

  @Uint32()
  external int InterruptBytes;

  @Uint32()
  external int ControlDataBytes;

  @Uint32()
  external int PciInterruptCount;

  @Uint32()
  external int HardResetCount;

  @Uint32()
  external int WorkerSignalCount;

  @Uint32()
  external int CommonBufferBytes;

  @Uint32()
  external int WorkerIdleTimeMs;

  @Uint8()
  external int RootHubEnabled;

  @Uint8()
  external int RootHubDevicePowerState;

  @Uint8()
  external int Unused;

  @Uint8()
  external int NameIndex;
}

/// {@category Struct}
@Packed(1)
class USB_CLOSE_RAW_DEVICE_PARAMETERS extends Struct {
  @Uint32()
  external int xxx;
}

/// {@category Struct}
class USB_COMMON_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;
}

/// {@category Struct}
@Packed(1)
class USB_CONFIGURATION_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint16()
  external int wTotalLength;

  @Uint8()
  external int bNumInterfaces;

  @Uint8()
  external int bConfigurationValue;

  @Uint8()
  external int iConfiguration;

  @Uint8()
  external int bmAttributes;

  @Uint8()
  external int MaxPower;
}

/// {@category Struct}
@Packed(1)
class USB_CONFIGURATION_POWER_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Array(3)
  external Array<Uint8> SelfPowerConsumedD0;

  @Uint8()
  external int bPowerSummaryId;

  @Uint8()
  external int bBusPowerSavingD1;

  @Uint8()
  external int bSelfPowerSavingD1;

  @Uint8()
  external int bBusPowerSavingD2;

  @Uint8()
  external int bSelfPowerSavingD2;

  @Uint8()
  external int bBusPowerSavingD3;

  @Uint8()
  external int bSelfPowerSavingD3;

  @Uint16()
  external int TransitionTimeFromD1;

  @Uint16()
  external int TransitionTimeFromD2;

  @Uint16()
  external int TransitionTimeFromD3;
}

/// {@category Struct}
class USB_CONTROLLER_INFO_0 extends Struct {
  @Uint32()
  external int PciVendorId;

  @Uint32()
  external int PciDeviceId;

  @Uint32()
  external int PciRevision;

  @Uint32()
  external int NumberOfRootPorts;

  @Int32()
  external int ControllerFlavor;

  @Uint32()
  external int HcFeatureFlags;
}

/// {@category Struct}
class USB_DEFAULT_PIPE_SETUP_PACKET extends Struct {
  external BM_REQUEST_TYPE bmRequestType;

  @Uint8()
  external int bRequest;

  external _USB_DEFAULT_PIPE_SETUP_PACKET__wValue wValue;

  external _USB_DEFAULT_PIPE_SETUP_PACKET__wIndex wIndex;

  @Uint16()
  external int wLength;
}

/// {@category Struct}
class _USB_DEFAULT_PIPE_SETUP_PACKET__wValue extends Union {
  external _USB_DEFAULT_PIPE_SETUP_PACKET__wValue__Anonymous_e__Struct
      Anonymous;

  @Uint16()
  external int W;
}

/// {@category Struct}
class _USB_DEFAULT_PIPE_SETUP_PACKET__wValue__Anonymous_e__Struct
    extends Struct {
  @Uint8()
  external int LowByte;

  @Uint8()
  external int HiByte;
}

extension USB_DEFAULT_PIPE_SETUP_PACKET__wValue_Extension
    on USB_DEFAULT_PIPE_SETUP_PACKET {
  int get LowByte => this.wValue.Anonymous.LowByte;
  set LowByte(int value) => this.wValue.Anonymous.LowByte = value;

  int get HiByte => this.wValue.Anonymous.HiByte;
  set HiByte(int value) => this.wValue.Anonymous.HiByte = value;
}

extension USB_DEFAULT_PIPE_SETUP_PACKET_Extension
    on USB_DEFAULT_PIPE_SETUP_PACKET {
  _USB_DEFAULT_PIPE_SETUP_PACKET__wValue__Anonymous_e__Struct get Anonymous =>
      this.wValue.Anonymous;
  set Anonymous(
          _USB_DEFAULT_PIPE_SETUP_PACKET__wValue__Anonymous_e__Struct value) =>
      this.wValue.Anonymous = value;

  int get W => this.wValue.W;
  set W(int value) => this.wValue.W = value;
}

/// {@category Struct}
class _USB_DEFAULT_PIPE_SETUP_PACKET__wIndex extends Union {
  external _USB_DEFAULT_PIPE_SETUP_PACKET__wIndex__Anonymous_e__Struct
      Anonymous;

  @Uint16()
  external int W;
}

/// {@category Struct}
class _USB_DEFAULT_PIPE_SETUP_PACKET__wIndex__Anonymous_e__Struct
    extends Struct {
  @Uint8()
  external int LowByte;

  @Uint8()
  external int HiByte;
}

extension USB_DEFAULT_PIPE_SETUP_PACKET__wIndex_Extension
    on USB_DEFAULT_PIPE_SETUP_PACKET {
  int get LowByte => this.wIndex.Anonymous.LowByte;
  set LowByte(int value) => this.wIndex.Anonymous.LowByte = value;

  int get HiByte => this.wIndex.Anonymous.HiByte;
  set HiByte(int value) => this.wIndex.Anonymous.HiByte = value;
}

extension USB_DEFAULT_PIPE_SETUP_PACKET_Extension_1
    on USB_DEFAULT_PIPE_SETUP_PACKET {
  _USB_DEFAULT_PIPE_SETUP_PACKET__wIndex__Anonymous_e__Struct get Anonymous =>
      this.wIndex.Anonymous;
  set Anonymous(
          _USB_DEFAULT_PIPE_SETUP_PACKET__wIndex__Anonymous_e__Struct value) =>
      this.wIndex.Anonymous = value;

  int get W => this.wIndex.W;
  set W(int value) => this.wIndex.W = value;
}

/// {@category Struct}
@Packed(1)
class USB_DEVICE_CAPABILITY_BILLBOARD_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint8()
  external int bDevCapabilityType;

  @Uint8()
  external int iAddtionalInfoURL;

  @Uint8()
  external int bNumberOfAlternateModes;

  @Uint8()
  external int bPreferredAlternateMode;

  external _USB_DEVICE_CAPABILITY_BILLBOARD_DESCRIPTOR__VconnPower_e__Union
      VconnPower;

  @Array(32)
  external Array<Uint8> bmConfigured;

  @Uint32()
  external int bReserved;

  @Array(1)
  external Array<
          _USB_DEVICE_CAPABILITY_BILLBOARD_DESCRIPTOR__Anonymous_e__Struct>
      AlternateMode;
}

/// {@category Struct}
@Packed(1)
class _USB_DEVICE_CAPABILITY_BILLBOARD_DESCRIPTOR__VconnPower_e__Union
    extends Union {
  @Uint16()
  external int AsUshort;

  external _USB_DEVICE_CAPABILITY_BILLBOARD_DESCRIPTOR__VconnPower_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_DEVICE_CAPABILITY_BILLBOARD_DESCRIPTOR__VconnPower_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint16()
  external int bitfield;
}

extension USB_DEVICE_CAPABILITY_BILLBOARD_DESCRIPTOR__VconnPower_e__Union_Extension
    on USB_DEVICE_CAPABILITY_BILLBOARD_DESCRIPTOR {
  int get bitfield => this.VconnPower.Anonymous.bitfield;
  set bitfield(int value) => this.VconnPower.Anonymous.bitfield = value;
}

extension USB_DEVICE_CAPABILITY_BILLBOARD_DESCRIPTOR_Extension
    on USB_DEVICE_CAPABILITY_BILLBOARD_DESCRIPTOR {
  int get AsUshort => this.VconnPower.AsUshort;
  set AsUshort(int value) => this.VconnPower.AsUshort = value;

  _USB_DEVICE_CAPABILITY_BILLBOARD_DESCRIPTOR__VconnPower_e__Union__Anonymous_e__Struct
      get Anonymous => this.VconnPower.Anonymous;
  set Anonymous(
          _USB_DEVICE_CAPABILITY_BILLBOARD_DESCRIPTOR__VconnPower_e__Union__Anonymous_e__Struct
              value) =>
      this.VconnPower.Anonymous = value;
}

/// {@category Struct}
@Packed(1)
class _USB_DEVICE_CAPABILITY_BILLBOARD_DESCRIPTOR__Anonymous_e__Struct
    extends Struct {
  @Uint16()
  external int wSVID;

  @Uint8()
  external int bAlternateMode;

  @Uint8()
  external int iAlternateModeSetting;
}

/// {@category Struct}
class USB_DEVICE_CAPABILITY_CONTAINER_ID_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint8()
  external int bDevCapabilityType;

  @Uint8()
  external int bReserved;

  @Array(16)
  external Array<Uint8> ContainerID;
}

/// {@category Struct}
class USB_DEVICE_CAPABILITY_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint8()
  external int bDevCapabilityType;
}

/// {@category Struct}
@Packed(1)
class USB_DEVICE_CAPABILITY_FIRMWARE_STATUS_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint8()
  external int bDevCapabilityType;

  @Uint8()
  external int bcdDescriptorVersion;

  external _USB_DEVICE_CAPABILITY_FIRMWARE_STATUS_DESCRIPTOR__bmAttributes_e__Union
      bmAttributes;
}

/// {@category Struct}
@Packed(1)
class _USB_DEVICE_CAPABILITY_FIRMWARE_STATUS_DESCRIPTOR__bmAttributes_e__Union
    extends Union {
  @Uint32()
  external int AsUlong;

  external _USB_DEVICE_CAPABILITY_FIRMWARE_STATUS_DESCRIPTOR__bmAttributes_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_DEVICE_CAPABILITY_FIRMWARE_STATUS_DESCRIPTOR__bmAttributes_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension USB_DEVICE_CAPABILITY_FIRMWARE_STATUS_DESCRIPTOR__bmAttributes_e__Union_Extension
    on USB_DEVICE_CAPABILITY_FIRMWARE_STATUS_DESCRIPTOR {
  int get bitfield => this.bmAttributes.Anonymous.bitfield;
  set bitfield(int value) => this.bmAttributes.Anonymous.bitfield = value;
}

extension USB_DEVICE_CAPABILITY_FIRMWARE_STATUS_DESCRIPTOR_Extension
    on USB_DEVICE_CAPABILITY_FIRMWARE_STATUS_DESCRIPTOR {
  int get AsUlong => this.bmAttributes.AsUlong;
  set AsUlong(int value) => this.bmAttributes.AsUlong = value;

  _USB_DEVICE_CAPABILITY_FIRMWARE_STATUS_DESCRIPTOR__bmAttributes_e__Union__Anonymous_e__Struct
      get Anonymous => this.bmAttributes.Anonymous;
  set Anonymous(
          _USB_DEVICE_CAPABILITY_FIRMWARE_STATUS_DESCRIPTOR__bmAttributes_e__Union__Anonymous_e__Struct
              value) =>
      this.bmAttributes.Anonymous = value;
}

/// {@category Struct}
@Packed(1)
class USB_DEVICE_CAPABILITY_PD_CONSUMER_PORT_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint8()
  external int bDevCapabilityType;

  @Uint8()
  external int bReserved;

  external _USB_DEVICE_CAPABILITY_PD_CONSUMER_PORT_DESCRIPTOR__bmCapabilities_e__Union
      bmCapabilities;

  @Uint16()
  external int wMinVoltage;

  @Uint16()
  external int wMaxVoltage;

  @Uint16()
  external int wReserved;

  @Uint32()
  external int dwMaxOperatingPower;

  @Uint32()
  external int dwMaxPeakPower;

  @Uint32()
  external int dwMaxPeakPowerTime;
}

/// {@category Struct}
@Packed(1)
class _USB_DEVICE_CAPABILITY_PD_CONSUMER_PORT_DESCRIPTOR__bmCapabilities_e__Union
    extends Union {
  @Uint16()
  external int AsUshort;

  external _USB_DEVICE_CAPABILITY_PD_CONSUMER_PORT_DESCRIPTOR__bmCapabilities_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_DEVICE_CAPABILITY_PD_CONSUMER_PORT_DESCRIPTOR__bmCapabilities_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint16()
  external int bitfield;
}

extension USB_DEVICE_CAPABILITY_PD_CONSUMER_PORT_DESCRIPTOR__bmCapabilities_e__Union_Extension
    on USB_DEVICE_CAPABILITY_PD_CONSUMER_PORT_DESCRIPTOR {
  int get bitfield => this.bmCapabilities.Anonymous.bitfield;
  set bitfield(int value) => this.bmCapabilities.Anonymous.bitfield = value;
}

extension USB_DEVICE_CAPABILITY_PD_CONSUMER_PORT_DESCRIPTOR_Extension
    on USB_DEVICE_CAPABILITY_PD_CONSUMER_PORT_DESCRIPTOR {
  int get AsUshort => this.bmCapabilities.AsUshort;
  set AsUshort(int value) => this.bmCapabilities.AsUshort = value;

  _USB_DEVICE_CAPABILITY_PD_CONSUMER_PORT_DESCRIPTOR__bmCapabilities_e__Union__Anonymous_e__Struct
      get Anonymous => this.bmCapabilities.Anonymous;
  set Anonymous(
          _USB_DEVICE_CAPABILITY_PD_CONSUMER_PORT_DESCRIPTOR__bmCapabilities_e__Union__Anonymous_e__Struct
              value) =>
      this.bmCapabilities.Anonymous = value;
}

/// {@category Struct}
class USB_DEVICE_CAPABILITY_PLATFORM_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint8()
  external int bDevCapabilityType;

  @Uint8()
  external int bReserved;

  external GUID PlatformCapabilityUuid;

  @Array(1)
  external Array<Uint8> CapabililityData;
}

/// {@category Struct}
@Packed(1)
class USB_DEVICE_CAPABILITY_POWER_DELIVERY_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint8()
  external int bDevCapabilityType;

  @Uint8()
  external int bReserved;

  external _USB_DEVICE_CAPABILITY_POWER_DELIVERY_DESCRIPTOR__bmAttributes_e__Union
      bmAttributes;

  @Uint16()
  external int bmProviderPorts;

  @Uint16()
  external int bmConsumerPorts;

  @Uint16()
  external int bcdBCVersion;

  @Uint16()
  external int bcdPDVersion;

  @Uint16()
  external int bcdUSBTypeCVersion;
}

/// {@category Struct}
@Packed(1)
class _USB_DEVICE_CAPABILITY_POWER_DELIVERY_DESCRIPTOR__bmAttributes_e__Union
    extends Union {
  @Uint32()
  external int AsUlong;

  external _USB_DEVICE_CAPABILITY_POWER_DELIVERY_DESCRIPTOR__bmAttributes_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_DEVICE_CAPABILITY_POWER_DELIVERY_DESCRIPTOR__bmAttributes_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension USB_DEVICE_CAPABILITY_POWER_DELIVERY_DESCRIPTOR__bmAttributes_e__Union_Extension
    on USB_DEVICE_CAPABILITY_POWER_DELIVERY_DESCRIPTOR {
  int get bitfield => this.bmAttributes.Anonymous.bitfield;
  set bitfield(int value) => this.bmAttributes.Anonymous.bitfield = value;
}

extension USB_DEVICE_CAPABILITY_POWER_DELIVERY_DESCRIPTOR_Extension
    on USB_DEVICE_CAPABILITY_POWER_DELIVERY_DESCRIPTOR {
  int get AsUlong => this.bmAttributes.AsUlong;
  set AsUlong(int value) => this.bmAttributes.AsUlong = value;

  _USB_DEVICE_CAPABILITY_POWER_DELIVERY_DESCRIPTOR__bmAttributes_e__Union__Anonymous_e__Struct
      get Anonymous => this.bmAttributes.Anonymous;
  set Anonymous(
          _USB_DEVICE_CAPABILITY_POWER_DELIVERY_DESCRIPTOR__bmAttributes_e__Union__Anonymous_e__Struct
              value) =>
      this.bmAttributes.Anonymous = value;
}

/// {@category Struct}
@Packed(1)
class USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_SPEED extends Union {
  @Uint32()
  external int AsUlong32;

  external _USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_SPEED__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_SPEED__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_SPEED_Extension
    on USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_SPEED {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
@Packed(1)
class USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint8()
  external int bDevCapabilityType;

  @Uint8()
  external int bReserved;

  external _USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR__bmAttributes_e__Union
      bmAttributes;

  external _USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR__wFunctionalitySupport_e__Union
      wFunctionalitySupport;

  @Uint16()
  external int wReserved;

  @Array(1)
  external Array<USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_SPEED> bmSublinkSpeedAttr;
}

/// {@category Struct}
@Packed(1)
class _USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR__bmAttributes_e__Union
    extends Union {
  @Uint32()
  external int AsUlong;

  external _USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR__bmAttributes_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR__bmAttributes_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR__bmAttributes_e__Union_Extension
    on USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR {
  int get bitfield => this.bmAttributes.Anonymous.bitfield;
  set bitfield(int value) => this.bmAttributes.Anonymous.bitfield = value;
}

extension USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR_Extension
    on USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR {
  int get AsUlong => this.bmAttributes.AsUlong;
  set AsUlong(int value) => this.bmAttributes.AsUlong = value;

  _USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR__bmAttributes_e__Union__Anonymous_e__Struct
      get Anonymous => this.bmAttributes.Anonymous;
  set Anonymous(
          _USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR__bmAttributes_e__Union__Anonymous_e__Struct
              value) =>
      this.bmAttributes.Anonymous = value;
}

/// {@category Struct}
@Packed(1)
class _USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR__wFunctionalitySupport_e__Union
    extends Union {
  @Uint16()
  external int AsUshort;

  external _USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR__wFunctionalitySupport_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR__wFunctionalitySupport_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint16()
  external int bitfield;
}

extension USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR__wFunctionalitySupport_e__Union_Extension
    on USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR {
  int get bitfield => this.wFunctionalitySupport.Anonymous.bitfield;
  set bitfield(int value) =>
      this.wFunctionalitySupport.Anonymous.bitfield = value;
}

extension USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR_Extension_1
    on USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR {
  int get AsUshort => this.wFunctionalitySupport.AsUshort;
  set AsUshort(int value) => this.wFunctionalitySupport.AsUshort = value;

  _USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR__wFunctionalitySupport_e__Union__Anonymous_e__Struct
      get Anonymous => this.wFunctionalitySupport.Anonymous;
  set Anonymous(
          _USB_DEVICE_CAPABILITY_SUPERSPEEDPLUS_USB_DESCRIPTOR__wFunctionalitySupport_e__Union__Anonymous_e__Struct
              value) =>
      this.wFunctionalitySupport.Anonymous = value;
}

/// {@category Struct}
@Packed(1)
class USB_DEVICE_CAPABILITY_SUPERSPEED_USB_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint8()
  external int bDevCapabilityType;

  @Uint8()
  external int bmAttributes;

  @Uint16()
  external int wSpeedsSupported;

  @Uint8()
  external int bFunctionalitySupport;

  @Uint8()
  external int bU1DevExitLat;

  @Uint16()
  external int wU2DevExitLat;
}

/// {@category Struct}
@Packed(1)
class USB_DEVICE_CAPABILITY_USB20_EXTENSION_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint8()
  external int bDevCapabilityType;

  external _USB_DEVICE_CAPABILITY_USB20_EXTENSION_DESCRIPTOR__bmAttributes_e__Union
      bmAttributes;
}

/// {@category Struct}
@Packed(1)
class _USB_DEVICE_CAPABILITY_USB20_EXTENSION_DESCRIPTOR__bmAttributes_e__Union
    extends Union {
  @Uint32()
  external int AsUlong;

  external _USB_DEVICE_CAPABILITY_USB20_EXTENSION_DESCRIPTOR__bmAttributes_e__Union__Anonymous_e__Struct
      Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_DEVICE_CAPABILITY_USB20_EXTENSION_DESCRIPTOR__bmAttributes_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension USB_DEVICE_CAPABILITY_USB20_EXTENSION_DESCRIPTOR__bmAttributes_e__Union_Extension
    on USB_DEVICE_CAPABILITY_USB20_EXTENSION_DESCRIPTOR {
  int get bitfield => this.bmAttributes.Anonymous.bitfield;
  set bitfield(int value) => this.bmAttributes.Anonymous.bitfield = value;
}

extension USB_DEVICE_CAPABILITY_USB20_EXTENSION_DESCRIPTOR_Extension
    on USB_DEVICE_CAPABILITY_USB20_EXTENSION_DESCRIPTOR {
  int get AsUlong => this.bmAttributes.AsUlong;
  set AsUlong(int value) => this.bmAttributes.AsUlong = value;

  _USB_DEVICE_CAPABILITY_USB20_EXTENSION_DESCRIPTOR__bmAttributes_e__Union__Anonymous_e__Struct
      get Anonymous => this.bmAttributes.Anonymous;
  set Anonymous(
          _USB_DEVICE_CAPABILITY_USB20_EXTENSION_DESCRIPTOR__bmAttributes_e__Union__Anonymous_e__Struct
              value) =>
      this.bmAttributes.Anonymous = value;
}

/// {@category Struct}
@Packed(1)
class USB_DEVICE_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint16()
  external int bcdUSB;

  @Uint8()
  external int bDeviceClass;

  @Uint8()
  external int bDeviceSubClass;

  @Uint8()
  external int bDeviceProtocol;

  @Uint8()
  external int bMaxPacketSize0;

  @Uint16()
  external int idVendor;

  @Uint16()
  external int idProduct;

  @Uint16()
  external int bcdDevice;

  @Uint8()
  external int iManufacturer;

  @Uint8()
  external int iProduct;

  @Uint8()
  external int iSerialNumber;

  @Uint8()
  external int bNumConfigurations;
}

/// {@category Struct}
@Packed(1)
class USB_DEVICE_QUALIFIER_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint16()
  external int bcdUSB;

  @Uint8()
  external int bDeviceClass;

  @Uint8()
  external int bDeviceSubClass;

  @Uint8()
  external int bDeviceProtocol;

  @Uint8()
  external int bMaxPacketSize0;

  @Uint8()
  external int bNumConfigurations;

  @Uint8()
  external int bReserved;
}

/// {@category Struct}
@Packed(1)
class USB_DEVICE_STATUS extends Union {
  @Uint16()
  external int AsUshort16;

  external _USB_DEVICE_STATUS__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_DEVICE_STATUS__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int bitfield;
}

extension USB_DEVICE_STATUS_Extension on USB_DEVICE_STATUS {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class USB_DRIVER_VERSION_PARAMETERS extends Struct {
  @Uint32()
  external int DriverTrackingCode;

  @Uint32()
  external int USBDI_Version;

  @Uint32()
  external int USBUSER_Version;

  @Uint8()
  external int CheckedPortDriver;

  @Uint8()
  external int CheckedMiniportDriver;

  @Uint16()
  external int USB_Version;
}

/// {@category Struct}
@Packed(1)
class USB_ENDPOINT_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint8()
  external int bEndpointAddress;

  @Uint8()
  external int bmAttributes;

  @Uint16()
  external int wMaxPacketSize;

  @Uint8()
  external int bInterval;
}

/// {@category Struct}
@Packed(1)
class USB_ENDPOINT_STATUS extends Union {
  @Uint16()
  external int AsUshort16;

  external _USB_ENDPOINT_STATUS__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_ENDPOINT_STATUS__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int bitfield;
}

extension USB_ENDPOINT_STATUS_Extension on USB_ENDPOINT_STATUS {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
class USB_FRAME_NUMBER_AND_QPC_FOR_TIME_SYNC_INFORMATION extends Struct {
  @IntPtr()
  external int TimeTrackingHandle;

  @Uint32()
  external int InputFrameNumber;

  @Uint32()
  external int InputMicroFrameNumber;

  @Int64()
  external int QueryPerformanceCounterAtInputFrameOrMicroFrame;

  @Int64()
  external int QueryPerformanceCounterFrequency;

  @Uint32()
  external int PredictedAccuracyInMicroSeconds;

  @Uint32()
  external int CurrentGenerationID;

  @Int64()
  external int CurrentQueryPerformanceCounter;

  @Uint32()
  external int CurrentHardwareFrameNumber;

  @Uint32()
  external int CurrentHardwareMicroFrameNumber;

  @Uint32()
  external int CurrentUSBFrameNumber;
}

/// {@category Struct}
class USB_FUNCTION_SUSPEND_OPTIONS extends Union {
  @Uint8()
  external int AsUchar;

  external _USB_FUNCTION_SUSPEND_OPTIONS__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _USB_FUNCTION_SUSPEND_OPTIONS__Anonymous_e__Struct extends Struct {
  @Uint8()
  external int bitfield;
}

extension USB_FUNCTION_SUSPEND_OPTIONS_Extension
    on USB_FUNCTION_SUSPEND_OPTIONS {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
@Packed(1)
class USB_HIGH_SPEED_MAXPACKET extends Union {
  @Uint16()
  external int us;
}

/// {@category Struct}
class USB_HUB_30_PORT_REMOTE_WAKE_MASK extends Union {
  @Uint8()
  external int AsUchar8;

  external _USB_HUB_30_PORT_REMOTE_WAKE_MASK__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
class _USB_HUB_30_PORT_REMOTE_WAKE_MASK__Anonymous_e__Struct extends Struct {
  @Uint8()
  external int bitfield;
}

extension USB_HUB_30_PORT_REMOTE_WAKE_MASK_Extension
    on USB_HUB_30_PORT_REMOTE_WAKE_MASK {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
@Packed(1)
class USB_HUB_CHANGE extends Union {
  @Uint16()
  external int AsUshort16;

  external _USB_HUB_CHANGE__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_HUB_CHANGE__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int bitfield;
}

extension USB_HUB_CHANGE_Extension on USB_HUB_CHANGE {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
@Packed(1)
class USB_HUB_DESCRIPTOR extends Struct {
  @Uint8()
  external int bDescriptorLength;

  @Uint8()
  external int bDescriptorType;

  @Uint8()
  external int bNumberOfPorts;

  @Uint16()
  external int wHubCharacteristics;

  @Uint8()
  external int bPowerOnToPowerGood;

  @Uint8()
  external int bHubControlCurrent;

  @Array(64)
  external Array<Uint8> bRemoveAndPowerMask;
}

/// {@category Struct}
@Packed(1)
class USB_HUB_STATUS extends Union {
  @Uint16()
  external int AsUshort16;

  external _USB_HUB_STATUS__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_HUB_STATUS__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int bitfield;
}

extension USB_HUB_STATUS_Extension on USB_HUB_STATUS {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
@Packed(1)
class USB_HUB_STATUS_AND_CHANGE extends Union {
  @Uint32()
  external int AsUlong32;

  external _USB_HUB_STATUS_AND_CHANGE__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_HUB_STATUS_AND_CHANGE__Anonymous_e__Struct extends Struct {
  external USB_HUB_STATUS HubStatus;

  external USB_HUB_CHANGE HubChange;
}

extension USB_HUB_STATUS_AND_CHANGE_Extension on USB_HUB_STATUS_AND_CHANGE {
  USB_HUB_STATUS get HubStatus => this.Anonymous.HubStatus;
  set HubStatus(USB_HUB_STATUS value) => this.Anonymous.HubStatus = value;

  USB_HUB_CHANGE get HubChange => this.Anonymous.HubChange;
  set HubChange(USB_HUB_CHANGE value) => this.Anonymous.HubChange = value;
}

/// {@category Struct}
class USB_IDLE_CALLBACK_INFO extends Struct {
  external Pointer<NativeFunction<USB_IDLE_CALLBACK>> IdleCallback;

  external Pointer IdleContext;
}

/// {@category Struct}
class USB_INTERFACE_ASSOCIATION_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint8()
  external int bFirstInterface;

  @Uint8()
  external int bInterfaceCount;

  @Uint8()
  external int bFunctionClass;

  @Uint8()
  external int bFunctionSubClass;

  @Uint8()
  external int bFunctionProtocol;

  @Uint8()
  external int iFunction;
}

/// {@category Struct}
class USB_INTERFACE_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint8()
  external int bInterfaceNumber;

  @Uint8()
  external int bAlternateSetting;

  @Uint8()
  external int bNumEndpoints;

  @Uint8()
  external int bInterfaceClass;

  @Uint8()
  external int bInterfaceSubClass;

  @Uint8()
  external int bInterfaceProtocol;

  @Uint8()
  external int iInterface;
}

/// {@category Struct}
@Packed(1)
class USB_INTERFACE_POWER_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint8()
  external int bmCapabilitiesFlags;

  @Uint8()
  external int bBusPowerSavingD1;

  @Uint8()
  external int bSelfPowerSavingD1;

  @Uint8()
  external int bBusPowerSavingD2;

  @Uint8()
  external int bSelfPowerSavingD2;

  @Uint8()
  external int bBusPowerSavingD3;

  @Uint8()
  external int bSelfPowerSavingD3;

  @Uint16()
  external int TransitionTimeFromD1;

  @Uint16()
  external int TransitionTimeFromD2;

  @Uint16()
  external int TransitionTimeFromD3;
}

/// {@category Struct}
@Packed(1)
class USB_INTERFACE_STATUS extends Union {
  @Uint16()
  external int AsUshort16;

  external _USB_INTERFACE_STATUS__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_INTERFACE_STATUS__Anonymous_e__Struct extends Struct {
  @Uint16()
  external int bitfield;
}

extension USB_INTERFACE_STATUS_Extension on USB_INTERFACE_STATUS {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
@Packed(1)
class USB_OPEN_RAW_DEVICE_PARAMETERS extends Struct {
  @Uint16()
  external int PortStatus;

  @Uint16()
  external int MaxPacketEp0;
}

/// {@category Struct}
class USB_PASS_THRU_PARAMETERS extends Struct {
  external GUID FunctionGUID;

  @Uint32()
  external int ParameterLength;

  @Array(4)
  external Array<Uint8> Parameters;
}

/// {@category Struct}
@Packed(1)
class USB_PORT_CHANGE extends Union {
  @Uint16()
  external int AsUshort16;

  external USB_20_PORT_CHANGE Usb20PortChange;

  external USB_30_PORT_CHANGE Usb30PortChange;
}

/// {@category Struct}
@Packed(1)
class USB_PORT_EXT_STATUS extends Union {
  @Uint32()
  external int AsUlong32;

  external _USB_PORT_EXT_STATUS__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_PORT_EXT_STATUS__Anonymous_e__Struct extends Struct {
  @Uint32()
  external int bitfield;
}

extension USB_PORT_EXT_STATUS_Extension on USB_PORT_EXT_STATUS {
  int get bitfield => this.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.bitfield = value;
}

/// {@category Struct}
@Packed(1)
class USB_PORT_EXT_STATUS_AND_CHANGE extends Union {
  @Uint64()
  external int AsUlong64;

  external _USB_PORT_EXT_STATUS_AND_CHANGE__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_PORT_EXT_STATUS_AND_CHANGE__Anonymous_e__Struct extends Struct {
  external USB_PORT_STATUS_AND_CHANGE PortStatusChange;

  external USB_PORT_EXT_STATUS PortExtStatus;
}

extension USB_PORT_EXT_STATUS_AND_CHANGE_Extension
    on USB_PORT_EXT_STATUS_AND_CHANGE {
  USB_PORT_STATUS_AND_CHANGE get PortStatusChange =>
      this.Anonymous.PortStatusChange;
  set PortStatusChange(USB_PORT_STATUS_AND_CHANGE value) =>
      this.Anonymous.PortStatusChange = value;

  USB_PORT_EXT_STATUS get PortExtStatus => this.Anonymous.PortExtStatus;
  set PortExtStatus(USB_PORT_EXT_STATUS value) =>
      this.Anonymous.PortExtStatus = value;
}

/// {@category Struct}
@Packed(1)
class USB_PORT_STATUS extends Union {
  @Uint16()
  external int AsUshort16;

  external USB_20_PORT_STATUS Usb20PortStatus;

  external USB_30_PORT_STATUS Usb30PortStatus;
}

/// {@category Struct}
@Packed(1)
class USB_PORT_STATUS_AND_CHANGE extends Union {
  @Uint32()
  external int AsUlong32;

  external _USB_PORT_STATUS_AND_CHANGE__Anonymous_e__Struct Anonymous;
}

/// {@category Struct}
@Packed(1)
class _USB_PORT_STATUS_AND_CHANGE__Anonymous_e__Struct extends Struct {
  external USB_PORT_STATUS PortStatus;

  external USB_PORT_CHANGE PortChange;
}

extension USB_PORT_STATUS_AND_CHANGE_Extension on USB_PORT_STATUS_AND_CHANGE {
  USB_PORT_STATUS get PortStatus => this.Anonymous.PortStatus;
  set PortStatus(USB_PORT_STATUS value) => this.Anonymous.PortStatus = value;

  USB_PORT_CHANGE get PortChange => this.Anonymous.PortChange;
  set PortChange(USB_PORT_CHANGE value) => this.Anonymous.PortChange = value;
}

/// {@category Struct}
class USB_POWER_INFO extends Struct {
  @Int32()
  external int SystemState;

  @Int32()
  external int HcDevicePowerState;

  @Int32()
  external int HcDeviceWake;

  @Int32()
  external int HcSystemWake;

  @Int32()
  external int RhDevicePowerState;

  @Int32()
  external int RhDeviceWake;

  @Int32()
  external int RhSystemWake;

  @Int32()
  external int LastSystemSleepState;

  @Uint8()
  external int CanWakeup;

  @Uint8()
  external int IsPowered;
}

/// {@category Struct}
@Packed(1)
class USB_SEND_RAW_COMMAND_PARAMETERS extends Struct {
  @Uint8()
  external int Usb_bmRequest;

  @Uint8()
  external int Usb_bRequest;

  @Uint16()
  external int Usb_wVlaue;

  @Uint16()
  external int Usb_wIndex;

  @Uint16()
  external int Usb_wLength;

  @Uint16()
  external int DeviceAddress;

  @Uint16()
  external int MaximumPacketSize;

  @Uint32()
  external int Timeout;

  @Uint32()
  external int DataLength;

  @Int32()
  external int UsbdStatusCode;

  @Array(4)
  external Array<Uint8> Data;
}

/// {@category Struct}
class USB_START_TRACKING_FOR_TIME_SYNC_INFORMATION extends Struct {
  @IntPtr()
  external int TimeTrackingHandle;

  @Uint8()
  external int IsStartupDelayTolerable;
}

/// {@category Struct}
class USB_STOP_TRACKING_FOR_TIME_SYNC_INFORMATION extends Struct {
  @IntPtr()
  external int TimeTrackingHandle;
}

/// {@category Struct}
@Packed(1)
class USB_STRING_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Array(1)
  external Array<Uint16> _bString;

  String get bString {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_bString[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set bString(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _bString[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
@Packed(1)
class USB_SUPERSPEEDPLUS_ISOCH_ENDPOINT_COMPANION_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint16()
  external int wReserved;

  @Uint32()
  external int dwBytesPerInterval;
}

/// {@category Struct}
class USB_SUPERSPEED_ENDPOINT_COMPANION_DESCRIPTOR extends Struct {
  @Uint8()
  external int bLength;

  @Uint8()
  external int bDescriptorType;

  @Uint8()
  external int bMaxBurst;

  external _USB_SUPERSPEED_ENDPOINT_COMPANION_DESCRIPTOR__bmAttributes_e__Union
      bmAttributes;

  @Uint16()
  external int wBytesPerInterval;
}

/// {@category Struct}
class _USB_SUPERSPEED_ENDPOINT_COMPANION_DESCRIPTOR__bmAttributes_e__Union
    extends Union {
  @Uint8()
  external int AsUchar;

  external _USB_SUPERSPEED_ENDPOINT_COMPANION_DESCRIPTOR__bmAttributes_e__Union__Bulk_e__Struct
      Bulk;

  external _USB_SUPERSPEED_ENDPOINT_COMPANION_DESCRIPTOR__bmAttributes_e__Union__Isochronous_e__Struct
      Isochronous;
}

/// {@category Struct}
class _USB_SUPERSPEED_ENDPOINT_COMPANION_DESCRIPTOR__bmAttributes_e__Union__Bulk_e__Struct
    extends Struct {
  @Uint8()
  external int bitfield;
}

extension USB_SUPERSPEED_ENDPOINT_COMPANION_DESCRIPTOR__bmAttributes_e__Union_Extension
    on USB_SUPERSPEED_ENDPOINT_COMPANION_DESCRIPTOR {
  int get bitfield => this.bmAttributes.Bulk.bitfield;
  set bitfield(int value) => this.bmAttributes.Bulk.bitfield = value;
}

/// {@category Struct}
class _USB_SUPERSPEED_ENDPOINT_COMPANION_DESCRIPTOR__bmAttributes_e__Union__Isochronous_e__Struct
    extends Struct {
  @Uint8()
  external int bitfield;
}

extension USB_SUPERSPEED_ENDPOINT_COMPANION_DESCRIPTOR__bmAttributes_e__Union_Extension_1
    on USB_SUPERSPEED_ENDPOINT_COMPANION_DESCRIPTOR {
  int get bitfield => this.bmAttributes.Isochronous.bitfield;
  set bitfield(int value) => this.bmAttributes.Isochronous.bitfield = value;
}

extension USB_SUPERSPEED_ENDPOINT_COMPANION_DESCRIPTOR_Extension
    on USB_SUPERSPEED_ENDPOINT_COMPANION_DESCRIPTOR {
  int get AsUchar => this.bmAttributes.AsUchar;
  set AsUchar(int value) => this.bmAttributes.AsUchar = value;

  _USB_SUPERSPEED_ENDPOINT_COMPANION_DESCRIPTOR__bmAttributes_e__Union__Bulk_e__Struct
      get Bulk => this.bmAttributes.Bulk;
  set Bulk(
          _USB_SUPERSPEED_ENDPOINT_COMPANION_DESCRIPTOR__bmAttributes_e__Union__Bulk_e__Struct
              value) =>
      this.bmAttributes.Bulk = value;

  _USB_SUPERSPEED_ENDPOINT_COMPANION_DESCRIPTOR__bmAttributes_e__Union__Isochronous_e__Struct
      get Isochronous => this.bmAttributes.Isochronous;
  set Isochronous(
          _USB_SUPERSPEED_ENDPOINT_COMPANION_DESCRIPTOR__bmAttributes_e__Union__Isochronous_e__Struct
              value) =>
      this.bmAttributes.Isochronous = value;
}

/// {@category Struct}
@Packed(1)
class USB_UNICODE_NAME extends Struct {
  @Uint32()
  external int Length;

  @Array(1)
  external Array<Uint16> _$String;

  String get $String {
    final charCodes = <int>[];
    for (var i = 0; i < 1; i++) {
      charCodes.add(_$String[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set $String(String value) {
    final stringToStore = value.padRight(1, '\x00');
    for (var i = 0; i < 1; i++) {
      _$String[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class USB_USB2HW_VERSION_PARAMETERS extends Struct {
  @Uint8()
  external int Usb2HwRevision;
}

/// {@category Struct}
class WINUSB_PIPE_INFORMATION extends Struct {
  @Int32()
  external int PipeType;

  @Uint8()
  external int PipeId;

  @Uint16()
  external int MaximumPacketSize;

  @Uint8()
  external int Interval;
}

/// {@category Struct}
class WINUSB_PIPE_INFORMATION_EX extends Struct {
  @Int32()
  external int PipeType;

  @Uint8()
  external int PipeId;

  @Uint16()
  external int MaximumPacketSize;

  @Uint8()
  external int Interval;

  @Uint32()
  external int MaximumBytesPerInterval;
}

/// {@category Struct}
@Packed(1)
class WINUSB_SETUP_PACKET extends Struct {
  @Uint8()
  external int RequestType;

  @Uint8()
  external int Request;

  @Uint16()
  external int Value;

  @Uint16()
  external int Index;

  @Uint16()
  external int Length;
}

/// {@category Struct}
class URB_BULK_OR_INTERRUPT_TRANSFER extends Struct {
  external URB_HEADER Hdr;

  external Pointer PipeHandle;

  @Uint32()
  external int TransferFlags;

  @Uint32()
  external int TransferBufferLength;

  external Pointer TransferBuffer;

  external Pointer TransferBufferMDL;

  external Pointer<URB> UrbLink;

  external URB_HCD_AREA hca;
}

/// {@category Struct}
class URB_CONTROL_DESCRIPTOR_REQUEST extends Struct {
  external URB_HEADER Hdr;

  external Pointer Reserved;

  @Uint32()
  external int Reserved0;

  @Uint32()
  external int TransferBufferLength;

  external Pointer TransferBuffer;

  external Pointer TransferBufferMDL;

  external Pointer<URB> UrbLink;

  external URB_HCD_AREA hca;

  @Uint16()
  external int Reserved1;

  @Uint8()
  external int Index;

  @Uint8()
  external int DescriptorType;

  @Uint16()
  external int LanguageId;

  @Uint16()
  external int Reserved2;
}

/// {@category Struct}
class URB_CONTROL_FEATURE_REQUEST extends Struct {
  external URB_HEADER Hdr;

  external Pointer Reserved;

  @Uint32()
  external int Reserved2;

  @Uint32()
  external int Reserved3;

  external Pointer Reserved4;

  external Pointer Reserved5;

  external Pointer<URB> UrbLink;

  external URB_HCD_AREA hca;

  @Uint16()
  external int Reserved0;

  @Uint16()
  external int FeatureSelector;

  @Uint16()
  external int Index;

  @Uint16()
  external int Reserved1;
}

/// {@category Struct}
class URB_CONTROL_GET_CONFIGURATION_REQUEST extends Struct {
  external URB_HEADER Hdr;

  external Pointer Reserved;

  @Uint32()
  external int Reserved0;

  @Uint32()
  external int TransferBufferLength;

  external Pointer TransferBuffer;

  external Pointer TransferBufferMDL;

  external Pointer<URB> UrbLink;

  external URB_HCD_AREA hca;

  @Array(8)
  external Array<Uint8> Reserved1;
}

/// {@category Struct}
class URB_CONTROL_GET_INTERFACE_REQUEST extends Struct {
  external URB_HEADER Hdr;

  external Pointer Reserved;

  @Uint32()
  external int Reserved0;

  @Uint32()
  external int TransferBufferLength;

  external Pointer TransferBuffer;

  external Pointer TransferBufferMDL;

  external Pointer<URB> UrbLink;

  external URB_HCD_AREA hca;

  @Array(4)
  external Array<Uint8> Reserved1;

  @Uint16()
  external int Interface;

  @Uint16()
  external int Reserved2;
}

/// {@category Struct}
class URB_CONTROL_GET_STATUS_REQUEST extends Struct {
  external URB_HEADER Hdr;

  external Pointer Reserved;

  @Uint32()
  external int Reserved0;

  @Uint32()
  external int TransferBufferLength;

  external Pointer TransferBuffer;

  external Pointer TransferBufferMDL;

  external Pointer<URB> UrbLink;

  external URB_HCD_AREA hca;

  @Array(4)
  external Array<Uint8> Reserved1;

  @Uint16()
  external int Index;

  @Uint16()
  external int Reserved2;
}

/// {@category Struct}
class URB_CONTROL_TRANSFER extends Struct {
  external URB_HEADER Hdr;

  external Pointer PipeHandle;

  @Uint32()
  external int TransferFlags;

  @Uint32()
  external int TransferBufferLength;

  external Pointer TransferBuffer;

  external Pointer TransferBufferMDL;

  external Pointer<URB> UrbLink;

  external URB_HCD_AREA hca;

  @Array(8)
  external Array<Uint8> SetupPacket;
}

/// {@category Struct}
class URB_CONTROL_TRANSFER_EX extends Struct {
  external URB_HEADER Hdr;

  external Pointer PipeHandle;

  @Uint32()
  external int TransferFlags;

  @Uint32()
  external int TransferBufferLength;

  external Pointer TransferBuffer;

  external Pointer TransferBufferMDL;

  @Uint32()
  external int Timeout;

  external URB_HCD_AREA hca;

  @Array(8)
  external Array<Uint8> SetupPacket;
}

/// {@category Struct}
class URB_CONTROL_VENDOR_OR_CLASS_REQUEST extends Struct {
  external URB_HEADER Hdr;

  external Pointer Reserved;

  @Uint32()
  external int TransferFlags;

  @Uint32()
  external int TransferBufferLength;

  external Pointer TransferBuffer;

  external Pointer TransferBufferMDL;

  external Pointer<URB> UrbLink;

  external URB_HCD_AREA hca;

  @Uint8()
  external int RequestTypeReservedBits;

  @Uint8()
  external int Request;

  @Uint16()
  external int Value;

  @Uint16()
  external int Index;

  @Uint16()
  external int Reserved1;
}

/// {@category Struct}
class URB_FRAME_LENGTH_CONTROL extends Struct {
  external URB_HEADER Hdr;
}

/// {@category Struct}
class URB_GET_CURRENT_FRAME_NUMBER extends Struct {
  external URB_HEADER Hdr;

  @Uint32()
  external int FrameNumber;
}

/// {@category Struct}
class URB_GET_FRAME_LENGTH extends Struct {
  external URB_HEADER Hdr;

  @Uint32()
  external int FrameLength;

  @Uint32()
  external int FrameNumber;
}

/// {@category Struct}
class URB_GET_ISOCH_PIPE_TRANSFER_PATH_DELAYS extends Struct {
  external URB_HEADER Hdr;

  external Pointer PipeHandle;

  @Uint32()
  external int MaximumSendPathDelayInMilliSeconds;

  @Uint32()
  external int MaximumCompletionPathDelayInMilliSeconds;
}

/// {@category Struct}
class URB_HCD_AREA extends Struct {
  @Array(8)
  external Array<Pointer> Reserved8;
}

/// {@category Struct}
class URB_HEADER extends Struct {
  @Uint16()
  external int Length;

  @Uint16()
  external int Function;

  @Int32()
  external int Status;

  external Pointer UsbdDeviceHandle;

  @Uint32()
  external int UsbdFlags;
}

/// {@category Struct}
class URB_ISOCH_TRANSFER extends Struct {
  external URB_HEADER Hdr;

  external Pointer PipeHandle;

  @Uint32()
  external int TransferFlags;

  @Uint32()
  external int TransferBufferLength;

  external Pointer TransferBuffer;

  external Pointer TransferBufferMDL;

  external Pointer<URB> UrbLink;

  external URB_HCD_AREA hca;

  @Uint32()
  external int StartFrame;

  @Uint32()
  external int NumberOfPackets;

  @Uint32()
  external int ErrorCount;

  @Array(1)
  external Array<USBD_ISO_PACKET_DESCRIPTOR> IsoPacket;
}

/// {@category Struct}
class URB_OPEN_STATIC_STREAMS extends Struct {
  external URB_HEADER Hdr;

  external Pointer PipeHandle;

  @Uint32()
  external int NumberOfStreams;

  @Uint16()
  external int StreamInfoVersion;

  @Uint16()
  external int StreamInfoSize;

  external Pointer<USBD_STREAM_INFORMATION> Streams;
}

/// {@category Struct}
class URB_OS_FEATURE_DESCRIPTOR_REQUEST extends Struct {
  external URB_HEADER Hdr;

  external Pointer Reserved;

  @Uint32()
  external int Reserved0;

  @Uint32()
  external int TransferBufferLength;

  external Pointer TransferBuffer;

  external Pointer TransferBufferMDL;

  external Pointer<URB> UrbLink;

  external URB_HCD_AREA hca;

  @Uint8()
  external int bitfield;

  @Uint8()
  external int Reserved2;

  @Uint8()
  external int InterfaceNumber;

  @Uint8()
  external int MS_PageIndex;

  @Uint16()
  external int MS_FeatureDescriptorIndex;

  @Uint16()
  external int Reserved3;
}

/// {@category Struct}
class URB_PIPE_REQUEST extends Struct {
  external URB_HEADER Hdr;

  external Pointer PipeHandle;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
class URB_SELECT_CONFIGURATION extends Struct {
  external URB_HEADER Hdr;

  external Pointer<USB_CONFIGURATION_DESCRIPTOR> ConfigurationDescriptor;

  external Pointer ConfigurationHandle;

  external USBD_INTERFACE_INFORMATION Interface;
}

/// {@category Struct}
class URB_SELECT_INTERFACE extends Struct {
  external URB_HEADER Hdr;

  external Pointer ConfigurationHandle;

  external USBD_INTERFACE_INFORMATION Interface;
}

/// {@category Struct}
class URB_SET_FRAME_LENGTH extends Struct {
  external URB_HEADER Hdr;

  @Int32()
  external int FrameLengthDelta;
}
