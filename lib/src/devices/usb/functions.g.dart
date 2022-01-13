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
import '../../devices/usb/structs.g.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// winusb.dll
// -----------------------------------------------------------------------
final _winusb = DynamicLibrary.open('winusb.dll');

int WinUsb_AbortPipe(
  Pointer InterfaceHandle,
  int PipeID,
) =>
    _WinUsb_AbortPipe(
      InterfaceHandle,
      PipeID,
    );

late final _WinUsb_AbortPipe = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Uint8 PipeID,
),
    int Function(
  Pointer InterfaceHandle,
  int PipeID,
)>('WinUsb_AbortPipe');

int WinUsb_ControlTransfer(
  Pointer InterfaceHandle,
  WINUSB_SETUP_PACKET SetupPacket,
  Pointer<Uint8> Buffer,
  int BufferLength,
  Pointer<Uint32> LengthTransferred,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _WinUsb_ControlTransfer(
      InterfaceHandle,
      SetupPacket,
      Buffer,
      BufferLength,
      LengthTransferred,
      Overlapped,
    );

late final _WinUsb_ControlTransfer = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  WINUSB_SETUP_PACKET SetupPacket,
  Pointer<Uint8> Buffer,
  Uint32 BufferLength,
  Pointer<Uint32> LengthTransferred,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  Pointer InterfaceHandle,
  WINUSB_SETUP_PACKET SetupPacket,
  Pointer<Uint8> Buffer,
  int BufferLength,
  Pointer<Uint32> LengthTransferred,
  Pointer<OVERLAPPED> Overlapped,
)>('WinUsb_ControlTransfer');

int WinUsb_FlushPipe(
  Pointer InterfaceHandle,
  int PipeID,
) =>
    _WinUsb_FlushPipe(
      InterfaceHandle,
      PipeID,
    );

late final _WinUsb_FlushPipe = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Uint8 PipeID,
),
    int Function(
  Pointer InterfaceHandle,
  int PipeID,
)>('WinUsb_FlushPipe');

int WinUsb_Free(
  Pointer InterfaceHandle,
) =>
    _WinUsb_Free(
      InterfaceHandle,
    );

late final _WinUsb_Free = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
),
    int Function(
  Pointer InterfaceHandle,
)>('WinUsb_Free');

int WinUsb_GetAdjustedFrameNumber(
  Pointer<Uint32> CurrentFrameNumber,
  int TimeStamp,
) =>
    _WinUsb_GetAdjustedFrameNumber(
      CurrentFrameNumber,
      TimeStamp,
    );

late final _WinUsb_GetAdjustedFrameNumber = _winusb.lookupFunction<
    Int32 Function(
  Pointer<Uint32> CurrentFrameNumber,
  Int64 TimeStamp,
),
    int Function(
  Pointer<Uint32> CurrentFrameNumber,
  int TimeStamp,
)>('WinUsb_GetAdjustedFrameNumber');

int WinUsb_GetAssociatedInterface(
  Pointer InterfaceHandle,
  int AssociatedInterfaceIndex,
  Pointer<Pointer> AssociatedInterfaceHandle,
) =>
    _WinUsb_GetAssociatedInterface(
      InterfaceHandle,
      AssociatedInterfaceIndex,
      AssociatedInterfaceHandle,
    );

late final _WinUsb_GetAssociatedInterface = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Uint8 AssociatedInterfaceIndex,
  Pointer<Pointer> AssociatedInterfaceHandle,
),
    int Function(
  Pointer InterfaceHandle,
  int AssociatedInterfaceIndex,
  Pointer<Pointer> AssociatedInterfaceHandle,
)>('WinUsb_GetAssociatedInterface');

int WinUsb_GetCurrentAlternateSetting(
  Pointer InterfaceHandle,
  Pointer<Uint8> SettingNumber,
) =>
    _WinUsb_GetCurrentAlternateSetting(
      InterfaceHandle,
      SettingNumber,
    );

late final _WinUsb_GetCurrentAlternateSetting = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Pointer<Uint8> SettingNumber,
),
    int Function(
  Pointer InterfaceHandle,
  Pointer<Uint8> SettingNumber,
)>('WinUsb_GetCurrentAlternateSetting');

