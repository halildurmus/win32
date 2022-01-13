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

const PKEY_PhotoAcquire_RelativePathname = 0x0;
const PKEY_PhotoAcquire_FinalFilename = 0x0;
const PKEY_PhotoAcquire_GroupTag = 0x0;
const PKEY_PhotoAcquire_TransferResult = 0x0;
const PKEY_PhotoAcquire_OriginalFilename = 0x0;
const PKEY_PhotoAcquire_CameraSequenceNumber = 0x0;
const PKEY_PhotoAcquire_IntermediateFile = 0x0;
const PKEY_PhotoAcquire_SkipImport = 0x0;
const PKEY_PhotoAcquire_DuplicateDetectionID = 0x0;
const PROGRESS_INDETERMINATE = 0xffffffff;
const PHOTOACQ_ERROR_RESTART_REQUIRED = 0x8004a001;
const PHOTOACQ_RUN_DEFAULT = 0x0;
const PHOTOACQ_NO_GALLERY_LAUNCH = 0x1;
const PHOTOACQ_DISABLE_AUTO_ROTATE = 0x2;
const PHOTOACQ_DISABLE_PLUGINS = 0x4;
const PHOTOACQ_DISABLE_GROUP_TAG_PROMPT = 0x8;
const PHOTOACQ_DISABLE_DB_INTEGRATION = 0x10;
const PHOTOACQ_DELETE_AFTER_ACQUIRE = 0x20;
const PHOTOACQ_DISABLE_DUPLICATE_DETECTION = 0x40;
const PHOTOACQ_ENABLE_THUMBNAIL_CACHING = 0x80;
const PHOTOACQ_DISABLE_METADATA_WRITE = 0x100;
const PHOTOACQ_DISABLE_THUMBNAIL_PROGRESS = 0x200;
const PHOTOACQ_DISABLE_SETTINGS_LINK = 0x400;
const PHOTOACQ_ABORT_ON_SETTINGS_UPDATE = 0x800;
const PHOTOACQ_IMPORT_VIDEO_AS_MULTIPLE_FILES = 0x1000;
const DSF_WPD_DEVICES = 0x1;
const DSF_WIA_CAMERAS = 0x2;
const DSF_WIA_SCANNERS = 0x4;
const DSF_STI_DEVICES = 0x8;
const DSF_TWAIN_DEVICES = 0x10;
const DSF_FS_DEVICES = 0x20;
const DSF_DV_DEVICES = 0x40;
const DSF_ALL_DEVICES = 0xffff;
const DSF_CPL_MODE = 0x10000;
const DSF_SHOW_OFFLINE = 0x20000;
const PAPS_PRESAVE = 0x0;
const PAPS_POSTSAVE = 0x1;
const PAPS_CLEANUP = 0x2;
const PhotoAcquireAutoPlayDropTarget = '{00F20EB5-8FD6-4D9D-B75E-36801766C8F1}';
const PhotoAcquireAutoPlayHWEventHandler =
    '{00F2B433-44E4-4D88-B2B0-2698A0A91DBA}';
