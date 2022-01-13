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
import '../../storage/vss/IVssExpressWriter.dart'; // -----------------------------------------------------------------------

// vssapi.dll
// -----------------------------------------------------------------------
final _vssapi = DynamicLibrary.open('vssapi.dll');

int CreateVssExpressWriterInternal(
  Pointer<Pointer<COMObject>> ppWriter,
) =>
    _CreateVssExpressWriterInternal(
      ppWriter,
    );

late final _CreateVssExpressWriterInternal = _vssapi.lookupFunction<
    Int32 Function(
  Pointer<Pointer<COMObject>> ppWriter,
),
    int Function(
  Pointer<Pointer<COMObject>> ppWriter,
)>('CreateVssExpressWriterInternal');