int WinUsb_GetCurrentFrameNumber(
  Pointer InterfaceHandle,
  Pointer<Uint32> CurrentFrameNumber,
  Pointer<Int64> TimeStamp,
) =>
    _WinUsb_GetCurrentFrameNumber(
      InterfaceHandle,
      CurrentFrameNumber,
      TimeStamp,
    );

late final _WinUsb_GetCurrentFrameNumber = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Pointer<Uint32> CurrentFrameNumber,
  Pointer<Int64> TimeStamp,
),
    int Function(
  Pointer InterfaceHandle,
  Pointer<Uint32> CurrentFrameNumber,
  Pointer<Int64> TimeStamp,
)>('WinUsb_GetCurrentFrameNumber');

int WinUsb_GetCurrentFrameNumberAndQpc(
  Pointer InterfaceHandle,
  Pointer<USB_FRAME_NUMBER_AND_QPC_FOR_TIME_SYNC_INFORMATION> FrameQpcInfo,
) =>
    _WinUsb_GetCurrentFrameNumberAndQpc(
      InterfaceHandle,
      FrameQpcInfo,
    );

late final _WinUsb_GetCurrentFrameNumberAndQpc = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Pointer<USB_FRAME_NUMBER_AND_QPC_FOR_TIME_SYNC_INFORMATION> FrameQpcInfo,
),
    int Function(
  Pointer InterfaceHandle,
  Pointer<USB_FRAME_NUMBER_AND_QPC_FOR_TIME_SYNC_INFORMATION> FrameQpcInfo,
)>('WinUsb_GetCurrentFrameNumberAndQpc');

int WinUsb_GetDescriptor(
  Pointer InterfaceHandle,
  int DescriptorType,
  int Index,
  int LanguageID,
  Pointer<Uint8> Buffer,
  int BufferLength,
  Pointer<Uint32> LengthTransferred,
) =>
    _WinUsb_GetDescriptor(
      InterfaceHandle,
      DescriptorType,
      Index,
      LanguageID,
      Buffer,
      BufferLength,
      LengthTransferred,
    );

late final _WinUsb_GetDescriptor = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Uint8 DescriptorType,
  Uint8 Index,
  Uint16 LanguageID,
  Pointer<Uint8> Buffer,
  Uint32 BufferLength,
  Pointer<Uint32> LengthTransferred,
),
    int Function(
  Pointer InterfaceHandle,
  int DescriptorType,
  int Index,
  int LanguageID,
  Pointer<Uint8> Buffer,
  int BufferLength,
  Pointer<Uint32> LengthTransferred,
)>('WinUsb_GetDescriptor');

int WinUsb_GetOverlappedResult(
  Pointer InterfaceHandle,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  int bWait,
) =>
    _WinUsb_GetOverlappedResult(
      InterfaceHandle,
      lpOverlapped,
      lpNumberOfBytesTransferred,
      bWait,
    );

late final _WinUsb_GetOverlappedResult = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  Int32 bWait,
),
    int Function(
  Pointer InterfaceHandle,
  Pointer<OVERLAPPED> lpOverlapped,
  Pointer<Uint32> lpNumberOfBytesTransferred,
  int bWait,
)>('WinUsb_GetOverlappedResult');

int WinUsb_GetPipePolicy(
  Pointer InterfaceHandle,
  int PipeID,
  int PolicyType,
  Pointer<Uint32> ValueLength,
  Pointer Value,
) =>
    _WinUsb_GetPipePolicy(
      InterfaceHandle,
      PipeID,
      PolicyType,
      ValueLength,
      Value,
    );

late final _WinUsb_GetPipePolicy = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Uint8 PipeID,
  Uint32 PolicyType,
  Pointer<Uint32> ValueLength,
  Pointer Value,
),
    int Function(
  Pointer InterfaceHandle,
  int PipeID,
  int PolicyType,
  Pointer<Uint32> ValueLength,
  Pointer Value,
)>('WinUsb_GetPipePolicy');

int WinUsb_GetPowerPolicy(
  Pointer InterfaceHandle,
  int PolicyType,
  Pointer<Uint32> ValueLength,
  Pointer Value,
) =>
    _WinUsb_GetPowerPolicy(
      InterfaceHandle,
      PolicyType,
      ValueLength,
      Value,
    );

late final _WinUsb_GetPowerPolicy = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Uint32 PolicyType,
  Pointer<Uint32> ValueLength,
  Pointer Value,
),
    int Function(
  Pointer InterfaceHandle,
  int PolicyType,
  Pointer<Uint32> ValueLength,
  Pointer Value,
)>('WinUsb_GetPowerPolicy');

