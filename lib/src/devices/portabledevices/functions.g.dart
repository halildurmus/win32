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

// dmprocessxmlfiltered.dll
// -----------------------------------------------------------------------
final _dmprocessxmlfiltered = DynamicLibrary.open('dmprocessxmlfiltered.dll');

int DMProcessConfigXMLFiltered(
  Pointer<Utf16> pszXmlIn,
  Pointer<Pointer<Utf16>> rgszAllowedCspNodes,
  int dwNumAllowedCspNodes,
  Pointer<Pointer<Utf16>> pbstrXmlOut,
) =>
    _DMProcessConfigXMLFiltered(
      pszXmlIn,
      rgszAllowedCspNodes,
      dwNumAllowedCspNodes,
      pbstrXmlOut,
    );

late final _DMProcessConfigXMLFiltered = _dmprocessxmlfiltered.lookupFunction<
    Int32 Function(
  Pointer<Utf16> pszXmlIn,
  Pointer<Pointer<Utf16>> rgszAllowedCspNodes,
  Uint32 dwNumAllowedCspNodes,
  Pointer<Pointer<Utf16>> pbstrXmlOut,
),
    int Function(
  Pointer<Utf16> pszXmlIn,
  Pointer<Pointer<Utf16>> rgszAllowedCspNodes,
  int dwNumAllowedCspNodes,
  Pointer<Pointer<Utf16>> pbstrXmlOut,
)>('DMProcessConfigXMLFiltered');
