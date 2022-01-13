// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../combase.dart';
import '../../guid.dart'; // -----------------------------------------------------------------------

// user32.dll
// -----------------------------------------------------------------------
final _user32 = DynamicLibrary.open('user32.dll');

int UnregisterDeviceNotification(
  Pointer $Handle,
) =>
    _UnregisterDeviceNotification(
      $Handle,
    );

late final _UnregisterDeviceNotification = _user32.lookupFunction<
    Int32 Function(
  Pointer $Handle,
),
    int Function(
  Pointer $Handle,
)>('UnregisterDeviceNotification');
