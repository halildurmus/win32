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
import '../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// wsclient.dll
// -----------------------------------------------------------------------
final _wsclient = DynamicLibrary.open('wsclient.dll');

int AcquireDeveloperLicense(
  int hwndParent,
  Pointer<FILETIME> pExpiration,
) =>
    _AcquireDeveloperLicense(
      hwndParent,
      pExpiration,
    );

late final _AcquireDeveloperLicense = _wsclient.lookupFunction<
    Int32 Function(
  IntPtr hwndParent,
  Pointer<FILETIME> pExpiration,
),
    int Function(
  int hwndParent,
  Pointer<FILETIME> pExpiration,
)>('AcquireDeveloperLicense');

int CheckDeveloperLicense(
  Pointer<FILETIME> pExpiration,
) =>
    _CheckDeveloperLicense(
      pExpiration,
    );

late final _CheckDeveloperLicense = _wsclient.lookupFunction<
    Int32 Function(
  Pointer<FILETIME> pExpiration,
),
    int Function(
  Pointer<FILETIME> pExpiration,
)>('CheckDeveloperLicense');

int RemoveDeveloperLicense(
  int hwndParent,
) =>
    _RemoveDeveloperLicense(
      hwndParent,
    );

late final _RemoveDeveloperLicense = _wsclient.lookupFunction<
    Int32 Function(
  IntPtr hwndParent,
),
    int Function(
  int hwndParent,
)>('RemoveDeveloperLicense');
