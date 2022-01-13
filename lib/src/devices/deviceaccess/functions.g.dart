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
import '../../foundation/structs.g.dart';
import '../../devices/deviceaccess/ICreateDeviceAccessAsync.dart'; // -----------------------------------------------------------------------

// deviceaccess.dll
// -----------------------------------------------------------------------
final _deviceaccess = DynamicLibrary.open('deviceaccess.dll');

int CreateDeviceAccessInstance(
  Pointer<Utf16> deviceInterfacePath,
  int desiredAccess,
  Pointer<Pointer<COMObject>> createAsync,
) =>
    _CreateDeviceAccessInstance(
      deviceInterfacePath,
      desiredAccess,
      createAsync,
    );

late final _CreateDeviceAccessInstance = _deviceaccess.lookupFunction<
    Int32 Function(
  Pointer<Utf16> deviceInterfacePath,
  Uint32 desiredAccess,
  Pointer<Pointer<COMObject>> createAsync,
),
    int Function(
  Pointer<Utf16> deviceInterfacePath,
  int desiredAccess,
  Pointer<Pointer<COMObject>> createAsync,
)>('CreateDeviceAccessInstance');
