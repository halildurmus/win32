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
import '../../devices/fax/structs.g.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../devices/fax/callbacks.g.dart';

/// {@category Struct}
class FAX_CONFIGURATION extends Struct {
  @Uint32()
  external int SizeOfStruct;

  @Uint32()
  external int Retries;

  @Uint32()
  external int RetryDelay;

  @Uint32()
  external int DirtyDays;

  @Int32()
  external int Branding;

  @Int32()
  external int UseDeviceTsid;

  @Int32()
  external int ServerCp;

  @Int32()
  external int PauseServerQueue;

  external FAX_TIME StartCheapTime;

  external FAX_TIME StopCheapTime;

  @Int32()
  external int ArchiveOutgoingFaxes;

  external Pointer<Utf16> ArchiveDirectory;

  external Pointer<Utf16> Reserved;
}

/// {@category Struct}
class FAX_CONTEXT_INFO extends Struct {
  @Uint32()
  external int SizeOfStruct;

  @IntPtr()
  external int hDC;

  @Array(16)
  external Array<Uint16> _ServerName;

  String get ServerName {
    final charCodes = <int>[];
    for (var i = 0; i < 16; i++) {
      charCodes.add(_ServerName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set ServerName(String value) {
    final stringToStore = value.padRight(16, '\x00');
    for (var i = 0; i < 16; i++) {
      _ServerName[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class FAX_COVERPAGE_INFO extends Struct {
  @Uint32()
  external int SizeOfStruct;

  external Pointer<Utf16> CoverPageName;

  @Int32()
  external int UseServerCoverPage;

  external Pointer<Utf16> RecName;

  external Pointer<Utf16> RecFaxNumber;

  external Pointer<Utf16> RecCompany;

  external Pointer<Utf16> RecStreetAddress;

  external Pointer<Utf16> RecCity;

  external Pointer<Utf16> RecState;

  external Pointer<Utf16> RecZip;

  external Pointer<Utf16> RecCountry;

  external Pointer<Utf16> RecTitle;

  external Pointer<Utf16> RecDepartment;

  external Pointer<Utf16> RecOfficeLocation;

  external Pointer<Utf16> RecHomePhone;

  external Pointer<Utf16> RecOfficePhone;

  external Pointer<Utf16> SdrName;

  external Pointer<Utf16> SdrFaxNumber;

  external Pointer<Utf16> SdrCompany;

  external Pointer<Utf16> SdrAddress;

  external Pointer<Utf16> SdrTitle;

  external Pointer<Utf16> SdrDepartment;

  external Pointer<Utf16> SdrOfficeLocation;

  external Pointer<Utf16> SdrHomePhone;

  external Pointer<Utf16> SdrOfficePhone;

  external Pointer<Utf16> Note;

  external Pointer<Utf16> Subject;

  external SYSTEMTIME TimeSent;

  @Uint32()
  external int PageCount;
}

/// {@category Struct}
class FAX_DEVICE_STATUS extends Struct {
  @Uint32()
  external int SizeOfStruct;

  external Pointer<Utf16> CallerId;

  external Pointer<Utf16> Csid;

  @Uint32()
  external int CurrentPage;

  @Uint32()
  external int DeviceId;

  external Pointer<Utf16> DeviceName;

  external Pointer<Utf16> DocumentName;

  @Uint32()
  external int JobType;

  external Pointer<Utf16> PhoneNumber;

  external Pointer<Utf16> RoutingString;

  external Pointer<Utf16> SenderName;

  external Pointer<Utf16> RecipientName;

  @Uint32()
  external int Size;

  external FILETIME StartTime;

  @Uint32()
  external int Status;

  external Pointer<Utf16> StatusString;

  external FILETIME SubmittedTime;

  @Uint32()
  external int TotalPages;

  external Pointer<Utf16> Tsid;

  external Pointer<Utf16> UserName;
}

/// {@category Struct}
class FAX_DEV_STATUS extends Struct {
  @Uint32()
  external int SizeOfStruct;

  @Uint32()
  external int StatusId;

  @Uint32()
  external int StringId;

  @Uint32()
  external int PageCount;

  external Pointer<Utf16> CSI;

  external Pointer<Utf16> CallerId;

  external Pointer<Utf16> RoutingInfo;

  @Uint32()
  external int ErrorCode;

  @Array(3)
  external Array<Uint32> Reserved;
}

/// {@category Struct}
class FAX_EVENT extends Struct {
  @Uint32()
  external int SizeOfStruct;

  external FILETIME TimeStamp;

  @Uint32()
  external int DeviceId;

  @Uint32()
  external int EventId;

  @Uint32()
  external int JobId;
}

/// {@category Struct}
class FAX_GLOBAL_ROUTING_INFO extends Struct {
  @Uint32()
  external int SizeOfStruct;

  @Uint32()
  external int Priority;

  external Pointer<Utf16> Guid;

  external Pointer<Utf16> FriendlyName;

  external Pointer<Utf16> FunctionName;

  external Pointer<Utf16> ExtensionImageName;

  external Pointer<Utf16> ExtensionFriendlyName;
}

/// {@category Struct}
class FAX_JOB_ENTRY extends Struct {
  @Uint32()
  external int SizeOfStruct;

  @Uint32()
  external int JobId;

  external Pointer<Utf16> UserName;

  @Uint32()
  external int JobType;

  @Uint32()
  external int QueueStatus;

  @Uint32()
  external int Status;

  @Uint32()
  external int Size;

  @Uint32()
  external int PageCount;

  external Pointer<Utf16> RecipientNumber;

  external Pointer<Utf16> RecipientName;

  external Pointer<Utf16> Tsid;

  external Pointer<Utf16> SenderName;

  external Pointer<Utf16> SenderCompany;

  external Pointer<Utf16> SenderDept;

  external Pointer<Utf16> BillingCode;

  @Uint32()
  external int ScheduleAction;

  external SYSTEMTIME ScheduleTime;

  @Uint32()
  external int DeliveryReportType;

  external Pointer<Utf16> DeliveryReportAddress;

  external Pointer<Utf16> DocumentName;
}

/// {@category Struct}
class FAX_JOB_PARAM extends Struct {
  @Uint32()
  external int SizeOfStruct;

  external Pointer<Utf16> RecipientNumber;

  external Pointer<Utf16> RecipientName;

  external Pointer<Utf16> Tsid;

  external Pointer<Utf16> SenderName;

  external Pointer<Utf16> SenderCompany;

  external Pointer<Utf16> SenderDept;

  external Pointer<Utf16> BillingCode;

  @Uint32()
  external int ScheduleAction;

  external SYSTEMTIME ScheduleTime;

  @Uint32()
  external int DeliveryReportType;

  external Pointer<Utf16> DeliveryReportAddress;

  external Pointer<Utf16> DocumentName;

  @Uint32()
  external int CallHandle;

  @Array(3)
  external Array<IntPtr> Reserved;
}

/// {@category Struct}
class FAX_LOG_CATEGORY extends Struct {
  external Pointer<Utf16> Name;

  @Uint32()
  external int Category;

  @Uint32()
  external int Level;
}

/// {@category Struct}
class FAX_PORT_INFO extends Struct {
  @Uint32()
  external int SizeOfStruct;

  @Uint32()
  external int DeviceId;

  @Uint32()
  external int State;

  @Uint32()
  external int Flags;

  @Uint32()
  external int Rings;

  @Uint32()
  external int Priority;

  external Pointer<Utf16> DeviceName;

  external Pointer<Utf16> Tsid;

  external Pointer<Utf16> Csid;
}

/// {@category Struct}
class FAX_PRINT_INFO extends Struct {
  @Uint32()
  external int SizeOfStruct;

  external Pointer<Utf16> DocName;

  external Pointer<Utf16> RecipientName;

  external Pointer<Utf16> RecipientNumber;

  external Pointer<Utf16> SenderName;

  external Pointer<Utf16> SenderCompany;

  external Pointer<Utf16> SenderDept;

  external Pointer<Utf16> SenderBillingCode;

  external Pointer<Utf16> Reserved;

  external Pointer<Utf16> DrEmailAddress;

  external Pointer<Utf16> OutputFileName;
}

/// {@category Struct}
class FAX_RECEIVE extends Struct {
  @Uint32()
  external int SizeOfStruct;

  external Pointer<Utf16> FileName;

  external Pointer<Utf16> ReceiverName;

  external Pointer<Utf16> ReceiverNumber;

  @Array(4)
  external Array<Uint32> Reserved;
}

/// {@category Struct}
class FAX_ROUTE extends Struct {
  @Uint32()
  external int SizeOfStruct;

  @Uint32()
  external int JobId;

  @Uint64()
  external int ElapsedTime;

  @Uint64()
  external int ReceiveTime;

  @Uint32()
  external int PageCount;

  external Pointer<Utf16> Csid;

  external Pointer<Utf16> Tsid;

  external Pointer<Utf16> CallerId;

  external Pointer<Utf16> RoutingInfo;

  external Pointer<Utf16> ReceiverName;

  external Pointer<Utf16> ReceiverNumber;

  external Pointer<Utf16> DeviceName;

  @Uint32()
  external int DeviceId;

  external Pointer<Uint8> RoutingInfoData;

  @Uint32()
  external int RoutingInfoDataSize;
}

/// {@category Struct}
class FAX_ROUTE_CALLBACKROUTINES extends Struct {
  @Uint32()
  external int SizeOfStruct;

  external Pointer<NativeFunction<PFAXROUTEADDFILE>> FaxRouteAddFile;

  external Pointer<NativeFunction<PFAXROUTEDELETEFILE>> FaxRouteDeleteFile;

  external Pointer<NativeFunction<PFAXROUTEGETFILE>> FaxRouteGetFile;

  external Pointer<NativeFunction<PFAXROUTEENUMFILES>> FaxRouteEnumFiles;

  external Pointer<NativeFunction<PFAXROUTEMODIFYROUTINGDATA>>
      FaxRouteModifyRoutingData;
}

/// {@category Struct}
class FAX_ROUTING_METHOD extends Struct {
  @Uint32()
  external int SizeOfStruct;

  @Uint32()
  external int DeviceId;

  @Int32()
  external int Enabled;

  external Pointer<Utf16> DeviceName;

  external Pointer<Utf16> Guid;

  external Pointer<Utf16> FriendlyName;

  external Pointer<Utf16> FunctionName;

  external Pointer<Utf16> ExtensionImageName;

  external Pointer<Utf16> ExtensionFriendlyName;
}

/// {@category Struct}
class FAX_SEND extends Struct {
  @Uint32()
  external int SizeOfStruct;

  external Pointer<Utf16> FileName;

  external Pointer<Utf16> CallerName;

  external Pointer<Utf16> CallerNumber;

  external Pointer<Utf16> ReceiverName;

  external Pointer<Utf16> ReceiverNumber;

  @Int32()
  external int Branding;

  @Uint32()
  external int CallHandle;

  @Array(3)
  external Array<Uint32> Reserved;
}

/// {@category Struct}
class FAX_TIME extends Struct {
  @Uint16()
  external int Hour;

  @Uint16()
  external int Minute;
}

/// {@category Struct}
class STINOTIFY extends Struct {
  @Uint32()
  external int dwSize;

  external GUID guidNotificationCode;

  @Array(64)
  external Array<Uint8> abNotificationData;
}

/// {@category Struct}
class STISUBSCRIBE extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwFilter;

  @IntPtr()
  external int hWndNotify;

  @IntPtr()
  external int hEvent;

  @Uint32()
  external int uiNotificationMessage;
}

/// {@category Struct}
class STI_DEVICE_INFORMATION extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int DeviceType;

  @Array(128)
  external Array<Uint16> _szDeviceInternalName;

  String get szDeviceInternalName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szDeviceInternalName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDeviceInternalName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szDeviceInternalName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external STI_DEV_CAPS DeviceCapabilitiesA;

  @Uint32()
  external int dwHardwareConfiguration;

  external Pointer<Utf16> pszVendorDescription;

  external Pointer<Utf16> pszDeviceDescription;

  external Pointer<Utf16> pszPortName;

  external Pointer<Utf16> pszPropProvider;

  external Pointer<Utf16> pszLocalName;
}

/// {@category Struct}
class STI_DEVICE_STATUS extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int StatusMask;

  @Uint32()
  external int dwOnlineState;

  @Uint32()
  external int dwHardwareStatusCode;

  @Uint32()
  external int dwEventHandlingState;

  @Uint32()
  external int dwPollingInterval;
}

/// {@category Struct}
class STI_DEV_CAPS extends Struct {
  @Uint32()
  external int dwGeneric;
}

/// {@category Struct}
class STI_DIAG extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwBasicDiagCode;

  @Uint32()
  external int dwVendorDiagCode;

  @Uint32()
  external int dwStatusMask;

  external ERROR_INFO sErrorInfo;
}

/// {@category Struct}
class STI_USD_CAPS extends Struct {
  @Uint32()
  external int dwVersion;

  @Uint32()
  external int dwGenericCaps;
}

/// {@category Struct}
class STI_WIA_DEVICE_INFORMATION extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int DeviceType;

  @Array(128)
  external Array<Uint16> _szDeviceInternalName;

  String get szDeviceInternalName {
    final charCodes = <int>[];
    for (var i = 0; i < 128; i++) {
      charCodes.add(_szDeviceInternalName[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szDeviceInternalName(String value) {
    final stringToStore = value.padRight(128, '\x00');
    for (var i = 0; i < 128; i++) {
      _szDeviceInternalName[i] = stringToStore.codeUnitAt(i);
    }
  }

  external STI_DEV_CAPS DeviceCapabilitiesA;

  @Uint32()
  external int dwHardwareConfiguration;

  external Pointer<Utf16> pszVendorDescription;

  external Pointer<Utf16> pszDeviceDescription;

  external Pointer<Utf16> pszPortName;

  external Pointer<Utf16> pszPropProvider;

  external Pointer<Utf16> pszLocalName;

  external Pointer<Utf16> pszUiDll;

  external Pointer<Utf16> pszServer;
}

/// {@category Struct}
class ERROR_INFO extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int dwGenericError;

  @Uint32()
  external int dwVendorError;

  @Array(255)
  external Array<Uint16> _szExtendedErrorText;

  String get szExtendedErrorText {
    final charCodes = <int>[];
    for (var i = 0; i < 255; i++) {
      charCodes.add(_szExtendedErrorText[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szExtendedErrorText(String value) {
    final stringToStore = value.padRight(255, '\x00');
    for (var i = 0; i < 255; i++) {
      _szExtendedErrorText[i] = stringToStore.codeUnitAt(i);
    }
  }
}
