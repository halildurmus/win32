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
import '../../system/applicationverifier/structs.g.dart';
import '../../system/applicationverifier/callbacks.g.dart'; // -----------------------------------------------------------------------

// verifier.dll
// -----------------------------------------------------------------------
final _verifier = DynamicLibrary.open('verifier.dll');

int VerifierEnumerateResource(
  int Process,
  int Flags,
  int ResourceType,
  Pointer<NativeFunction<AVRF_RESOURCE_ENUMERATE_CALLBACK>> ResourceCallback,
  Pointer EnumerationContext,
) =>
    _VerifierEnumerateResource(
      Process,
      Flags,
      ResourceType,
      ResourceCallback,
      EnumerationContext,
    );

late final _VerifierEnumerateResource = _verifier.lookupFunction<
    Uint32 Function(
  IntPtr Process,
  Uint32 Flags,
  Int32 ResourceType,
  Pointer<NativeFunction<AVRF_RESOURCE_ENUMERATE_CALLBACK>> ResourceCallback,
  Pointer EnumerationContext,
),
    int Function(
  int Process,
  int Flags,
  int ResourceType,
  Pointer<NativeFunction<AVRF_RESOURCE_ENUMERATE_CALLBACK>> ResourceCallback,
  Pointer EnumerationContext,
)>('VerifierEnumerateResource');
