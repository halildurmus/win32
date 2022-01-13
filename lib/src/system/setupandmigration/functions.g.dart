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
import '../../system/setupandmigration/callbacks.g.dart'; // -----------------------------------------------------------------------

// kernel32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('kernel32.dll');

int OOBEComplete(
  Pointer<Int32> isOOBEComplete,
) =>
    _OOBEComplete(
      isOOBEComplete,
    );

late final _OOBEComplete = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<Int32> isOOBEComplete,
),
    int Function(
  Pointer<Int32> isOOBEComplete,
)>('OOBEComplete');

int RegisterWaitUntilOOBECompleted(
  Pointer<NativeFunction<OOBE_COMPLETED_CALLBACK>> OOBECompletedCallback,
  Pointer CallbackContext,
  Pointer<Pointer> WaitHandle,
) =>
    _RegisterWaitUntilOOBECompleted(
      OOBECompletedCallback,
      CallbackContext,
      WaitHandle,
    );

late final _RegisterWaitUntilOOBECompleted = _kernel32.lookupFunction<
    Int32 Function(
  Pointer<NativeFunction<OOBE_COMPLETED_CALLBACK>> OOBECompletedCallback,
  Pointer CallbackContext,
  Pointer<Pointer> WaitHandle,
),
    int Function(
  Pointer<NativeFunction<OOBE_COMPLETED_CALLBACK>> OOBECompletedCallback,
  Pointer CallbackContext,
  Pointer<Pointer> WaitHandle,
)>('RegisterWaitUntilOOBECompleted');

int UnregisterWaitUntilOOBECompleted(
  Pointer WaitHandle,
) =>
    _UnregisterWaitUntilOOBECompleted(
      WaitHandle,
    );

late final _UnregisterWaitUntilOOBECompleted = _kernel32.lookupFunction<
    Int32 Function(
  Pointer WaitHandle,
),
    int Function(
  Pointer WaitHandle,
)>('UnregisterWaitUntilOOBECompleted');
