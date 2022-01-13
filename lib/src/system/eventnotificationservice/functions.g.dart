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
import '../../system/eventnotificationservice/structs.g.dart'; // -----------------------------------------------------------------------

// sensapi.dll
// -----------------------------------------------------------------------
final _sensapi = DynamicLibrary.open('sensapi.dll');

int IsDestinationReachable(
  Pointer<Utf16> lpszDestination,
  Pointer<QOCINFO> lpQOCInfo,
) =>
    _IsDestinationReachable(
      lpszDestination,
      lpQOCInfo,
    );

late final _IsDestinationReachable = _sensapi.lookupFunction<
    Int32 Function(
  Pointer<Utf16> lpszDestination,
  Pointer<QOCINFO> lpQOCInfo,
),
    int Function(
  Pointer<Utf16> lpszDestination,
  Pointer<QOCINFO> lpQOCInfo,
)>('IsDestinationReachableW');

int IsNetworkAlive(
  Pointer<Uint32> lpdwFlags,
) =>
    _IsNetworkAlive(
      lpdwFlags,
    );

late final _IsNetworkAlive = _sensapi.lookupFunction<
    Int32 Function(
  Pointer<Uint32> lpdwFlags,
),
    int Function(
  Pointer<Uint32> lpdwFlags,
)>('IsNetworkAlive');
