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

const ARRAY_SEP_CHAR = 0x9;
const WPCCHANNEL = 0x10;
const WPC_SETTINGS_LOCATE = 0x14;
const WPC_SETTINGS_MODIFY = 0x15;
const WPC_APP_LAUNCH = 0x16;
const WPC_SYSTEM = 0x17;
const WPC_WEB = 0x18;
const WPCPROV_TASK_SettingChange = 0x1;
const WPCPROV_TASK_GameStart = 0x2;
const WPCPROV_TASK_UrlVisit = 0x3;
const WPCPROV_TASK_EmailReceived = 0x4;
const WPCPROV_TASK_EmailSent = 0x5;
const WPCPROV_TASK_MediaPlayback = 0x6;
const WPCPROV_TASK_IMInvitation = 0x7;
const WPCPROV_TASK_IMJoin = 0x8;
const WPCPROV_TASK_IMLeave = 0x9;
const WPCPROV_TASK_FileDownload = 0xa;
const WPCPROV_TASK_IMFeature = 0xb;
const WPCPROV_TASK_Custom = 0xd;
const WPCPROV_TASK_EmailContact = 0xe;
const WPCPROV_TASK_IMContact = 0xf;
const WPCPROV_TASK_AppBlocked = 0x10;
const WPCPROV_TASK_AppOverride = 0x11;
const WPCPROV_TASK_WebOverride = 0x12;
const WPCPROV_TASK_WebsiteVisit = 0x13;
const WPCPROV_TASK_Application = 0x14;
const WPCPROV_TASK_ComputerUsage = 0x15;
const WPCPROV_TASK_ContentUsage = 0x16;
const WPCPROV_KEYWORD_WPC = 0x10;
const WPCPROV_KEYWORD_ThirdParty = 0x20;
const WPCEVENT_SYS_SETTINGCHANGE_value = 0x1;
const WPCEVENT_GAME_START_value = 0x2;
const WPCEVENT_WEB_URLVISIT_value = 0x3;
const WPCEVENT_EMAIL_RECEIVED_value = 0x4;
const WPCEVENT_EMAIL_SENT_value = 0x5;
const WPCEVENT_MEDIA_PLAYBACK_value = 0x6;
const WPCEVENT_IM_INVITATION_value = 0x7;
const WPCEVENT_IM_JOIN_value = 0x8;
const WPCEVENT_IM_LEAVE_value = 0x9;
const WPCEVENT_WEB_FILEDOWNLOAD_value = 0xa;
const WPCEVENT_IM_FEATURE_value = 0xb;
const WPCEVENT_CUSTOM_value = 0xd;
const WPCEVENT_EMAIL_CONTACT_value = 0xe;
const WPCEVENT_IM_CONTACT_value = 0xf;
const WPCEVENT_SYSTEM_APPBLOCKED_value = 0x10;
const WPCEVENT_APPOVERRIDE_value = 0x11;
const WPCEVENT_WEBOVERRIDE_value = 0x12;
const WPCEVENT_WEB_WEBSITEVISIT_value = 0x13;
const WPCEVENT_APPLICATION_value = 0x14;
const WPCEVENT_COMPUTERUSAGE_value = 0x15;
const WPCEVENT_CONTENTUSAGE_value = 0x16;
const MSG_Keyword_WPC = 0x10000005;
const MSG_Keyword_ThirdParty = 0x10000006;
const MSG_Opcode_Locate = 0x30000014;
const MSG_Opcode_Modify = 0x30000015;
const MSG_Opcode_Launch = 0x30000016;
const MSG_Opcode_System = 0x30000017;
const MSG_Opcode_Web = 0x30000018;
const MSG_Task_SettingChange = 0x70000001;
const MSG_Task_GameStart = 0x70000002;
const MSG_Task_UrlVisit = 0x70000003;
const MSG_Task_EmailReceived = 0x70000004;
const MSG_Task_EmailSent = 0x70000005;
const MSG_Task_MediaPlayback = 0x70000006;
const MSG_Task_IMInvitation = 0x70000007;
const MSG_Task_IMJoin = 0x70000008;
const MSG_Task_IMLeave = 0x70000009;
const MSG_Task_FileDownload = 0x7000000a;
const MSG_Task_IMFeature = 0x7000000b;
const MSG_Task_Custom = 0x7000000d;
const MSG_Task_EmailContact = 0x7000000e;
const MSG_Task_IMContact = 0x7000000f;
const MSG_Task_AppBlocked = 0x70000010;
const MSG_Task_AppOverride = 0x70000011;
const MSG_Task_WebOverride = 0x70000012;
const MSG_Task_WebsiteVisit = 0x70000013;
const MSG_Task_Application = 0x70000014;
const MSG_Task_ComputerUsage = 0x70000015;
const MSG_Task_ContentUsage = 0x70000016;
const MSG_Publisher_Name = 0x90000001;
const MSG_Event_SettingChange = 0xb0000001;
const MSG_Event_GameStart = 0xb0000002;
const MSG_Event_UrlVisit = 0xb0000003;
const MSG_Event_EmailReceived = 0xb0000004;
const MSG_Event_EmailSent = 0xb0000005;
const MSG_Event_MediaPlayback = 0xb0000006;
const MSG_Event_IMInvitation = 0xb0000007;
const MSG_Event_IMJoin = 0xb0000008;
const MSG_Event_IMLeave = 0xb0000009;
const MSG_Event_FileDownload = 0xb000000a;
const MSG_Event_IMFeature = 0xb000000b;
const MSG_Event_Custom = 0xb000000d;
const MSG_Event_EmailContact = 0xb000000e;
const MSG_Event_IMContact = 0xb000000f;
const MSG_Event_AppBlocked = 0xb0000010;
const MSG_Event_AppOverride = 0xb0000011;
const MSG_Event_WebOverride = 0xb0000012;
const MSG_Event_WebsiteVisit = 0xb0000013;
const MSG_Event_Application = 0xb0000014;
const MSG_Event_ComputerUsage = 0xb0000015;
const MSG_Event_ContentUsage = 0xb0000016;
const FACILITY_WPC = 0x999;
const WPCPROV = 0x0;
const WpcSettingsProvider = '{355DFFAA-3B9F-435C-B428-5D44290BC5F2}';
const WpcProviderSupport = '{BB18C7A0-2186-4BE0-97D8-04847B628E02}';
