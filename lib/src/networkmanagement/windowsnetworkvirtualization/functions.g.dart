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
import '../../networkmanagement/windowsnetworkvirtualization/structs.g.dart';
import '../../specialTypes.dart'; // -----------------------------------------------------------------------

// wnvapi.dll
// -----------------------------------------------------------------------
final _wnvapi = DynamicLibrary.open('wnvapi.dll');

int WnvOpen() => _WnvOpen();

late final _WnvOpen =
    _wnvapi.lookupFunction<IntPtr Function(), int Function()>('WnvOpen');

int WnvRequestNotification(
  int WnvHandle,
  Pointer<WNV_NOTIFICATION_PARAM> NotificationParam,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<Uint32> BytesTransferred,
) =>
    _WnvRequestNotification(
      WnvHandle,
      NotificationParam,
      Overlapped,
      BytesTransferred,
    );

late final _WnvRequestNotification = _wnvapi.lookupFunction<
    Uint32 Function(
  IntPtr WnvHandle,
  Pointer<WNV_NOTIFICATION_PARAM> NotificationParam,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<Uint32> BytesTransferred,
),
    int Function(
  int WnvHandle,
  Pointer<WNV_NOTIFICATION_PARAM> NotificationParam,
  Pointer<OVERLAPPED> Overlapped,
  Pointer<Uint32> BytesTransferred,
)>('WnvRequestNotification');
