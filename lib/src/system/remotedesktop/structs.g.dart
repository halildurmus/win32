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
import '../../foundation/structs.g.dart';
import '../../system/remotedesktop/structs.g.dart';
import '../../system/remotedesktop/callbacks.g.dart';

/// {@category Struct}
class AAAccountingData extends Struct {
  external Pointer<Utf16> userName;

  external Pointer<Utf16> clientName;

  @Int32()
  external int authType;

  external Pointer<Utf16> resourceName;

  @Int32()
  external int portNumber;

  external Pointer<Utf16> protocolName;

  @Int32()
  external int numberOfBytesReceived;

  @Int32()
  external int numberOfBytesTransfered;

  external Pointer<Utf16> reasonForDisconnect;

  external GUID mainSessionId;

  @Int32()
  external int subSessionId;
}

/// {@category Struct}
class AE_CURRENT_POSITION extends Struct {
  @Uint64()
  external int u64DevicePosition;

  @Uint64()
  external int u64StreamPosition;

  @Uint64()
  external int u64PaddingFrames;

  @Int64()
  external int hnsQPCPosition;

  @Float()
  external double f32FramesPerSecond;

  @Int32()
  external int Flag;
}

/// {@category Struct}
class BITMAP_RENDERER_STATISTICS extends Struct {
  @Uint32()
  external int dwFramesDelivered;

  @Uint32()
  external int dwFramesDropped;
}

/// {@category Struct}
class CHANNEL_DEF extends Struct {
  @Array(8)
  external Array<Uint8> name;

  @Uint32()
  external int options;
}

/// {@category Struct}
class CHANNEL_ENTRY_POINTS extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int protocolVersion;

  external Pointer<NativeFunction<PVIRTUALCHANNELINIT>> pVirtualChannelInit;

  external Pointer<NativeFunction<PVIRTUALCHANNELOPEN>> pVirtualChannelOpen;

  external Pointer<NativeFunction<PVIRTUALCHANNELCLOSE>> pVirtualChannelClose;

  external Pointer<NativeFunction<PVIRTUALCHANNELWRITE>> pVirtualChannelWrite;
}

/// {@category Struct}
class CHANNEL_PDU_HEADER extends Struct {
  @Uint32()
  external int length;

  @Uint32()
  external int flags;
}

/// {@category Struct}
class CLIENT_DISPLAY extends Struct {
  @Uint32()
  external int HorizontalResolution;

  @Uint32()
  external int VerticalResolution;

  @Uint32()
  external int ColorDepth;
}

/// {@category Struct}
class RFX_GFX_MONITOR_INFO extends Struct {
  @Int32()
  external int left;

  @Int32()
  external int top;

  @Int32()
  external int right;

  @Int32()
  external int bottom;

  @Uint32()
  external int physicalWidth;

  @Uint32()
  external int physicalHeight;

  @Uint32()
  external int orientation;

  @Int32()
  external int primary;
}

/// {@category Struct}
@Packed(1)
class RFX_GFX_MSG_CLIENT_DESKTOP_INFO_REQUEST extends Struct {
  external RFX_GFX_MSG_HEADER channelHdr;
}

/// {@category Struct}
class RFX_GFX_MSG_CLIENT_DESKTOP_INFO_RESPONSE extends Struct {
  external RFX_GFX_MSG_HEADER channelHdr;

  @Uint32()
  external int reserved;

  @Uint32()
  external int monitorCount;

  @Array(16)
  external Array<RFX_GFX_MONITOR_INFO> MonitorData;

  @Array(32)
  external Array<Uint16> _clientUniqueId;

