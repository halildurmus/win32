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

const APOERR_ALREADY_INITIALIZED = 0x887d0001;
const APOERR_NOT_INITIALIZED = 0x887d0002;
const APOERR_FORMAT_NOT_SUPPORTED = 0x887d0003;
const APOERR_INVALID_APO_CLSID = 0x887d0004;
const APOERR_BUFFERS_OVERLAP = 0x887d0005;
const APOERR_ALREADY_UNLOCKED = 0x887d0006;
const APOERR_NUM_CONNECTIONS_INVALID = 0x887d0007;
const APOERR_INVALID_OUTPUT_MAXFRAMECOUNT = 0x887d0008;
const APOERR_INVALID_CONNECTION_FORMAT = 0x887d0009;
const APOERR_APO_LOCKED = 0x887d000a;
const APOERR_INVALID_COEFFCOUNT = 0x887d000b;
const APOERR_INVALID_COEFFICIENT = 0x887d000c;
const APOERR_INVALID_CURVE_PARAM = 0x887d000d;
const APOERR_INVALID_INPUTID = 0x887d000e;
const AUDIO_MIN_FRAMERATE = 0x0;
const AUDIO_MAX_FRAMERATE = 0x0;
const AUDIO_MIN_CHANNELS = 0x1;
const AUDIO_MAX_CHANNELS = 0x1000;
const PKEY_FX_Association = 0x0;
const PKEY_FX_PreMixEffectClsid = 0x0;
const PKEY_FX_PostMixEffectClsid = 0x0;
const PKEY_FX_UserInterfaceClsid = 0x0;
const PKEY_FX_FriendlyName = 0x0;
const PKEY_FX_StreamEffectClsid = 0x0;
const PKEY_FX_ModeEffectClsid = 0x0;
const PKEY_FX_EndpointEffectClsid = 0x0;
const PKEY_FX_KeywordDetector_StreamEffectClsid = 0x0;
const PKEY_FX_KeywordDetector_ModeEffectClsid = 0x0;
const PKEY_FX_KeywordDetector_EndpointEffectClsid = 0x0;
const PKEY_FX_Offload_StreamEffectClsid = 0x0;
const PKEY_FX_Offload_ModeEffectClsid = 0x0;
const PKEY_CompositeFX_StreamEffectClsid = 0x0;
const PKEY_CompositeFX_ModeEffectClsid = 0x0;
const PKEY_CompositeFX_EndpointEffectClsid = 0x0;
const PKEY_CompositeFX_KeywordDetector_StreamEffectClsid = 0x0;
const PKEY_CompositeFX_KeywordDetector_ModeEffectClsid = 0x0;
const PKEY_CompositeFX_KeywordDetector_EndpointEffectClsid = 0x0;
const PKEY_CompositeFX_Offload_StreamEffectClsid = 0x0;
const PKEY_CompositeFX_Offload_ModeEffectClsid = 0x0;
const PKEY_SFX_ProcessingModes_Supported_For_Streaming = 0x0;
const PKEY_MFX_ProcessingModes_Supported_For_Streaming = 0x0;
const PKEY_EFX_ProcessingModes_Supported_For_Streaming = 0x0;
const PKEY_SFX_KeywordDetector_ProcessingModes_Supported_For_Streaming = 0x0;
const PKEY_MFX_KeywordDetector_ProcessingModes_Supported_For_Streaming = 0x0;
const PKEY_EFX_KeywordDetector_ProcessingModes_Supported_For_Streaming = 0x0;
const PKEY_SFX_Offload_ProcessingModes_Supported_For_Streaming = 0x0;
const PKEY_MFX_Offload_ProcessingModes_Supported_For_Streaming = 0x0;
const PKEY_APO_SWFallback_ProcessingModes = 0x0;
const SID_AudioProcessingObjectRTQueue = 0x0;
const SID_AudioProcessingObjectLoggingService = 0x0;
const AUDIOMEDIATYPE_EQUAL_FORMAT_TYPES = 0x2;
const AUDIOMEDIATYPE_EQUAL_FORMAT_DATA = 0x4;
const AUDIOMEDIATYPE_EQUAL_FORMAT_USER_DATA = 0x8;