int WinUsb_Initialize(
  int DeviceHandle,
  Pointer<Pointer> InterfaceHandle,
) =>
    _WinUsb_Initialize(
      DeviceHandle,
      InterfaceHandle,
    );

late final _WinUsb_Initialize = _winusb.lookupFunction<
    Int32 Function(
  IntPtr DeviceHandle,
  Pointer<Pointer> InterfaceHandle,
),
    int Function(
  int DeviceHandle,
  Pointer<Pointer> InterfaceHandle,
)>('WinUsb_Initialize');

Pointer<USB_INTERFACE_DESCRIPTOR> WinUsb_ParseConfigurationDescriptor(
  Pointer<USB_CONFIGURATION_DESCRIPTOR> ConfigurationDescriptor,
  Pointer StartPosition,
  int InterfaceNumber,
  int AlternateSetting,
  int InterfaceClass,
  int InterfaceSubClass,
  int InterfaceProtocol,
) =>
    _WinUsb_ParseConfigurationDescriptor(
      ConfigurationDescriptor,
      StartPosition,
      InterfaceNumber,
      AlternateSetting,
      InterfaceClass,
      InterfaceSubClass,
      InterfaceProtocol,
    );

late final _WinUsb_ParseConfigurationDescriptor = _winusb.lookupFunction<
    Pointer<USB_INTERFACE_DESCRIPTOR> Function(
  Pointer<USB_CONFIGURATION_DESCRIPTOR> ConfigurationDescriptor,
  Pointer StartPosition,
  Int32 InterfaceNumber,
  Int32 AlternateSetting,
  Int32 InterfaceClass,
  Int32 InterfaceSubClass,
  Int32 InterfaceProtocol,
),
    Pointer<USB_INTERFACE_DESCRIPTOR> Function(
  Pointer<USB_CONFIGURATION_DESCRIPTOR> ConfigurationDescriptor,
  Pointer StartPosition,
  int InterfaceNumber,
  int AlternateSetting,
  int InterfaceClass,
  int InterfaceSubClass,
  int InterfaceProtocol,
)>('WinUsb_ParseConfigurationDescriptor');

Pointer<USB_COMMON_DESCRIPTOR> WinUsb_ParseDescriptors(
  Pointer DescriptorBuffer,
  int TotalLength,
  Pointer StartPosition,
  int DescriptorType,
) =>
    _WinUsb_ParseDescriptors(
      DescriptorBuffer,
      TotalLength,
      StartPosition,
      DescriptorType,
    );

late final _WinUsb_ParseDescriptors = _winusb.lookupFunction<
    Pointer<USB_COMMON_DESCRIPTOR> Function(
  Pointer DescriptorBuffer,
  Uint32 TotalLength,
  Pointer StartPosition,
  Int32 DescriptorType,
),
    Pointer<USB_COMMON_DESCRIPTOR> Function(
  Pointer DescriptorBuffer,
  int TotalLength,
  Pointer StartPosition,
  int DescriptorType,
)>('WinUsb_ParseDescriptors');

int WinUsb_QueryDeviceInformation(
  Pointer InterfaceHandle,
  int InformationType,
  Pointer<Uint32> BufferLength,
  Pointer Buffer,
) =>
    _WinUsb_QueryDeviceInformation(
      InterfaceHandle,
      InformationType,
      BufferLength,
      Buffer,
    );

late final _WinUsb_QueryDeviceInformation = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Uint32 InformationType,
  Pointer<Uint32> BufferLength,
  Pointer Buffer,
),
    int Function(
  Pointer InterfaceHandle,
  int InformationType,
  Pointer<Uint32> BufferLength,
  Pointer Buffer,
)>('WinUsb_QueryDeviceInformation');

int WinUsb_QueryInterfaceSettings(
  Pointer InterfaceHandle,
  int AlternateInterfaceNumber,
  Pointer<USB_INTERFACE_DESCRIPTOR> UsbAltInterfaceDescriptor,
) =>
    _WinUsb_QueryInterfaceSettings(
      InterfaceHandle,
      AlternateInterfaceNumber,
      UsbAltInterfaceDescriptor,
    );

