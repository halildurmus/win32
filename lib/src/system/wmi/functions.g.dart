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
import '../../system/wmi/structs.g.dart'; // -----------------------------------------------------------------------

// mi.dll
// -----------------------------------------------------------------------
final _mi = DynamicLibrary.open('mi.dll');

int MI_Application_InitializeV1(
  int flags,
  Pointer<Uint16> applicationID,
  Pointer<Pointer<MI_Instance>> extendedError,
  Pointer<MI_Application> application,
) =>
    _MI_Application_InitializeV1(
      flags,
      applicationID,
      extendedError,
      application,
    );

late final _MI_Application_InitializeV1 = _mi.lookupFunction<
    Int32 Function(
  Uint32 flags,
  Pointer<Uint16> applicationID,
  Pointer<Pointer<MI_Instance>> extendedError,
  Pointer<MI_Application> application,
),
    int Function(
  int flags,
  Pointer<Uint16> applicationID,
  Pointer<Pointer<MI_Instance>> extendedError,
  Pointer<MI_Application> application,
)>('MI_Application_InitializeV1');
