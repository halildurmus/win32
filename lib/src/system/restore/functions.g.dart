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
import '../../system/restore/structs.g.dart'; // -----------------------------------------------------------------------

// sfc.dll
// -----------------------------------------------------------------------
final _sfc = DynamicLibrary.open('sfc.dll');

int SRSetRestorePoint(
  Pointer<RESTOREPOINTINFO> pRestorePtSpec,
  Pointer<STATEMGRSTATUS> pSMgrStatus,
) =>
    _SRSetRestorePoint(
      pRestorePtSpec,
      pSMgrStatus,
    );

late final _SRSetRestorePoint = _sfc.lookupFunction<
    Int32 Function(
  Pointer<RESTOREPOINTINFO> pRestorePtSpec,
  Pointer<STATEMGRSTATUS> pSMgrStatus,
),
    int Function(
  Pointer<RESTOREPOINTINFO> pRestorePtSpec,
  Pointer<STATEMGRSTATUS> pSMgrStatus,
)>('SRSetRestorePointW');