late final _WinUsb_QueryInterfaceSettings = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Uint8 AlternateInterfaceNumber,
  Pointer<USB_INTERFACE_DESCRIPTOR> UsbAltInterfaceDescriptor,
),
    int Function(
  Pointer InterfaceHandle,
  int AlternateInterfaceNumber,
  Pointer<USB_INTERFACE_DESCRIPTOR> UsbAltInterfaceDescriptor,
)>('WinUsb_QueryInterfaceSettings');

int WinUsb_QueryPipe(
  Pointer InterfaceHandle,
  int AlternateInterfaceNumber,
  int PipeIndex,
  Pointer<WINUSB_PIPE_INFORMATION> PipeInformation,
) =>
    _WinUsb_QueryPipe(
      InterfaceHandle,
      AlternateInterfaceNumber,
      PipeIndex,
      PipeInformation,
    );

late final _WinUsb_QueryPipe = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Uint8 AlternateInterfaceNumber,
  Uint8 PipeIndex,
  Pointer<WINUSB_PIPE_INFORMATION> PipeInformation,
),
    int Function(
  Pointer InterfaceHandle,
  int AlternateInterfaceNumber,
  int PipeIndex,
  Pointer<WINUSB_PIPE_INFORMATION> PipeInformation,
)>('WinUsb_QueryPipe');

int WinUsb_QueryPipeEx(
  Pointer InterfaceHandle,
  int AlternateSettingNumber,
  int PipeIndex,
  Pointer<WINUSB_PIPE_INFORMATION_EX> PipeInformationEx,
) =>
    _WinUsb_QueryPipeEx(
      InterfaceHandle,
      AlternateSettingNumber,
      PipeIndex,
      PipeInformationEx,
    );

late final _WinUsb_QueryPipeEx = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Uint8 AlternateSettingNumber,
  Uint8 PipeIndex,
  Pointer<WINUSB_PIPE_INFORMATION_EX> PipeInformationEx,
),
    int Function(
  Pointer InterfaceHandle,
  int AlternateSettingNumber,
  int PipeIndex,
  Pointer<WINUSB_PIPE_INFORMATION_EX> PipeInformationEx,
)>('WinUsb_QueryPipeEx');

