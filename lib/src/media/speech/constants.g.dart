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

const SP_LOW_CONFIDENCE = 0xffffffff;
const SP_NORMAL_CONFIDENCE = 0x0;
const DEFAULT_WEIGHT = 0x1;
const SP_MAX_WORD_LENGTH = 0x80;
const SP_MAX_PRON_LENGTH = 0x180;
const SP_EMULATE_RESULT = 0x40000000;
const SP_STREAMPOS_ASAP = 0x0;
const SP_STREAMPOS_REALTIME = 0xffffffff;
const SPRP_NORMAL = 0x0;
const SP_MAX_LANGIDS = 0x14;
const SAPI_ERROR_BASE = 0x5000;
const Speech_Default_Weight = 0x3f800000;
const Speech_Max_Word_Length = 0x80;
const Speech_Max_Pron_Length = 0x180;
const Speech_StreamPos_Asap = 0x0;
const Speech_StreamPos_RealTime = 0xffffffff;
const SpeechAllElements = 0xffffffff;
const SpMMAudioEnum = '{AB1890A0-E91F-11D2-BB91-00C04F8EE6C0}';
const SpMMAudioIn = '{CF3D2E50-53F2-11D2-960C-00C04F8EE628}';
const SpMMAudioOut = '{A8C680EB-3D32-11D2-9EE7-00C04F797396}';
const SpSharedRecoContext = '{47206204-5ECA-11D2-960F-00C04F8EE628}';
const SpInprocRecognizer = '{41B89B6B-9399-11D2-9623-00C04F8EE628}';
const SpSharedRecognizer = '{3BEE4890-4FE9-4A37-8C1E-5E7E12791C1F}';
const SpUnCompressedLexicon = '{C9E37C15-DF92-4727-85D6-72E5EEB6995A}';
const SpCompressedLexicon = '{90903716-2F42-11D3-9C26-00C04F8EF87C}';
const SpNullPhoneConverter = '{455F24E9-7396-4A16-9715-7C0FDBE3EFE3}';
const SpTextSelectionInformation = '{0F92030A-CBFD-4AB8-A164-FF5985547FF6}';
const SpPhraseInfoBuilder = '{C23FC28D-C55F-4720-8B32-91F73C2BD5D1}';
const SpAudioFormat = '{9EF96870-E160-4792-820D-48CF0649E4EC}';
const SpWaveFormatEx = '{C79A574C-63BE-44B9-801F-283F87F898BE}';
const SpInProcRecoContext = '{73AD6842-ACE0-45E8-A4DD-8795881A2C2A}';
const SpCustomStream = '{8DBEF13F-1948-4AA8-8CF0-048EEBED95D8}';
const SpFileStream = '{947812B3-2AE1-4644-BA86-9E90DED7EC91}';
const SpMemoryStream = '{5FB7EF7D-DFF4-468A-B6B7-2FCBD188F994}';
