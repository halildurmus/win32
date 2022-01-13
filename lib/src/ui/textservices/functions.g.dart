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

// msctfmonitor.dll
// -----------------------------------------------------------------------
final _msctfmonitor = DynamicLibrary.open('msctfmonitor.dll');

int DoMsCtfMonitor(
  int dwFlags,
  int hEventForServiceStop,
) =>
    _DoMsCtfMonitor(
      dwFlags,
      hEventForServiceStop,
    );

late final _DoMsCtfMonitor = _msctfmonitor.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
  IntPtr hEventForServiceStop,
),
    int Function(
  int dwFlags,
  int hEventForServiceStop,
)>('DoMsCtfMonitor');

int InitLocalMsCtfMonitor(
  int dwFlags,
) =>
    _InitLocalMsCtfMonitor(
      dwFlags,
    );

late final _InitLocalMsCtfMonitor = _msctfmonitor.lookupFunction<
    Int32 Function(
  Uint32 dwFlags,
),
    int Function(
  int dwFlags,
)>('InitLocalMsCtfMonitor');

int UninitLocalMsCtfMonitor() => _UninitLocalMsCtfMonitor();

late final _UninitLocalMsCtfMonitor =
    _msctfmonitor.lookupFunction<Int32 Function(), int Function()>(
        'UninitLocalMsCtfMonitor');