int WinUsb_ReadIsochPipe(
  Pointer BufferHandle,
  int Offset,
  int Length,
  Pointer<Uint32> FrameNumber,
  int NumberOfPackets,
  Pointer<USBD_ISO_PACKET_DESCRIPTOR> IsoPacketDescriptors,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _WinUsb_ReadIsochPipe(
      BufferHandle,
      Offset,
      Length,
      FrameNumber,
      NumberOfPackets,
      IsoPacketDescriptors,
      Overlapped,
    );

late final _WinUsb_ReadIsochPipe = _winusb.lookupFunction<
    Int32 Function(
  Pointer BufferHandle,
  Uint32 Offset,
  Uint32 Length,
  Pointer<Uint32> FrameNumber,
  Uint32 NumberOfPackets,
  Pointer<USBD_ISO_PACKET_DESCRIPTOR> IsoPacketDescriptors,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  Pointer BufferHandle,
  int Offset,
  int Length,
  Pointer<Uint32> FrameNumber,
  int NumberOfPackets,
  Pointer<USBD_ISO_PACKET_DESCRIPTOR> IsoPacketDescriptors,
  Pointer<OVERLAPPED> Overlapped,
)>('WinUsb_ReadIsochPipe');

int WinUsb_ReadIsochPipeAsap(
  Pointer BufferHandle,
  int Offset,
  int Length,
  int ContinueStream,
  int NumberOfPackets,
  Pointer<USBD_ISO_PACKET_DESCRIPTOR> IsoPacketDescriptors,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _WinUsb_ReadIsochPipeAsap(
      BufferHandle,
      Offset,
      Length,
      ContinueStream,
      NumberOfPackets,
      IsoPacketDescriptors,
      Overlapped,
    );

late final _WinUsb_ReadIsochPipeAsap = _winusb.lookupFunction<
    Int32 Function(
  Pointer BufferHandle,
  Uint32 Offset,
  Uint32 Length,
  Int32 ContinueStream,
  Uint32 NumberOfPackets,
  Pointer<USBD_ISO_PACKET_DESCRIPTOR> IsoPacketDescriptors,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  Pointer BufferHandle,
  int Offset,
  int Length,
  int ContinueStream,
  int NumberOfPackets,
  Pointer<USBD_ISO_PACKET_DESCRIPTOR> IsoPacketDescriptors,
  Pointer<OVERLAPPED> Overlapped,
)>('WinUsb_ReadIsochPipeAsap');

int WinUsb_ReadPipe(
  Pointer InterfaceHandle,
  int PipeID,
  Pointer<Uint8> Buffer,
  int BufferLength,
  Pointer<Uint32> LengthTransferred,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _WinUsb_ReadPipe(
      InterfaceHandle,
      PipeID,
      Buffer,
      BufferLength,
      LengthTransferred,
      Overlapped,
    );

late final _WinUsb_ReadPipe = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Uint8 PipeID,
  Pointer<Uint8> Buffer,
  Uint32 BufferLength,
  Pointer<Uint32> LengthTransferred,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  Pointer InterfaceHandle,
  int PipeID,
  Pointer<Uint8> Buffer,
  int BufferLength,
  Pointer<Uint32> LengthTransferred,
  Pointer<OVERLAPPED> Overlapped,
)>('WinUsb_ReadPipe');

int WinUsb_RegisterIsochBuffer(
  Pointer InterfaceHandle,
  int PipeID,
  Pointer<Uint8> Buffer,
  int BufferLength,
  Pointer<Pointer> IsochBufferHandle,
) =>
    _WinUsb_RegisterIsochBuffer(
      InterfaceHandle,
      PipeID,
      Buffer,
      BufferLength,
      IsochBufferHandle,
    );

late final _WinUsb_RegisterIsochBuffer = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Uint8 PipeID,
  Pointer<Uint8> Buffer,
  Uint32 BufferLength,
  Pointer<Pointer> IsochBufferHandle,
),
    int Function(
  Pointer InterfaceHandle,
  int PipeID,
  Pointer<Uint8> Buffer,
  int BufferLength,
  Pointer<Pointer> IsochBufferHandle,
)>('WinUsb_RegisterIsochBuffer');

int WinUsb_ResetPipe(
  Pointer InterfaceHandle,
  int PipeID,
) =>
    _WinUsb_ResetPipe(
      InterfaceHandle,
      PipeID,
    );

late final _WinUsb_ResetPipe = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Uint8 PipeID,
),
    int Function(
  Pointer InterfaceHandle,
  int PipeID,
)>('WinUsb_ResetPipe');

int WinUsb_SetCurrentAlternateSetting(
  Pointer InterfaceHandle,
  int SettingNumber,
) =>
    _WinUsb_SetCurrentAlternateSetting(
      InterfaceHandle,
      SettingNumber,
    );

late final _WinUsb_SetCurrentAlternateSetting = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Uint8 SettingNumber,
),
    int Function(
  Pointer InterfaceHandle,
  int SettingNumber,
)>('WinUsb_SetCurrentAlternateSetting');

int WinUsb_SetPipePolicy(
  Pointer InterfaceHandle,
  int PipeID,
  int PolicyType,
  int ValueLength,
  Pointer Value,
) =>
    _WinUsb_SetPipePolicy(
      InterfaceHandle,
      PipeID,
      PolicyType,
      ValueLength,
      Value,
    );

late final _WinUsb_SetPipePolicy = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Uint8 PipeID,
  Uint32 PolicyType,
  Uint32 ValueLength,
  Pointer Value,
),
    int Function(
  Pointer InterfaceHandle,
  int PipeID,
  int PolicyType,
  int ValueLength,
  Pointer Value,
)>('WinUsb_SetPipePolicy');

int WinUsb_SetPowerPolicy(
  Pointer InterfaceHandle,
  int PolicyType,
  int ValueLength,
  Pointer Value,
) =>
    _WinUsb_SetPowerPolicy(
      InterfaceHandle,
      PolicyType,
      ValueLength,
      Value,
    );

late final _WinUsb_SetPowerPolicy = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Uint32 PolicyType,
  Uint32 ValueLength,
  Pointer Value,
),
    int Function(
  Pointer InterfaceHandle,
  int PolicyType,
  int ValueLength,
  Pointer Value,
)>('WinUsb_SetPowerPolicy');

int WinUsb_StartTrackingForTimeSync(
  Pointer InterfaceHandle,
  Pointer<USB_START_TRACKING_FOR_TIME_SYNC_INFORMATION> StartTrackingInfo,
) =>
    _WinUsb_StartTrackingForTimeSync(
      InterfaceHandle,
      StartTrackingInfo,
    );

