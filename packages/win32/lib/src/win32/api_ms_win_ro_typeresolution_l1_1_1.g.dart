// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, non_constant_identifier_names
// ignore_for_file: constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../variant.dart';

final _api_ms_win_ro_typeresolution_l1_1_1 =
    DynamicLibrary.open('api-ms-win-ro-typeresolution-l1-1-1.dll');

/// Returns true or false to indicate whether the API contract with the
/// specified name and major version number is present.
///
/// ```c
/// HRESULT RoIsApiContractMajorVersionPresent(
///   PCWSTR name,
///   UINT16 majorVersion,
///   BOOL   *present
/// );
/// ```
/// {@category winrt}
int RoIsApiContractMajorVersionPresent(
        Pointer<Utf16> name, int majorVersion, Pointer<Int32> present) =>
    _RoIsApiContractMajorVersionPresent(name, majorVersion, present);

final _RoIsApiContractMajorVersionPresent =
    _api_ms_win_ro_typeresolution_l1_1_1.lookupFunction<
        Int32 Function(
            Pointer<Utf16> name, Uint16 majorVersion, Pointer<Int32> present),
        int Function(Pointer<Utf16> name, int majorVersion,
            Pointer<Int32> present)>('RoIsApiContractMajorVersionPresent');

/// Returns true or false to indicate whether the API contract with the
/// specified name and major and minor version number is present.
///
/// ```c
/// HRESULT RoIsApiContractPresent(
///   PCWSTR name,
///   UINT16 majorVersion,
///   UINT16 minorVersion,
///   BOOL   *present
/// );
/// ```
/// {@category winrt}
int RoIsApiContractPresent(Pointer<Utf16> name, int majorVersion,
        int minorVersion, Pointer<Int32> present) =>
    _RoIsApiContractPresent(name, majorVersion, minorVersion, present);

final _RoIsApiContractPresent =
    _api_ms_win_ro_typeresolution_l1_1_1.lookupFunction<
        Int32 Function(Pointer<Utf16> name, Uint16 majorVersion,
            Uint16 minorVersion, Pointer<Int32> present),
        int Function(Pointer<Utf16> name, int majorVersion, int minorVersion,
            Pointer<Int32> present)>('RoIsApiContractPresent');
