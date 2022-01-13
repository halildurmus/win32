// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import '../../combase.dart';
import '../../guid.dart';
import '../../system/hypervisor/structs.g.dart';
import '../../foundation/structs.g.dart';

typedef FOUND_IMAGE_CALLBACK = Int32 Function(
  Pointer Context,
  Pointer<DOS_IMAGE_INFO> ImageInfo,
);
typedef GUEST_SYMBOLS_PROVIDER_DEBUG_INFO_CALLBACK = Void Function(
  Pointer<Utf8> InfoMessage,
);
typedef HDV_PCI_DEVICE_GET_DETAILS = Int32 Function(
  Pointer deviceContext,
  Pointer<HDV_PCI_PNP_ID> pnpId,
  Uint32 probedBarsCount,
  Pointer<Uint32> probedBars,
);
typedef HDV_PCI_DEVICE_INITIALIZE = Int32 Function(
  Pointer deviceContext,
);
typedef HDV_PCI_DEVICE_SET_CONFIGURATION = Int32 Function(
  Pointer deviceContext,
  Uint32 configurationValueCount,
  Pointer<Pointer<Utf16>> configurationValues,
);
typedef HDV_PCI_DEVICE_START = Int32 Function(
  Pointer deviceContext,
);
typedef HDV_PCI_DEVICE_STOP = Void Function(
  Pointer deviceContext,
);
typedef HDV_PCI_DEVICE_TEARDOWN = Void Function(
  Pointer deviceContext,
);
typedef HDV_PCI_READ_CONFIG_SPACE = Int32 Function(
  Pointer deviceContext,
  Uint32 offset,
  Pointer<Uint32> value,
);
typedef HDV_PCI_READ_INTERCEPTED_MEMORY = Int32 Function(
  Pointer deviceContext,
  Int32 barIndex,
  Uint64 offset,
  Uint64 length,
  Pointer<Uint8> value,
);
typedef HDV_PCI_WRITE_CONFIG_SPACE = Int32 Function(
  Pointer deviceContext,
  Uint32 offset,
  Uint32 value,
);
typedef HDV_PCI_WRITE_INTERCEPTED_MEMORY = Int32 Function(
  Pointer deviceContext,
  Int32 barIndex,
  Uint64 offset,
  Uint64 length,
  Pointer<Uint8> value,
);
typedef WHV_EMULATOR_GET_VIRTUAL_PROCESSOR_REGISTERS_CALLBACK = Int32 Function(
  Pointer Context,
  Pointer<Int32> RegisterNames,
  Uint32 RegisterCount,
  Pointer<WHV_REGISTER_VALUE> RegisterValues,
);
typedef WHV_EMULATOR_IO_PORT_CALLBACK = Int32 Function(
  Pointer Context,
  Pointer<WHV_EMULATOR_IO_ACCESS_INFO> IoAccess,
);
typedef WHV_EMULATOR_MEMORY_CALLBACK = Int32 Function(
  Pointer Context,
  Pointer<WHV_EMULATOR_MEMORY_ACCESS_INFO> MemoryAccess,
);
typedef WHV_EMULATOR_SET_VIRTUAL_PROCESSOR_REGISTERS_CALLBACK = Int32 Function(
  Pointer Context,
  Pointer<Int32> RegisterNames,
  Uint32 RegisterCount,
  Pointer<WHV_REGISTER_VALUE> RegisterValues,
);
typedef WHV_EMULATOR_TRANSLATE_GVA_PAGE_CALLBACK = Int32 Function(
  Pointer Context,
  Uint64 Gva,
  Uint32 TranslateFlags,
  Pointer<Int32> TranslationResult,
  Pointer<Uint64> Gpa,
);