late final _WinUsb_StartTrackingForTimeSync = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Pointer<USB_START_TRACKING_FOR_TIME_SYNC_INFORMATION> StartTrackingInfo,
),
    int Function(
  Pointer InterfaceHandle,
  Pointer<USB_START_TRACKING_FOR_TIME_SYNC_INFORMATION> StartTrackingInfo,
)>('WinUsb_StartTrackingForTimeSync');

int WinUsb_StopTrackingForTimeSync(
  Pointer InterfaceHandle,
  Pointer<USB_STOP_TRACKING_FOR_TIME_SYNC_INFORMATION> StopTrackingInfo,
) =>
    _WinUsb_StopTrackingForTimeSync(
      InterfaceHandle,
      StopTrackingInfo,
    );

late final _WinUsb_StopTrackingForTimeSync = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Pointer<USB_STOP_TRACKING_FOR_TIME_SYNC_INFORMATION> StopTrackingInfo,
),
    int Function(
  Pointer InterfaceHandle,
  Pointer<USB_STOP_TRACKING_FOR_TIME_SYNC_INFORMATION> StopTrackingInfo,
)>('WinUsb_StopTrackingForTimeSync');

int WinUsb_UnregisterIsochBuffer(
  Pointer IsochBufferHandle,
) =>
    _WinUsb_UnregisterIsochBuffer(
      IsochBufferHandle,
    );

late final _WinUsb_UnregisterIsochBuffer = _winusb.lookupFunction<
    Int32 Function(
  Pointer IsochBufferHandle,
),
    int Function(
  Pointer IsochBufferHandle,
)>('WinUsb_UnregisterIsochBuffer');

int WinUsb_WriteIsochPipe(
  Pointer BufferHandle,
  int Offset,
  int Length,
  Pointer<Uint32> FrameNumber,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _WinUsb_WriteIsochPipe(
      BufferHandle,
      Offset,
      Length,
      FrameNumber,
      Overlapped,
    );

late final _WinUsb_WriteIsochPipe = _winusb.lookupFunction<
    Int32 Function(
  Pointer BufferHandle,
  Uint32 Offset,
  Uint32 Length,
  Pointer<Uint32> FrameNumber,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  Pointer BufferHandle,
  int Offset,
  int Length,
  Pointer<Uint32> FrameNumber,
  Pointer<OVERLAPPED> Overlapped,
)>('WinUsb_WriteIsochPipe');

int WinUsb_WriteIsochPipeAsap(
  Pointer BufferHandle,
  int Offset,
  int Length,
  int ContinueStream,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _WinUsb_WriteIsochPipeAsap(
      BufferHandle,
      Offset,
      Length,
      ContinueStream,
      Overlapped,
    );

late final _WinUsb_WriteIsochPipeAsap = _winusb.lookupFunction<
    Int32 Function(
  Pointer BufferHandle,
  Uint32 Offset,
  Uint32 Length,
  Int32 ContinueStream,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  Pointer BufferHandle,
  int Offset,
  int Length,
  int ContinueStream,
  Pointer<OVERLAPPED> Overlapped,
)>('WinUsb_WriteIsochPipeAsap');

int WinUsb_WritePipe(
  Pointer InterfaceHandle,
  int PipeID,
  Pointer<Uint8> Buffer,
  int BufferLength,
  Pointer<Uint32> LengthTransferred,
  Pointer<OVERLAPPED> Overlapped,
) =>
    _WinUsb_WritePipe(
      InterfaceHandle,
      PipeID,
      Buffer,
      BufferLength,
      LengthTransferred,
      Overlapped,
    );

late final _WinUsb_WritePipe = _winusb.lookupFunction<
    Int32 Function(
  Pointer InterfaceHandle,
  Uint8 PipeID,
  Pointer<Uint8> Buffer,
  Uint32 BufferLength,
  Pointer<Uint32> LengthTransferred,
  Pointer<OVERLAPPED> Overlapped,
),
    int Function(
  Pointer InterfaceHandle,
  int PipeID,
  Pointer<Uint8> Buffer,
  int BufferLength,
  Pointer<Uint32> LengthTransferred,
  Pointer<OVERLAPPED> Overlapped,
)>('WinUsb_WritePipe');
