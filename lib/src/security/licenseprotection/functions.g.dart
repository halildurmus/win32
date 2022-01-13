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
import '../../security/licenseprotection/structs.g.dart'; // -----------------------------------------------------------------------

// licenseprotection.dll
// -----------------------------------------------------------------------
final _licenseprotection = DynamicLibrary.open('licenseprotection.dll');

int RegisterLicenseKeyWithExpiration(
  Pointer<Utf16> licenseKey,
  int validityInDays,
  Pointer<Int32> status,
) =>
    _RegisterLicenseKeyWithExpiration(
      licenseKey,
      validityInDays,
      status,
    );

late final _RegisterLicenseKeyWithExpiration =
    _licenseprotection.lookupFunction<
        Int32 Function(
  Pointer<Utf16> licenseKey,
  Uint32 validityInDays,
  Pointer<Int32> status,
),
        int Function(
  Pointer<Utf16> licenseKey,
  int validityInDays,
  Pointer<Int32> status,
)>('RegisterLicenseKeyWithExpiration');

int ValidateLicenseKeyProtection(
  Pointer<Utf16> licenseKey,
  Pointer<FILETIME> notValidBefore,
  Pointer<FILETIME> notValidAfter,
  Pointer<Int32> status,
) =>
    _ValidateLicenseKeyProtection(
      licenseKey,
      notValidBefore,
      notValidAfter,
      status,
    );

late final _ValidateLicenseKeyProtection = _licenseprotection.lookupFunction<
    Int32 Function(
  Pointer<Utf16> licenseKey,
  Pointer<FILETIME> notValidBefore,
  Pointer<FILETIME> notValidAfter,
  Pointer<Int32> status,
),
    int Function(
  Pointer<Utf16> licenseKey,
  Pointer<FILETIME> notValidBefore,
  Pointer<FILETIME> notValidAfter,
  Pointer<Int32> status,
)>('ValidateLicenseKeyProtection');
