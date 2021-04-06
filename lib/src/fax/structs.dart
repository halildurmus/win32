// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
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

class FAX_LOG_CATEGORYA extends Struct {
  external Pointer<Utf8> Name;
  @Uint32()
  external int Category;
  @Uint32()
  external int Level;
}

class FAX_LOG_CATEGORYW extends Struct {
  external Pointer<Utf16> Name;
  @Uint32()
  external int Category;
  @Uint32()
  external int Level;
}

class FAX_TIME extends Struct {
  @Uint16()
  external int Hour;
  @Uint16()
  external int Minute;
}

class FAX_CONFIGURATIONA extends Struct {
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
  external Pointer<Utf8> ArchiveDirectory;
  external Pointer<Utf8> Reserved;
}

class FAX_CONFIGURATIONW extends Struct {
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

class FAX_DEVICE_STATUSA extends Struct {
  @Uint32()
  external int SizeOfStruct;
  external Pointer<Utf8> CallerId;
  external Pointer<Utf8> Csid;
  @Uint32()
  external int CurrentPage;
  @Uint32()
  external int DeviceId;
  external Pointer<Utf8> DeviceName;
  external Pointer<Utf8> DocumentName;
  @Uint32()
  external int JobType;
  external Pointer<Utf8> PhoneNumber;
  external Pointer<Utf8> RoutingString;
  external Pointer<Utf8> SenderName;
  external Pointer<Utf8> RecipientName;
  @Uint32()
  external int Size;
  external FILETIME StartTime;
  @Uint32()
  external int Status;
  external Pointer<Utf8> StatusString;
  external FILETIME SubmittedTime;
  @Uint32()
  external int TotalPages;
  external Pointer<Utf8> Tsid;
  external Pointer<Utf8> UserName;
}

class FAX_DEVICE_STATUSW extends Struct {
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

class FAX_JOB_ENTRYA extends Struct {
  @Uint32()
  external int SizeOfStruct;
  @Uint32()
  external int JobId;
  external Pointer<Utf8> UserName;
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
  external Pointer<Utf8> RecipientNumber;
  external Pointer<Utf8> RecipientName;
  external Pointer<Utf8> Tsid;
  external Pointer<Utf8> SenderName;
  external Pointer<Utf8> SenderCompany;
  external Pointer<Utf8> SenderDept;
  external Pointer<Utf8> BillingCode;
  @Uint32()
  external int ScheduleAction;
  external SYSTEMTIME ScheduleTime;
  @Uint32()
  external int DeliveryReportType;
  external Pointer<Utf8> DeliveryReportAddress;
  external Pointer<Utf8> DocumentName;
}

class FAX_JOB_ENTRYW extends Struct {
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

class FAX_PORT_INFOA extends Struct {
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
  external Pointer<Utf8> DeviceName;
  external Pointer<Utf8> Tsid;
  external Pointer<Utf8> Csid;
}

class FAX_PORT_INFOW extends Struct {
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

class FAX_ROUTING_METHODA extends Struct {
  @Uint32()
  external int SizeOfStruct;
  @Uint32()
  external int DeviceId;
  @Int32()
  external int Enabled;
  external Pointer<Utf8> DeviceName;
  external Pointer<Utf8> Guid;
  external Pointer<Utf8> FriendlyName;
  external Pointer<Utf8> FunctionName;
  external Pointer<Utf8> ExtensionImageName;
  external Pointer<Utf8> ExtensionFriendlyName;
}

class FAX_ROUTING_METHODW extends Struct {
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

class FAX_GLOBAL_ROUTING_INFOA extends Struct {
  @Uint32()
  external int SizeOfStruct;
  @Uint32()
  external int Priority;
  external Pointer<Utf8> Guid;
  external Pointer<Utf8> FriendlyName;
  external Pointer<Utf8> FunctionName;
  external Pointer<Utf8> ExtensionImageName;
  external Pointer<Utf8> ExtensionFriendlyName;
}

class FAX_GLOBAL_ROUTING_INFOW extends Struct {
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

class FAX_COVERPAGE_INFOA extends Struct {
  @Uint32()
  external int SizeOfStruct;
  external Pointer<Utf8> CoverPageName;
  @Int32()
  external int UseServerCoverPage;
  external Pointer<Utf8> RecName;
  external Pointer<Utf8> RecFaxNumber;
  external Pointer<Utf8> RecCompany;
  external Pointer<Utf8> RecStreetAddress;
  external Pointer<Utf8> RecCity;
  external Pointer<Utf8> RecState;
  external Pointer<Utf8> RecZip;
  external Pointer<Utf8> RecCountry;
  external Pointer<Utf8> RecTitle;
  external Pointer<Utf8> RecDepartment;
  external Pointer<Utf8> RecOfficeLocation;
  external Pointer<Utf8> RecHomePhone;
  external Pointer<Utf8> RecOfficePhone;
  external Pointer<Utf8> SdrName;
  external Pointer<Utf8> SdrFaxNumber;
  external Pointer<Utf8> SdrCompany;
  external Pointer<Utf8> SdrAddress;
  external Pointer<Utf8> SdrTitle;
  external Pointer<Utf8> SdrDepartment;
  external Pointer<Utf8> SdrOfficeLocation;
  external Pointer<Utf8> SdrHomePhone;
  external Pointer<Utf8> SdrOfficePhone;
  external Pointer<Utf8> Note;
  external Pointer<Utf8> Subject;
  external SYSTEMTIME TimeSent;
  @Uint32()
  external int PageCount;
}

class FAX_COVERPAGE_INFOW extends Struct {
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

class FAX_JOB_PARAMA extends Struct {
  @Uint32()
  external int SizeOfStruct;
  external Pointer<Utf8> RecipientNumber;
  external Pointer<Utf8> RecipientName;
  external Pointer<Utf8> Tsid;
  external Pointer<Utf8> SenderName;
  external Pointer<Utf8> SenderCompany;
  external Pointer<Utf8> SenderDept;
  external Pointer<Utf8> BillingCode;
  @Uint32()
  external int ScheduleAction;
  external SYSTEMTIME ScheduleTime;
  @Uint32()
  external int DeliveryReportType;
  external Pointer<Utf8> DeliveryReportAddress;
  external Pointer<Utf8> DocumentName;
  @Uint32()
  external int CallHandle;
  @Array(3)
  external Array<IntPtr> Reserved;
}

class FAX_JOB_PARAMW extends Struct {
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

class FAX_EVENTA extends Struct {
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

class FAX_EVENTW extends Struct {
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

class FAX_PRINT_INFOA extends Struct {
  @Uint32()
  external int SizeOfStruct;
  external Pointer<Utf8> DocName;
  external Pointer<Utf8> RecipientName;
  external Pointer<Utf8> RecipientNumber;
  external Pointer<Utf8> SenderName;
  external Pointer<Utf8> SenderCompany;
  external Pointer<Utf8> SenderDept;
  external Pointer<Utf8> SenderBillingCode;
  external Pointer<Utf8> Reserved;
  external Pointer<Utf8> DrEmailAddress;
  external Pointer<Utf8> OutputFileName;
}

class FAX_PRINT_INFOW extends Struct {
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

class FAX_CONTEXT_INFOA extends Struct {
  @Uint32()
  external int SizeOfStruct;
  @IntPtr()
  external int hDC;
  @Array(16)
  external Array<Int8> ServerName;
}

class FAX_CONTEXT_INFOW extends Struct {
  @Uint32()
  external int SizeOfStruct;
  @IntPtr()
  external int hDC;
  @Array(16)
  external Array<Uint16> ServerName;
}

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

class FAX_RECEIVE extends Struct {
  @Uint32()
  external int SizeOfStruct;
  external Pointer<Utf16> FileName;
  external Pointer<Utf16> ReceiverName;
  external Pointer<Utf16> ReceiverNumber;
  @Array(4)
  external Array<Uint32> Reserved;
}

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

class FaxServer extends Struct {}

class FaxDeviceProviders extends Struct {}

class FaxDevices extends Struct {}

class FaxInboundRouting extends Struct {}

class FaxFolders extends Struct {}

class FaxLoggingOptions extends Struct {}

class FaxActivity extends Struct {}

class FaxOutboundRouting extends Struct {}

class FaxReceiptOptions extends Struct {}

class FaxSecurity extends Struct {}

class FaxDocument extends Struct {}

class FaxSender extends Struct {}

class FaxRecipients extends Struct {}

class FaxIncomingArchive extends Struct {}

class FaxIncomingQueue extends Struct {}

class FaxOutgoingArchive extends Struct {}

class FaxOutgoingQueue extends Struct {}

class FaxIncomingMessageIterator extends Struct {}

class FaxIncomingMessage extends Struct {}

class FaxOutgoingJobs extends Struct {}

class FaxOutgoingJob extends Struct {}

class FaxOutgoingMessageIterator extends Struct {}

class FaxOutgoingMessage extends Struct {}

class FaxIncomingJobs extends Struct {}

class FaxIncomingJob extends Struct {}

class FaxDeviceProvider extends Struct {}

class FaxDevice extends Struct {}

class FaxActivityLogging extends Struct {}

class FaxEventLogging extends Struct {}

class FaxOutboundRoutingGroups extends Struct {}

class FaxOutboundRoutingGroup extends Struct {}

class FaxDeviceIds extends Struct {}

class FaxOutboundRoutingRules extends Struct {}

class FaxOutboundRoutingRule extends Struct {}

class FaxInboundRoutingExtensions extends Struct {}

class FaxInboundRoutingExtension extends Struct {}

class FaxInboundRoutingMethods extends Struct {}

class FaxInboundRoutingMethod extends Struct {}

class FaxJobStatus extends Struct {}

class FaxRecipient extends Struct {}

class FaxConfiguration extends Struct {}

class FaxAccountSet extends Struct {}

class FaxAccounts extends Struct {}

class FaxAccount extends Struct {}

class FaxAccountFolders extends Struct {}

class FaxAccountIncomingQueue extends Struct {}

class FaxAccountOutgoingQueue extends Struct {}

class FaxAccountIncomingArchive extends Struct {}

class FaxAccountOutgoingArchive extends Struct {}

class FaxSecurity2 extends Struct {}

class FAX_ROUTE_CALLBACKROUTINES extends Struct {
  @Uint32()
  external int SizeOfStruct;
  external PFAXROUTEADDFILE FaxRouteAddFile;
  external PFAXROUTEDELETEFILE FaxRouteDeleteFile;
  external PFAXROUTEGETFILE FaxRouteGetFile;
  external PFAXROUTEENUMFILES FaxRouteEnumFiles;
  external PFAXROUTEMODIFYROUTINGDATA FaxRouteModifyRoutingData;
}

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
