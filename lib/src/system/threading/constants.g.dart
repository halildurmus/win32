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

const WAIT_OBJECT_0 = 0x0;
const WAIT_ABANDONED = 0x80;
const WAIT_ABANDONED_0 = 0x80;
const WAIT_IO_COMPLETION = 0xc0;
const PRIVATE_NAMESPACE_FLAG_DESTROY = 0x1;
const PROC_THREAD_ATTRIBUTE_REPLACE_VALUE = 0x1;
const THREAD_POWER_THROTTLING_CURRENT_VERSION = 0x1;
const THREAD_POWER_THROTTLING_EXECUTION_SPEED = 0x1;
const THREAD_POWER_THROTTLING_VALID_FLAGS = 0x1;
const PME_CURRENT_VERSION = 0x1;
const PME_FAILFAST_ON_COMMIT_FAIL_DISABLE = 0x0;
const PME_FAILFAST_ON_COMMIT_FAIL_ENABLE = 0x1;
const PROCESS_POWER_THROTTLING_CURRENT_VERSION = 0x1;
const PROCESS_POWER_THROTTLING_EXECUTION_SPEED = 0x1;
const PROCESS_POWER_THROTTLING_IGNORE_TIMER_RESOLUTION = 0x4;
const PROCESS_LEAP_SECOND_INFO_FLAG_ENABLE_SIXTY_SECOND = 0x1;
const PROCESS_LEAP_SECOND_INFO_VALID_FLAGS = 0x1;
const INIT_ONCE_CHECK_ONLY = 0x1;
const INIT_ONCE_ASYNC = 0x2;
const INIT_ONCE_INIT_FAILED = 0x4;
const INIT_ONCE_CTX_RESERVED_BITS = 0x2;
const CONDITION_VARIABLE_LOCKMODE_SHARED = 0x1;
const MUTEX_MODIFY_STATE = 0x1;
const CREATE_MUTEX_INITIAL_OWNER = 0x1;
const CREATE_WAITABLE_TIMER_MANUAL_RESET = 0x1;
const CREATE_WAITABLE_TIMER_HIGH_RESOLUTION = 0x2;
const SYNCHRONIZATION_BARRIER_FLAGS_SPIN_ONLY = 0x1;
const SYNCHRONIZATION_BARRIER_FLAGS_BLOCK_ONLY = 0x2;
const SYNCHRONIZATION_BARRIER_FLAGS_NO_DELETE = 0x4;
