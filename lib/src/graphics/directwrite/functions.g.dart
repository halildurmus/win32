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
import '../../graphics/directwrite/structs.g.dart';
import '../../system/com/IUnknown.dart'; // -----------------------------------------------------------------------

// dwrite.dll
// -----------------------------------------------------------------------
final _dwrite = DynamicLibrary.open('dwrite.dll');

int DWriteCreateFactory(
  int factoryType,
  Pointer<GUID> iid,
  Pointer<Pointer<COMObject>> factory,
) =>
    _DWriteCreateFactory(
      factoryType,
      iid,
      factory,
    );

late final _DWriteCreateFactory = _dwrite.lookupFunction<
    Int32 Function(
  Int32 factoryType,
  Pointer<GUID> iid,
  Pointer<Pointer<COMObject>> factory,
),
    int Function(
  int factoryType,
  Pointer<GUID> iid,
  Pointer<Pointer<COMObject>> factory,
)>('DWriteCreateFactory');