  String get clientUniqueId {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_clientUniqueId[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set clientUniqueId(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _clientUniqueId[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
@Packed(1)
class RFX_GFX_MSG_DESKTOP_CONFIG_CHANGE_CONFIRM extends Struct {
  external RFX_GFX_MSG_HEADER channelHdr;
}

/// {@category Struct}
@Packed(1)
class RFX_GFX_MSG_DESKTOP_CONFIG_CHANGE_NOTIFY extends Struct {
  external RFX_GFX_MSG_HEADER channelHdr;

  @Uint32()
  external int ulWidth;

  @Uint32()
  external int ulHeight;

  @Uint32()
  external int ulBpp;

  @Uint32()
  external int Reserved;
}

/// {@category Struct}
@Packed(1)
class RFX_GFX_MSG_DESKTOP_INPUT_RESET extends Struct {
  external RFX_GFX_MSG_HEADER channelHdr;

  @Uint32()
  external int ulWidth;

  @Uint32()
  external int ulHeight;
}

/// {@category Struct}
@Packed(1)
class RFX_GFX_MSG_DESKTOP_RESEND_REQUEST extends Struct {
  external RFX_GFX_MSG_HEADER channelHdr;

  external RFX_GFX_RECT RedrawRect;
}

/// {@category Struct}
@Packed(1)
class RFX_GFX_MSG_DISCONNECT_NOTIFY extends Struct {
  external RFX_GFX_MSG_HEADER channelHdr;

  @Uint32()
  external int DisconnectReason;
}

/// {@category Struct}
@Packed(1)
class RFX_GFX_MSG_HEADER extends Struct {
  @Uint16()
  external int uMSGType;

  @Uint16()
  external int cbSize;
}

/// {@category Struct}
@Packed(1)
class RFX_GFX_MSG_RDP_DATA extends Struct {
  external RFX_GFX_MSG_HEADER channelHdr;

  @Array(1)
  external Array<Uint8> rdpData;
}

/// {@category Struct}
@Packed(1)
class RFX_GFX_RECT extends Struct {
  @Int32()
  external int left;

  @Int32()
  external int top;

  @Int32()
  external int right;

  @Int32()
  external int bottom;
}

/// {@category Struct}
class TSSD_ConnectionPoint extends Struct {
  @Array(16)
  external Array<Uint8> ServerAddressB;

  @Int32()
  external int AddressType;

  @Uint16()
  external int PortNumber;

  @Uint32()
  external int AddressScope;
}

/// {@category Struct}
class VM_NOTIFY_ENTRY extends Struct {
  @Array(128)
  external Array<Uint16> _VmName;

  String get VmName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_VmName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set VmName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _VmName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(128)
  external Array<Uint16> _VmHost;

  String get VmHost {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_VmHost[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set VmHost(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _VmHost[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class VM_NOTIFY_INFO extends Struct {
  @Uint32()
  external int dwNumEntries;

  external Pointer<Pointer<VM_NOTIFY_ENTRY>> ppVmEntries;
}

/// {@category Struct}
class VM_PATCH_INFO extends Struct {
  @Uint32()
  external int dwNumEntries;

  external Pointer<Pointer<Utf16>> pVmNames;
}

/// {@category Struct}
class WRDS_CONNECTION_SETTING extends Union {
  external WRDS_CONNECTION_SETTINGS_1 WRdsConnectionSettings1;
}

/// {@category Struct}
class WRDS_CONNECTION_SETTINGS extends Struct {
  @Int32()
  external int WRdsConnectionSettingLevel;

  external WRDS_CONNECTION_SETTING WRdsConnectionSetting;
}

/// {@category Struct}
class WRDS_CONNECTION_SETTINGS_1 extends Struct {
  @Uint8()
  external int fInheritInitialProgram;

  @Uint8()
  external int fInheritColorDepth;

  @Uint8()
  external int fHideTitleBar;

  @Uint8()
  external int fInheritAutoLogon;

  @Uint8()
  external int fMaximizeShell;

  @Uint8()
  external int fDisablePNP;

  @Uint8()
  external int fPasswordIsScPin;

  @Uint8()
  external int fPromptForPassword;

  @Uint8()
  external int fDisableCpm;

  @Uint8()
  external int fDisableCdm;

  @Uint8()
  external int fDisableCcm;

  @Uint8()
  external int fDisableLPT;

  @Uint8()
  external int fDisableClip;

  @Uint8()
  external int fResetBroken;

  @Uint8()
  external int fDisableEncryption;

  @Uint8()
  external int fDisableAutoReconnect;

  @Uint8()
  external int fDisableCtrlAltDel;

  @Uint8()
  external int fDoubleClickDetect;

  @Uint8()
  external int fEnableWindowsKey;

  @Uint8()
  external int fUsingSavedCreds;

  @Uint8()
  external int fMouse;

  @Uint8()
  external int fNoAudioPlayback;

  @Uint8()
  external int fRemoteConsoleAudio;

  @Uint8()
  external int EncryptionLevel;

  @Uint16()
  external int ColorDepth;

  @Uint16()
  external int ProtocolType;

  @Uint16()
  external int HRes;

  @Uint16()
  external int VRes;

  @Uint16()
  external int ClientProductId;

  @Uint16()
  external int OutBufCountHost;

  @Uint16()
  external int OutBufCountClient;

  @Uint16()
  external int OutBufLength;

  @Uint32()
  external int KeyboardLayout;

  @Uint32()
  external int MaxConnectionTime;

  @Uint32()
  external int MaxDisconnectionTime;

  @Uint32()
  external int MaxIdleTime;

  @Uint32()
  external int PerformanceFlags;

  @Uint32()
  external int KeyboardType;

  @Uint32()
  external int KeyboardSubType;

  @Uint32()
  external int KeyboardFunctionKey;

  @Uint32()
  external int ActiveInputLocale;

  @Uint32()
  external int SerialNumber;

  @Uint32()
  external int ClientAddressFamily;

  @Uint32()
  external int ClientBuildNumber;

  @Uint32()
  external int ClientSessionId;

  @Array(257)
  external Array<Uint16> _WorkDirectory;

  String get WorkDirectory {
    final charCodes = <int>[];
    for (var i = 0; i < 257; i++) {
      charCodes.add(_WorkDirectory[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set WorkDirectory(String value) {
    final stringToStore = value.padRight(257, '\x00');
    for (var i = 0; i < 257; i++) {
      _WorkDirectory[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(257)
  external Array<Uint16> _InitialProgram;

  String get InitialProgram {
    final charCodes = <int>[];
    for (var i = 0; i < 257; i++) {
      charCodes.add(_InitialProgram[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InitialProgram(String value) {
    final stringToStore = value.padRight(257, '\x00');
    for (var i = 0; i < 257; i++) {
      _InitialProgram[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _UserName;

  String get UserName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_UserName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set UserName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _UserName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _Domain;

  String get Domain {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_Domain[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Domain(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _Domain[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _Password;

  String get Password {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_Password[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Password(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _Password[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(9)
  external Array<Uint16> _ProtocolName;

  String get ProtocolName {
    final charCodes = <int>[];
    for (var i = 0; i < 9; i++) {
      charCodes.add(_ProtocolName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ProtocolName(String value) {
    final stringToStore = value.padRight(9, '\x00');
    for (var i = 0; i < 9; i++) {
      _ProtocolName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(9)
  external Array<Uint16> _DisplayDriverName;

  String get DisplayDriverName {
    final charCodes = <int>[];
    for (var i = 0; i < 9; i++) {
      charCodes.add(_DisplayDriverName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DisplayDriverName(String value) {
    final stringToStore = value.padRight(9, '\x00');
    for (var i = 0; i < 9; i++) {
      _DisplayDriverName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(20)
  external Array<Uint16> _DisplayDeviceName;

  String get DisplayDeviceName {
    final charCodes = <int>[];
    for (var i = 0; i < 20; i++) {
      charCodes.add(_DisplayDeviceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DisplayDeviceName(String value) {
    final stringToStore = value.padRight(20, '\x00');
    for (var i = 0; i < 20; i++) {
      _DisplayDeviceName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(33)
  external Array<Uint16> _imeFileName;

  String get imeFileName {
    final charCodes = <int>[];
    for (var i = 0; i < 33; i++) {
      charCodes.add(_imeFileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set imeFileName(String value) {
    final stringToStore = value.padRight(33, '\x00');
    for (var i = 0; i < 33; i++) {
      _imeFileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(9)
  external Array<Uint16> _AudioDriverName;

  String get AudioDriverName {
    final charCodes = <int>[];
    for (var i = 0; i < 9; i++) {
      charCodes.add(_AudioDriverName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set AudioDriverName(String value) {
    final stringToStore = value.padRight(9, '\x00');
    for (var i = 0; i < 9; i++) {
      _AudioDriverName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(21)
  external Array<Uint16> _ClientName;

  String get ClientName {
    final charCodes = <int>[];
    for (var i = 0; i < 21; i++) {
      charCodes.add(_ClientName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ClientName(String value) {
    final stringToStore = value.padRight(21, '\x00');
    for (var i = 0; i < 21; i++) {
      _ClientName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(31)
  external Array<Uint16> _ClientAddress;

  String get ClientAddress {
    final charCodes = <int>[];
    for (var i = 0; i < 31; i++) {
      charCodes.add(_ClientAddress[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ClientAddress(String value) {
    final stringToStore = value.padRight(31, '\x00');
    for (var i = 0; i < 31; i++) {
      _ClientAddress[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(257)
  external Array<Uint16> _ClientDirectory;

  String get ClientDirectory {
    final charCodes = <int>[];
    for (var i = 0; i < 257; i++) {
      charCodes.add(_ClientDirectory[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ClientDirectory(String value) {
    final stringToStore = value.padRight(257, '\x00');
    for (var i = 0; i < 257; i++) {
      _ClientDirectory[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(33)
  external Array<Uint16> _ClientDigProductId;

  String get ClientDigProductId {
    final charCodes = <int>[];
    for (var i = 0; i < 33; i++) {
      charCodes.add(_ClientDigProductId[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ClientDigProductId(String value) {
    final stringToStore = value.padRight(33, '\x00');
    for (var i = 0; i < 33; i++) {
      _ClientDigProductId[i] = stringToStore.codeUnitAt(i);
    }
  }

  external WTS_SOCKADDR ClientSockAddress;

  external WTS_TIME_ZONE_INFORMATION ClientTimeZone;

  external WRDS_LISTENER_SETTINGS WRdsListenerSettings;

  external GUID EventLogActivityId;

  @Uint32()
  external int ContextSize;

  external Pointer<Uint8> ContextData;
}

/// {@category Struct}
class WRDS_DYNAMIC_TIME_ZONE_INFORMATION extends Struct {
  @Int32()
  external int Bias;

  @Array(32)
  external Array<Uint16> _StandardName;

  String get StandardName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_StandardName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set StandardName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _StandardName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external WTS_SYSTEMTIME StandardDate;

  @Int32()
  external int StandardBias;

  @Array(32)
  external Array<Uint16> _DaylightName;

  String get DaylightName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_DaylightName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DaylightName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _DaylightName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external WTS_SYSTEMTIME DaylightDate;

  @Int32()
  external int DaylightBias;

  @Array(128)
  external Array<Uint16> _TimeZoneKeyName;

  String get TimeZoneKeyName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_TimeZoneKeyName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set TimeZoneKeyName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _TimeZoneKeyName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int DynamicDaylightTimeDisabled;
}

/// {@category Struct}
class WRDS_LISTENER_SETTING extends Union {
  external WRDS_LISTENER_SETTINGS_1 WRdsListenerSettings1;
}

/// {@category Struct}
class WRDS_LISTENER_SETTINGS extends Struct {
  @Int32()
  external int WRdsListenerSettingLevel;

  external WRDS_LISTENER_SETTING WRdsListenerSetting;
}

/// {@category Struct}
class WRDS_LISTENER_SETTINGS_1 extends Struct {
  @Uint32()
  external int MaxProtocolListenerConnectionCount;

  @Uint32()
  external int SecurityDescriptorSize;

  external Pointer<Uint8> pSecurityDescriptor;
}

/// {@category Struct}
class WRDS_SETTING extends Union {
  external WRDS_SETTINGS_1 WRdsSettings1;
}

/// {@category Struct}
class WRDS_SETTINGS extends Struct {
  @Int32()
  external int WRdsSettingType;

  @Int32()
  external int WRdsSettingLevel;

  external WRDS_SETTING WRdsSetting;
}

/// {@category Struct}
class WRDS_SETTINGS_1 extends Struct {
  @Int32()
  external int WRdsDisableClipStatus;

  @Uint32()
  external int WRdsDisableClipValue;

  @Int32()
  external int WRdsDisableLPTStatus;

  @Uint32()
  external int WRdsDisableLPTValue;

  @Int32()
  external int WRdsDisableCcmStatus;

  @Uint32()
  external int WRdsDisableCcmValue;

  @Int32()
  external int WRdsDisableCdmStatus;

  @Uint32()
  external int WRdsDisableCdmValue;

  @Int32()
  external int WRdsDisableCpmStatus;

  @Uint32()
  external int WRdsDisableCpmValue;

  @Int32()
  external int WRdsDisablePnpStatus;

  @Uint32()
  external int WRdsDisablePnpValue;

  @Int32()
  external int WRdsEncryptionLevelStatus;

  @Uint32()
  external int WRdsEncryptionValue;

  @Int32()
  external int WRdsColorDepthStatus;

  @Uint32()
  external int WRdsColorDepthValue;

  @Int32()
  external int WRdsDisableAutoReconnecetStatus;

  @Uint32()
  external int WRdsDisableAutoReconnecetValue;

  @Int32()
  external int WRdsDisableEncryptionStatus;

  @Uint32()
  external int WRdsDisableEncryptionValue;

  @Int32()
  external int WRdsResetBrokenStatus;

  @Uint32()
  external int WRdsResetBrokenValue;

  @Int32()
  external int WRdsMaxIdleTimeStatus;

  @Uint32()
  external int WRdsMaxIdleTimeValue;

  @Int32()
  external int WRdsMaxDisconnectTimeStatus;

  @Uint32()
  external int WRdsMaxDisconnectTimeValue;

  @Int32()
  external int WRdsMaxConnectTimeStatus;

  @Uint32()
  external int WRdsMaxConnectTimeValue;

  @Int32()
  external int WRdsKeepAliveStatus;

  @Uint8()
  external int WRdsKeepAliveStartValue;

  @Uint32()
  external int WRdsKeepAliveIntervalValue;
}

/// {@category Struct}
class WTSCLIENT extends Struct {
  @Array(21)
  external Array<Uint16> _ClientName;

  String get ClientName {
    final charCodes = <int>[];
    for (var i = 0; i < 21; i++) {
      charCodes.add(_ClientName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ClientName(String value) {
    final stringToStore = value.padRight(21, '\x00');
    for (var i = 0; i < 21; i++) {
      _ClientName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(18)
  external Array<Uint16> _Domain;

  String get Domain {
    final charCodes = <int>[];
    for (var i = 0; i < 18; i++) {
      charCodes.add(_Domain[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Domain(String value) {
    final stringToStore = value.padRight(18, '\x00');
    for (var i = 0; i < 18; i++) {
      _Domain[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(21)
  external Array<Uint16> _UserName;

  String get UserName {
    final charCodes = <int>[];
    for (var i = 0; i < 21; i++) {
      charCodes.add(_UserName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set UserName(String value) {
    final stringToStore = value.padRight(21, '\x00');
    for (var i = 0; i < 21; i++) {
      _UserName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(261)
  external Array<Uint16> _WorkDirectory;

  String get WorkDirectory {
    final charCodes = <int>[];
    for (var i = 0; i < 261; i++) {
      charCodes.add(_WorkDirectory[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set WorkDirectory(String value) {
    final stringToStore = value.padRight(261, '\x00');
    for (var i = 0; i < 261; i++) {
      _WorkDirectory[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(261)
  external Array<Uint16> _InitialProgram;

  String get InitialProgram {
    final charCodes = <int>[];
    for (var i = 0; i < 261; i++) {
      charCodes.add(_InitialProgram[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InitialProgram(String value) {
    final stringToStore = value.padRight(261, '\x00');
    for (var i = 0; i < 261; i++) {
      _InitialProgram[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint8()
  external int EncryptionLevel;

  @Uint32()
  external int ClientAddressFamily;

  @Array(31)
  external Array<Uint16> ClientAddress;

  @Uint16()
  external int HRes;

  @Uint16()
  external int VRes;

  @Uint16()
  external int ColorDepth;

  @Array(261)
  external Array<Uint16> _ClientDirectory;

  String get ClientDirectory {
    final charCodes = <int>[];
    for (var i = 0; i < 261; i++) {
      charCodes.add(_ClientDirectory[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ClientDirectory(String value) {
    final stringToStore = value.padRight(261, '\x00');
    for (var i = 0; i < 261; i++) {
      _ClientDirectory[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int ClientBuildNumber;

  @Uint32()
  external int ClientHardwareId;

  @Uint16()
  external int ClientProductId;

  @Uint16()
  external int OutBufCountHost;

  @Uint16()
  external int OutBufCountClient;

  @Uint16()
  external int OutBufLength;

  @Array(261)
  external Array<Uint16> _DeviceId;

  String get DeviceId {
    final charCodes = <int>[];
    for (var i = 0; i < 261; i++) {
      charCodes.add(_DeviceId[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DeviceId(String value) {
    final stringToStore = value.padRight(261, '\x00');
    for (var i = 0; i < 261; i++) {
      _DeviceId[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class WTSCONFIGINFO extends Struct {
  @Uint32()
  external int version;

  @Uint32()
  external int fConnectClientDrivesAtLogon;

  @Uint32()
  external int fConnectPrinterAtLogon;

  @Uint32()
  external int fDisablePrinterRedirection;

  @Uint32()
  external int fDisableDefaultMainClientPrinter;

  @Uint32()
  external int ShadowSettings;

  @Array(21)
  external Array<Uint16> _LogonUserName;

  String get LogonUserName {
    final charCodes = <int>[];
    for (var i = 0; i < 21; i++) {
      charCodes.add(_LogonUserName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set LogonUserName(String value) {
    final stringToStore = value.padRight(21, '\x00');
    for (var i = 0; i < 21; i++) {
      _LogonUserName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(18)
  external Array<Uint16> _LogonDomain;

  String get LogonDomain {
    final charCodes = <int>[];
    for (var i = 0; i < 18; i++) {
      charCodes.add(_LogonDomain[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set LogonDomain(String value) {
    final stringToStore = value.padRight(18, '\x00');
    for (var i = 0; i < 18; i++) {
      _LogonDomain[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(261)
  external Array<Uint16> _WorkDirectory;

  String get WorkDirectory {
    final charCodes = <int>[];
    for (var i = 0; i < 261; i++) {
      charCodes.add(_WorkDirectory[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set WorkDirectory(String value) {
    final stringToStore = value.padRight(261, '\x00');
    for (var i = 0; i < 261; i++) {
      _WorkDirectory[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(261)
  external Array<Uint16> _InitialProgram;

  String get InitialProgram {
    final charCodes = <int>[];
    for (var i = 0; i < 261; i++) {
      charCodes.add(_InitialProgram[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InitialProgram(String value) {
    final stringToStore = value.padRight(261, '\x00');
    for (var i = 0; i < 261; i++) {
      _InitialProgram[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(261)
  external Array<Uint16> _ApplicationName;

  String get ApplicationName {
    final charCodes = <int>[];
    for (var i = 0; i < 261; i++) {
      charCodes.add(_ApplicationName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ApplicationName(String value) {
    final stringToStore = value.padRight(261, '\x00');
    for (var i = 0; i < 261; i++) {
      _ApplicationName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class WTSINFOEX extends Struct {
  @Uint32()
  external int Level;

  external WTSINFOEX_LEVEL_ Data;
}

/// {@category Struct}
class WTSINFOEX_LEVEL1_ extends Struct {
  @Uint32()
  external int SessionId;

  @Int32()
  external int SessionState;

  @Int32()
  external int SessionFlags;

  @Array(33)
  external Array<Uint16> _WinStationName;

  String get WinStationName {
    final charCodes = <int>[];
    for (var i = 0; i < 33; i++) {
      charCodes.add(_WinStationName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set WinStationName(String value) {
    final stringToStore = value.padRight(33, '\x00');
    for (var i = 0; i < 33; i++) {
      _WinStationName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(21)
  external Array<Uint16> _UserName;

  String get UserName {
    final charCodes = <int>[];
    for (var i = 0; i < 21; i++) {
      charCodes.add(_UserName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set UserName(String value) {
    final stringToStore = value.padRight(21, '\x00');
    for (var i = 0; i < 21; i++) {
      _UserName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(18)
  external Array<Uint16> _DomainName;

  String get DomainName {
    final charCodes = <int>[];
    for (var i = 0; i < 18; i++) {
      charCodes.add(_DomainName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DomainName(String value) {
    final stringToStore = value.padRight(18, '\x00');
    for (var i = 0; i < 18; i++) {
      _DomainName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int64()
  external int LogonTime;

  @Int64()
  external int ConnectTime;

  @Int64()
  external int DisconnectTime;

  @Int64()
  external int LastInputTime;

  @Int64()
  external int CurrentTime;

  @Uint32()
  external int IncomingBytes;

  @Uint32()
  external int OutgoingBytes;

  @Uint32()
  external int IncomingFrames;

  @Uint32()
  external int OutgoingFrames;

  @Uint32()
  external int IncomingCompressedBytes;

  @Uint32()
  external int OutgoingCompressedBytes;
}

/// {@category Struct}
class WTSINFOEX_LEVEL_ extends Union {
  external WTSINFOEX_LEVEL1_ WTSInfoExLevel1;
}

/// {@category Struct}
class WTSINFO extends Struct {
  @Int32()
  external int State;

  @Uint32()
  external int SessionId;

  @Uint32()
  external int IncomingBytes;

  @Uint32()
  external int OutgoingBytes;

  @Uint32()
  external int IncomingFrames;

  @Uint32()
  external int OutgoingFrames;

  @Uint32()
  external int IncomingCompressedBytes;

  @Uint32()
  external int OutgoingCompressedBytes;

  @Array(32)
  external Array<Uint16> _WinStationName;

  String get WinStationName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_WinStationName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set WinStationName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _WinStationName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(17)
  external Array<Uint16> _Domain;

  String get Domain {
    final charCodes = <int>[];
    for (var i = 0; i < 17; i++) {
      charCodes.add(_Domain[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Domain(String value) {
    final stringToStore = value.padRight(17, '\x00');
    for (var i = 0; i < 17; i++) {
      _Domain[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(21)
  external Array<Uint16> _UserName;

  String get UserName {
    final charCodes = <int>[];
    for (var i = 0; i < 21; i++) {
      charCodes.add(_UserName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set UserName(String value) {
    final stringToStore = value.padRight(21, '\x00');
    for (var i = 0; i < 21; i++) {
      _UserName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Int64()
  external int ConnectTime;

  @Int64()
  external int DisconnectTime;

  @Int64()
  external int LastInputTime;

  @Int64()
  external int LogonTime;

  @Int64()
  external int CurrentTime;
}

/// {@category Struct}
class WTSLISTENERCONFIG extends Struct {
  @Uint32()
  external int version;

  @Uint32()
  external int fEnableListener;

  @Uint32()
  external int MaxConnectionCount;

  @Uint32()
  external int fPromptForPassword;

  @Uint32()
  external int fInheritColorDepth;

  @Uint32()
  external int ColorDepth;

  @Uint32()
  external int fInheritBrokenTimeoutSettings;

  @Uint32()
  external int BrokenTimeoutSettings;

  @Uint32()
  external int fDisablePrinterRedirection;

  @Uint32()
  external int fDisableDriveRedirection;

  @Uint32()
  external int fDisableComPortRedirection;

  @Uint32()
  external int fDisableLPTPortRedirection;

  @Uint32()
  external int fDisableClipboardRedirection;

  @Uint32()
  external int fDisableAudioRedirection;

  @Uint32()
  external int fDisablePNPRedirection;

  @Uint32()
  external int fDisableDefaultMainClientPrinter;

  @Uint32()
  external int LanAdapter;

  @Uint32()
  external int PortNumber;

  @Uint32()
  external int fInheritShadowSettings;

  @Uint32()
  external int ShadowSettings;

  @Uint32()
  external int TimeoutSettingsConnection;

  @Uint32()
  external int TimeoutSettingsDisconnection;

  @Uint32()
  external int TimeoutSettingsIdle;

  @Uint32()
  external int SecurityLayer;

  @Uint32()
  external int MinEncryptionLevel;

  @Uint32()
  external int UserAuthentication;

  @Array(61)
  external Array<Uint16> _Comment;

  String get Comment {
    final charCodes = <int>[];
    for (var i = 0; i < 61; i++) {
      charCodes.add(_Comment[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Comment(String value) {
    final stringToStore = value.padRight(61, '\x00');
    for (var i = 0; i < 61; i++) {
      _Comment[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(21)
  external Array<Uint16> _LogonUserName;

  String get LogonUserName {
    final charCodes = <int>[];
    for (var i = 0; i < 21; i++) {
      charCodes.add(_LogonUserName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set LogonUserName(String value) {
    final stringToStore = value.padRight(21, '\x00');
    for (var i = 0; i < 21; i++) {
      _LogonUserName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(18)
  external Array<Uint16> _LogonDomain;

  String get LogonDomain {
    final charCodes = <int>[];
    for (var i = 0; i < 18; i++) {
      charCodes.add(_LogonDomain[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set LogonDomain(String value) {
    final stringToStore = value.padRight(18, '\x00');
    for (var i = 0; i < 18; i++) {
      _LogonDomain[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(261)
  external Array<Uint16> _WorkDirectory;

  String get WorkDirectory {
    final charCodes = <int>[];
    for (var i = 0; i < 261; i++) {
      charCodes.add(_WorkDirectory[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set WorkDirectory(String value) {
    final stringToStore = value.padRight(261, '\x00');
    for (var i = 0; i < 261; i++) {
      _WorkDirectory[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(261)
  external Array<Uint16> _InitialProgram;

  String get InitialProgram {
    final charCodes = <int>[];
    for (var i = 0; i < 261; i++) {
      charCodes.add(_InitialProgram[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InitialProgram(String value) {
    final stringToStore = value.padRight(261, '\x00');
    for (var i = 0; i < 261; i++) {
      _InitialProgram[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class WTSSBX_IP_ADDRESS extends Struct {
  @Int32()
  external int AddressFamily;

  @Array(16)
  external Array<Uint8> Address;

  @Uint16()
  external int PortNumber;

  @Uint32()
  external int dwScope;
}

/// {@category Struct}
class WTSSBX_MACHINE_CONNECT_INFO extends Struct {
  @Array(257)
  external Array<Uint16> _wczMachineFQDN;

  String get wczMachineFQDN {
    final charCodes = <int>[];
    for (var i = 0; i < 257; i++) {
      charCodes.add(_wczMachineFQDN[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wczMachineFQDN(String value) {
    final stringToStore = value.padRight(257, '\x00');
    for (var i = 0; i < 257; i++) {
      _wczMachineFQDN[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(17)
  external Array<Uint16> _wczMachineNetBiosName;

  String get wczMachineNetBiosName {
    final charCodes = <int>[];
    for (var i = 0; i < 17; i++) {
      charCodes.add(_wczMachineNetBiosName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wczMachineNetBiosName(String value) {
    final stringToStore = value.padRight(17, '\x00');
    for (var i = 0; i < 17; i++) {
      _wczMachineNetBiosName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwNumOfIPAddr;

  @Array(12)
  external Array<WTSSBX_IP_ADDRESS> IPaddr;
}

/// {@category Struct}
class WTSSBX_MACHINE_INFO extends Struct {
  external WTSSBX_MACHINE_CONNECT_INFO ClientConnectInfo;

  @Array(257)
  external Array<Uint16> _wczFarmName;

  String get wczFarmName {
    final charCodes = <int>[];
    for (var i = 0; i < 257; i++) {
      charCodes.add(_wczFarmName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wczFarmName(String value) {
    final stringToStore = value.padRight(257, '\x00');
    for (var i = 0; i < 257; i++) {
      _wczFarmName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external WTSSBX_IP_ADDRESS InternalIPAddress;

  @Uint32()
  external int dwMaxSessionsLimit;

  @Uint32()
  external int ServerWeight;

  @Int32()
  external int SingleSessionMode;

  @Int32()
  external int InDrain;

  @Int32()
  external int MachineState;
}

/// {@category Struct}
class WTSSBX_SESSION_INFO extends Struct {
  @Array(105)
  external Array<Uint16> _wszUserName;

  String get wszUserName {
    final charCodes = <int>[];
    for (var i = 0; i < 105; i++) {
      charCodes.add(_wszUserName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszUserName(String value) {
    final stringToStore = value.padRight(105, '\x00');
    for (var i = 0; i < 105; i++) {
      _wszUserName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(257)
  external Array<Uint16> _wszDomainName;

  String get wszDomainName {
    final charCodes = <int>[];
    for (var i = 0; i < 257; i++) {
      charCodes.add(_wszDomainName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set wszDomainName(String value) {
    final stringToStore = value.padRight(257, '\x00');
    for (var i = 0; i < 257; i++) {
      _wszDomainName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(257)
  external Array<Uint16> _ApplicationType;

  String get ApplicationType {
    final charCodes = <int>[];
    for (var i = 0; i < 257; i++) {
      charCodes.add(_ApplicationType[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ApplicationType(String value) {
    final stringToStore = value.padRight(257, '\x00');
    for (var i = 0; i < 257; i++) {
      _ApplicationType[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int dwSessionId;

  external FILETIME CreateTime;

  external FILETIME DisconnectTime;

  @Int32()
  external int SessionState;
}

/// {@category Struct}
class WTSSESSION_NOTIFICATION extends Struct {
  @Uint32()
  external int cbSize;

  @Uint32()
  external int dwSessionId;
}

/// {@category Struct}
class WTSUSERCONFIG extends Struct {
  @Uint32()
  external int Source;

  @Uint32()
  external int InheritInitialProgram;

  @Uint32()
  external int AllowLogonTerminalServer;

  @Uint32()
  external int TimeoutSettingsConnections;

  @Uint32()
  external int TimeoutSettingsDisconnections;

  @Uint32()
  external int TimeoutSettingsIdle;

  @Uint32()
  external int DeviceClientDrives;

  @Uint32()
  external int DeviceClientPrinters;

  @Uint32()
  external int ClientDefaultPrinter;

  @Uint32()
  external int BrokenTimeoutSettings;

  @Uint32()
  external int ReconnectSettings;

  @Uint32()
  external int ShadowingSettings;

  @Uint32()
  external int TerminalServerRemoteHomeDir;

  @Array(261)
  external Array<Uint16> _InitialProgram;

  String get InitialProgram {
    final charCodes = <int>[];
    for (var i = 0; i < 261; i++) {
      charCodes.add(_InitialProgram[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InitialProgram(String value) {
    final stringToStore = value.padRight(261, '\x00');
    for (var i = 0; i < 261; i++) {
      _InitialProgram[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(261)
  external Array<Uint16> _WorkDirectory;

  String get WorkDirectory {
    final charCodes = <int>[];
    for (var i = 0; i < 261; i++) {
      charCodes.add(_WorkDirectory[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set WorkDirectory(String value) {
    final stringToStore = value.padRight(261, '\x00');
    for (var i = 0; i < 261; i++) {
      _WorkDirectory[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(261)
  external Array<Uint16> _TerminalServerProfilePath;

  String get TerminalServerProfilePath {
    final charCodes = <int>[];
    for (var i = 0; i < 261; i++) {
      charCodes.add(_TerminalServerProfilePath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set TerminalServerProfilePath(String value) {
    final stringToStore = value.padRight(261, '\x00');
    for (var i = 0; i < 261; i++) {
      _TerminalServerProfilePath[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(261)
  external Array<Uint16> _TerminalServerHomeDir;

  String get TerminalServerHomeDir {
    final charCodes = <int>[];
    for (var i = 0; i < 261; i++) {
      charCodes.add(_TerminalServerHomeDir[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set TerminalServerHomeDir(String value) {
    final stringToStore = value.padRight(261, '\x00');
    for (var i = 0; i < 261; i++) {
      _TerminalServerHomeDir[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(4)
  external Array<Uint16> _TerminalServerHomeDirDrive;

  String get TerminalServerHomeDirDrive {
    final charCodes = <int>[];
    for (var i = 0; i < 4; i++) {
      charCodes.add(_TerminalServerHomeDirDrive[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set TerminalServerHomeDirDrive(String value) {
    final stringToStore = value.padRight(4, '\x00');
    for (var i = 0; i < 4; i++) {
      _TerminalServerHomeDirDrive[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class WTS_CACHE_STATS extends Struct {
  @Uint32()
  external int Specific;

  external WTS_CACHE_STATS_UN Data;

  @Uint16()
  external int ProtocolType;

  @Uint16()
  external int Length;
}

/// {@category Struct}
class WTS_CACHE_STATS_UN extends Union {
  @Array(4)
  external Array<WTS_PROTOCOL_CACHE> ProtocolCache;

  @Uint32()
  external int TShareCacheStats;

  @Array(20)
  external Array<Uint32> Reserved;
}

/// {@category Struct}
class WTS_CLIENT_ADDRESS extends Struct {
  @Uint32()
  external int AddressFamily;

  @Array(20)
  external Array<Uint8> Address;
}

/// {@category Struct}
class WTS_CLIENT_DATA extends Struct {
  @Uint8()
  external int fDisableCtrlAltDel;

  @Uint8()
  external int fDoubleClickDetect;

  @Uint8()
  external int fEnableWindowsKey;

  @Uint8()
  external int fHideTitleBar;

  @Int32()
  external int fInheritAutoLogon;

  @Uint8()
  external int fPromptForPassword;

  @Uint8()
  external int fUsingSavedCreds;

  @Array(256)
  external Array<Uint16> _Domain;

  String get Domain {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_Domain[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Domain(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _Domain[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _UserName;

  String get UserName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_UserName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set UserName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _UserName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _Password;

  String get Password {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_Password[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Password(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _Password[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint8()
  external int fPasswordIsScPin;

  @Int32()
  external int fInheritInitialProgram;

  @Array(257)
  external Array<Uint16> _WorkDirectory;

  String get WorkDirectory {
    final charCodes = <int>[];
    for (var i = 0; i < 257; i++) {
      charCodes.add(_WorkDirectory[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set WorkDirectory(String value) {
    final stringToStore = value.padRight(257, '\x00');
    for (var i = 0; i < 257; i++) {
      _WorkDirectory[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(257)
  external Array<Uint16> _InitialProgram;

  String get InitialProgram {
    final charCodes = <int>[];
    for (var i = 0; i < 257; i++) {
      charCodes.add(_InitialProgram[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InitialProgram(String value) {
    final stringToStore = value.padRight(257, '\x00');
    for (var i = 0; i < 257; i++) {
      _InitialProgram[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint8()
  external int fMaximizeShell;

  @Uint8()
  external int EncryptionLevel;

  @Uint32()
  external int PerformanceFlags;

  @Array(9)
  external Array<Uint16> _ProtocolName;

  String get ProtocolName {
    final charCodes = <int>[];
    for (var i = 0; i < 9; i++) {
      charCodes.add(_ProtocolName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ProtocolName(String value) {
    final stringToStore = value.padRight(9, '\x00');
    for (var i = 0; i < 9; i++) {
      _ProtocolName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint16()
  external int ProtocolType;

  @Int32()
  external int fInheritColorDepth;

  @Uint16()
  external int HRes;

  @Uint16()
  external int VRes;

  @Uint16()
  external int ColorDepth;

  @Array(9)
  external Array<Uint16> _DisplayDriverName;

  String get DisplayDriverName {
    final charCodes = <int>[];
    for (var i = 0; i < 9; i++) {
      charCodes.add(_DisplayDriverName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DisplayDriverName(String value) {
    final stringToStore = value.padRight(9, '\x00');
    for (var i = 0; i < 9; i++) {
      _DisplayDriverName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(20)
  external Array<Uint16> _DisplayDeviceName;

  String get DisplayDeviceName {
    final charCodes = <int>[];
    for (var i = 0; i < 20; i++) {
      charCodes.add(_DisplayDeviceName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DisplayDeviceName(String value) {
    final stringToStore = value.padRight(20, '\x00');
    for (var i = 0; i < 20; i++) {
      _DisplayDeviceName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint8()
  external int fMouse;

  @Uint32()
  external int KeyboardLayout;

  @Uint32()
  external int KeyboardType;

  @Uint32()
  external int KeyboardSubType;

  @Uint32()
  external int KeyboardFunctionKey;

  @Array(33)
  external Array<Uint16> _imeFileName;

  String get imeFileName {
    final charCodes = <int>[];
    for (var i = 0; i < 33; i++) {
      charCodes.add(_imeFileName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set imeFileName(String value) {
    final stringToStore = value.padRight(33, '\x00');
    for (var i = 0; i < 33; i++) {
      _imeFileName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int ActiveInputLocale;

  @Uint8()
  external int fNoAudioPlayback;

  @Uint8()
  external int fRemoteConsoleAudio;

  @Array(9)
  external Array<Uint16> _AudioDriverName;

  String get AudioDriverName {
    final charCodes = <int>[];
    for (var i = 0; i < 9; i++) {
      charCodes.add(_AudioDriverName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set AudioDriverName(String value) {
    final stringToStore = value.padRight(9, '\x00');
    for (var i = 0; i < 9; i++) {
      _AudioDriverName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external WTS_TIME_ZONE_INFORMATION ClientTimeZone;

  @Array(21)
  external Array<Uint16> _ClientName;

  String get ClientName {
    final charCodes = <int>[];
    for (var i = 0; i < 21; i++) {
      charCodes.add(_ClientName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ClientName(String value) {
    final stringToStore = value.padRight(21, '\x00');
    for (var i = 0; i < 21; i++) {
      _ClientName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int SerialNumber;

  @Uint32()
  external int ClientAddressFamily;

  @Array(31)
  external Array<Uint16> _ClientAddress;

  String get ClientAddress {
    final charCodes = <int>[];
    for (var i = 0; i < 31; i++) {
      charCodes.add(_ClientAddress[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ClientAddress(String value) {
    final stringToStore = value.padRight(31, '\x00');
    for (var i = 0; i < 31; i++) {
      _ClientAddress[i] = stringToStore.codeUnitAt(i);
    }
  }

  external WTS_SOCKADDR ClientSockAddress;

  @Array(257)
  external Array<Uint16> _ClientDirectory;

  String get ClientDirectory {
    final charCodes = <int>[];
    for (var i = 0; i < 257; i++) {
      charCodes.add(_ClientDirectory[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ClientDirectory(String value) {
    final stringToStore = value.padRight(257, '\x00');
    for (var i = 0; i < 257; i++) {
      _ClientDirectory[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint32()
  external int ClientBuildNumber;

  @Uint16()
  external int ClientProductId;

  @Uint16()
  external int OutBufCountHost;

  @Uint16()
  external int OutBufCountClient;

  @Uint16()
  external int OutBufLength;

  @Uint32()
  external int ClientSessionId;

  @Array(33)
  external Array<Uint16> _ClientDigProductId;

  String get ClientDigProductId {
    final charCodes = <int>[];
    for (var i = 0; i < 33; i++) {
      charCodes.add(_ClientDigProductId[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ClientDigProductId(String value) {
    final stringToStore = value.padRight(33, '\x00');
    for (var i = 0; i < 33; i++) {
      _ClientDigProductId[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint8()
  external int fDisableCpm;

  @Uint8()
  external int fDisableCdm;

  @Uint8()
  external int fDisableCcm;

  @Uint8()
  external int fDisableLPT;

  @Uint8()
  external int fDisableClip;

  @Uint8()
  external int fDisablePNP;
}

/// {@category Struct}
class WTS_CLIENT_DISPLAY extends Struct {
  @Uint32()
  external int HorizontalResolution;

  @Uint32()
  external int VerticalResolution;

  @Uint32()
  external int ColorDepth;
}

/// {@category Struct}
class WTS_DISPLAY_IOCTL extends Struct {
  @Array(256)
  external Array<Uint8> pDisplayIOCtlData;

  @Uint32()
  external int cbDisplayIOCtlData;
}

/// {@category Struct}
class WTS_LICENSE_CAPABILITIES extends Struct {
  @Uint32()
  external int KeyExchangeAlg;

  @Uint32()
  external int ProtocolVer;

  @Int32()
  external int fAuthenticateServer;

  @Int32()
  external int CertType;

  @Uint32()
  external int cbClientName;

  @Array(42)
  external Array<Uint8> rgbClientName;
}

/// {@category Struct}
class WTS_POLICY_DATA extends Struct {
  @Uint8()
  external int fDisableEncryption;

  @Uint8()
  external int fDisableAutoReconnect;

  @Uint32()
  external int ColorDepth;

  @Uint8()
  external int MinEncryptionLevel;

  @Uint8()
  external int fDisableCpm;

  @Uint8()
  external int fDisableCdm;

  @Uint8()
  external int fDisableCcm;

  @Uint8()
  external int fDisableLPT;

  @Uint8()
  external int fDisableClip;

  @Uint8()
  external int fDisablePNPRedir;
}

/// {@category Struct}
class WTS_PROCESS_INFO extends Struct {
  @Uint32()
  external int SessionId;

  @Uint32()
  external int ProcessId;

  external Pointer<Utf16> pProcessName;

  @IntPtr()
  external int pUserSid;
}

/// {@category Struct}
class WTS_PROCESS_INFO_EX extends Struct {
  @Uint32()
  external int SessionId;

  @Uint32()
  external int ProcessId;

  external Pointer<Utf16> pProcessName;

  @IntPtr()
  external int pUserSid;

  @Uint32()
  external int NumberOfThreads;

  @Uint32()
  external int HandleCount;

  @Uint32()
  external int PagefileUsage;

  @Uint32()
  external int PeakPagefileUsage;

  @Uint32()
  external int WorkingSetSize;

  @Uint32()
  external int PeakWorkingSetSize;

  @Int64()
  external int UserTime;

  @Int64()
  external int KernelTime;
}

/// {@category Struct}
class WTS_PROPERTY_VALUE extends Struct {
  @Uint16()
  external int Type;

  external _WTS_PROPERTY_VALUE__u_e__Union u;
}

/// {@category Struct}
class _WTS_PROPERTY_VALUE__u_e__Union extends Union {
  @Uint32()
  external int ulVal;

  external _WTS_PROPERTY_VALUE__u_e__Union__strVal_e__Struct strVal;

  external _WTS_PROPERTY_VALUE__u_e__Union__bVal_e__Struct bVal;

  external GUID guidVal;
}

/// {@category Struct}
class _WTS_PROPERTY_VALUE__u_e__Union__strVal_e__Struct extends Struct {
  @Uint32()
  external int size;

  external Pointer<Utf16> pstrVal;
}

extension WTS_PROPERTY_VALUE__u_e__Union_Extension on WTS_PROPERTY_VALUE {
  int get size => this.u.strVal.size;
  set size(int value) => this.u.strVal.size = value;

  Pointer<Utf16> get pstrVal => this.u.strVal.pstrVal;
  set pstrVal(Pointer<Utf16> value) => this.u.strVal.pstrVal = value;
}

/// {@category Struct}
class _WTS_PROPERTY_VALUE__u_e__Union__bVal_e__Struct extends Struct {
  @Uint32()
  external int size;

  external Pointer<Utf8> pbVal;
}

extension WTS_PROPERTY_VALUE__u_e__Union_Extension_1 on WTS_PROPERTY_VALUE {
  int get size => this.u.bVal.size;
  set size(int value) => this.u.bVal.size = value;

  Pointer<Utf8> get pbVal => this.u.bVal.pbVal;
  set pbVal(Pointer<Utf8> value) => this.u.bVal.pbVal = value;
}

extension WTS_PROPERTY_VALUE_Extension on WTS_PROPERTY_VALUE {
  int get ulVal => this.u.ulVal;
  set ulVal(int value) => this.u.ulVal = value;

  _WTS_PROPERTY_VALUE__u_e__Union__strVal_e__Struct get strVal => this.u.strVal;
  set strVal(_WTS_PROPERTY_VALUE__u_e__Union__strVal_e__Struct value) =>
      this.u.strVal = value;

  _WTS_PROPERTY_VALUE__u_e__Union__bVal_e__Struct get bVal => this.u.bVal;
  set bVal(_WTS_PROPERTY_VALUE__u_e__Union__bVal_e__Struct value) =>
      this.u.bVal = value;

  GUID get guidVal => this.u.guidVal;
  set guidVal(GUID value) => this.u.guidVal = value;
}

/// {@category Struct}
class WTS_PROTOCOL_CACHE extends Struct {
  @Uint32()
  external int CacheReads;

  @Uint32()
  external int CacheHits;
}

/// {@category Struct}
class WTS_PROTOCOL_COUNTERS extends Struct {
  @Uint32()
  external int WdBytes;

  @Uint32()
  external int WdFrames;

  @Uint32()
  external int WaitForOutBuf;

  @Uint32()
  external int Frames;

  @Uint32()
  external int Bytes;

  @Uint32()
  external int CompressedBytes;

  @Uint32()
  external int CompressFlushes;

  @Uint32()
  external int Errors;

  @Uint32()
  external int Timeouts;

  @Uint32()
  external int AsyncFramingError;

  @Uint32()
  external int AsyncOverrunError;

  @Uint32()
  external int AsyncOverflowError;

  @Uint32()
  external int AsyncParityError;

  @Uint32()
  external int TdErrors;

  @Uint16()
  external int ProtocolType;

  @Uint16()
  external int Length;

  @Uint16()
  external int Specific;

  @Array(100)
  external Array<Uint32> Reserved;
}

/// {@category Struct}
class WTS_PROTOCOL_STATUS extends Struct {
  external WTS_PROTOCOL_COUNTERS Output;

  external WTS_PROTOCOL_COUNTERS Input;

  external WTS_CACHE_STATS Cache;

  @Uint32()
  external int AsyncSignal;

  @Uint32()
  external int AsyncSignalMask;

  @Array(100)
  external Array<Int64> Counters;
}

/// {@category Struct}
class WTS_SERVER_INFO extends Struct {
  external Pointer<Utf16> pServerName;
}

/// {@category Struct}
class WTS_SERVICE_STATE extends Struct {
  @Int32()
  external int RcmServiceState;

  @Int32()
  external int RcmDrainState;
}

/// {@category Struct}
class WTS_SESSION_ADDRESS extends Struct {
  @Uint32()
  external int AddressFamily;

  @Array(20)
  external Array<Uint8> Address;
}

/// {@category Struct}
class WTS_SESSION_ID extends Struct {
  external GUID SessionUniqueGuid;

  @Uint32()
  external int SessionId;
}

/// {@category Struct}
class WTS_SESSION_INFO extends Struct {
  @Uint32()
  external int SessionId;

  external Pointer<Utf16> pWinStationName;

  @Int32()
  external int State;
}

/// {@category Struct}
class WTS_SESSION_INFO_1 extends Struct {
  @Uint32()
  external int ExecEnvId;

  @Int32()
  external int State;

  @Uint32()
  external int SessionId;

  external Pointer<Utf16> pSessionName;

  external Pointer<Utf16> pHostName;

  external Pointer<Utf16> pUserName;

  external Pointer<Utf16> pDomainName;

  external Pointer<Utf16> pFarmName;
}

/// {@category Struct}
class WTS_SMALL_RECT extends Struct {
  @Int16()
  external int Left;

  @Int16()
  external int Top;

  @Int16()
  external int Right;

  @Int16()
  external int Bottom;
}

/// {@category Struct}
class WTS_SOCKADDR extends Struct {
  @Uint16()
  external int sin_family;

  external _WTS_SOCKADDR__u_e__Union u;
}

/// {@category Struct}
class _WTS_SOCKADDR__u_e__Union extends Union {
  external _WTS_SOCKADDR__u_e__Union__ipv4_e__Struct ipv4;

  external _WTS_SOCKADDR__u_e__Union__ipv6_e__Struct ipv6;
}

/// {@category Struct}
class _WTS_SOCKADDR__u_e__Union__ipv4_e__Struct extends Struct {
  @Uint16()
  external int sin_port;

  @Uint32()
  external int IN_ADDR;

  @Array(8)
  external Array<Uint8> sin_zero;
}

extension WTS_SOCKADDR__u_e__Union_Extension on WTS_SOCKADDR {
  int get sin_port => this.u.ipv4.sin_port;
  set sin_port(int value) => this.u.ipv4.sin_port = value;

  int get IN_ADDR => this.u.ipv4.IN_ADDR;
  set IN_ADDR(int value) => this.u.ipv4.IN_ADDR = value;

  Array<Uint8> get sin_zero => this.u.ipv4.sin_zero;
  set sin_zero(Array<Uint8> value) => this.u.ipv4.sin_zero = value;
}

/// {@category Struct}
class _WTS_SOCKADDR__u_e__Union__ipv6_e__Struct extends Struct {
  @Uint16()
  external int sin6_port;

  @Uint32()
  external int sin6_flowinfo;

  @Array(8)
  external Array<Uint16> sin6_addr;

  @Uint32()
  external int sin6_scope_id;
}

extension WTS_SOCKADDR__u_e__Union_Extension_1 on WTS_SOCKADDR {
  int get sin6_port => this.u.ipv6.sin6_port;
  set sin6_port(int value) => this.u.ipv6.sin6_port = value;

  int get sin6_flowinfo => this.u.ipv6.sin6_flowinfo;
  set sin6_flowinfo(int value) => this.u.ipv6.sin6_flowinfo = value;

  Array<Uint16> get sin6_addr => this.u.ipv6.sin6_addr;
  set sin6_addr(Array<Uint16> value) => this.u.ipv6.sin6_addr = value;

  int get sin6_scope_id => this.u.ipv6.sin6_scope_id;
  set sin6_scope_id(int value) => this.u.ipv6.sin6_scope_id = value;
}

extension WTS_SOCKADDR_Extension on WTS_SOCKADDR {
  _WTS_SOCKADDR__u_e__Union__ipv4_e__Struct get ipv4 => this.u.ipv4;
  set ipv4(_WTS_SOCKADDR__u_e__Union__ipv4_e__Struct value) =>
      this.u.ipv4 = value;

  _WTS_SOCKADDR__u_e__Union__ipv6_e__Struct get ipv6 => this.u.ipv6;
  set ipv6(_WTS_SOCKADDR__u_e__Union__ipv6_e__Struct value) =>
      this.u.ipv6 = value;
}

/// {@category Struct}
class WTS_SYSTEMTIME extends Struct {
  @Uint16()
  external int wYear;

  @Uint16()
  external int wMonth;

  @Uint16()
  external int wDayOfWeek;

  @Uint16()
  external int wDay;

  @Uint16()
  external int wHour;

  @Uint16()
  external int wMinute;

  @Uint16()
  external int wSecond;

  @Uint16()
  external int wMilliseconds;
}

/// {@category Struct}
class WTS_TIME_ZONE_INFORMATION extends Struct {
  @Int32()
  external int Bias;

  @Array(32)
  external Array<Uint16> _StandardName;

  String get StandardName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_StandardName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set StandardName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _StandardName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external WTS_SYSTEMTIME StandardDate;

  @Int32()
  external int StandardBias;

  @Array(32)
  external Array<Uint16> _DaylightName;

  String get DaylightName {
    final charCodes = <int>[];
    for (var i = 0; i < 32; i++) {
      charCodes.add(_DaylightName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set DaylightName(String value) {
    final stringToStore = value.padRight(32, '\x00');
    for (var i = 0; i < 32; i++) {
      _DaylightName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external WTS_SYSTEMTIME DaylightDate;

  @Int32()
  external int DaylightBias;
}

/// {@category Struct}
class WTS_USER_CREDENTIAL extends Struct {
  @Array(256)
  external Array<Uint16> _UserName;

  String get UserName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_UserName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set UserName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _UserName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _Password;

  String get Password {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_Password[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Password(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _Password[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _Domain;

  String get Domain {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_Domain[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set Domain(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _Domain[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class WTS_USER_DATA extends Struct {
  @Array(257)
  external Array<Uint16> _WorkDirectory;

  String get WorkDirectory {
    final charCodes = <int>[];
    for (var i = 0; i < 257; i++) {
      charCodes.add(_WorkDirectory[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set WorkDirectory(String value) {
    final stringToStore = value.padRight(257, '\x00');
    for (var i = 0; i < 257; i++) {
      _WorkDirectory[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(257)
  external Array<Uint16> _InitialProgram;

  String get InitialProgram {
    final charCodes = <int>[];
    for (var i = 0; i < 257; i++) {
      charCodes.add(_InitialProgram[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set InitialProgram(String value) {
    final stringToStore = value.padRight(257, '\x00');
    for (var i = 0; i < 257; i++) {
      _InitialProgram[i] = stringToStore.codeUnitAt(i);
    }
  }

  external WTS_TIME_ZONE_INFORMATION UserTimeZone;
}

/// {@category Struct}
class WTS_VALIDATION_INFORMATION extends Struct {
  external WTS_PRODUCT_INFO ProductInfo;

  @Array(16384)
  external Array<Uint8> License;

  @Uint32()
  external int LicenseLength;

  @Array(20)
  external Array<Uint8> HardwareID;

  @Uint32()
  external int HardwareIDLength;
}

/// {@category Struct}
class WTS_PRODUCT_INFO extends Struct {
  @Array(256)
  external Array<Uint16> _CompanyName;

  String get CompanyName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_CompanyName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set CompanyName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _CompanyName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(4)
  external Array<Uint16> _ProductID;

  String get ProductID {
    final charCodes = <int>[];
    for (var i = 0; i < 4; i++) {
      charCodes.add(_ProductID[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ProductID(String value) {
    final stringToStore = value.padRight(4, '\x00');
    for (var i = 0; i < 4; i++) {
      _ProductID[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class pluginResource extends Struct {
  @Array(256)
  external Array<Uint16> _alias;

  String get alias {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_alias[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set alias(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _alias[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _name;

  String get name {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_name[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set name(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _name[i] = stringToStore.codeUnitAt(i);
    }
  }

  external Pointer<Utf16> resourceFileContents;

  @Array(256)
  external Array<Uint16> _fileExtension;

  String get fileExtension {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_fileExtension[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set fileExtension(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _fileExtension[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(256)
  external Array<Uint16> _resourcePluginType;

  String get resourcePluginType {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_resourcePluginType[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set resourcePluginType(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _resourcePluginType[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint8()
  external int isDiscoverable;

  @Int32()
  external int resourceType;

  @Uint32()
  external int pceIconSize;

  external Pointer<Uint8> iconContents;

  @Uint32()
  external int pcePluginBlobSize;

  external Pointer<Uint8> blobContents;
}

/// {@category Struct}
class pluginResource2 extends Struct {
  external pluginResource resourceV1;

  @Uint32()
  external int pceFileAssocListSize;

  external Pointer<pluginResource2FileAssociation> fileAssocList;

  external Pointer<Utf16> securityDescriptor;

  @Uint32()
  external int pceFolderListSize;

  external Pointer<Pointer<Uint16>> folderList;
}

/// {@category Struct}
class pluginResource2FileAssociation extends Struct {
  @Array(256)
  external Array<Uint16> _extName;

  String get extName {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_extName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set extName(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _extName[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Uint8()
  external int primaryHandler;

  @Uint32()
  external int pceIconSize;

  external Pointer<Uint8> iconContents;
}
