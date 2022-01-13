// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../combase.dart';
import '../guid.dart';
import '../media/structs.g.dart';
import '../media/callbacks.g.dart'; // -----------------------------------------------------------------------

// winmm.dll
// -----------------------------------------------------------------------
final _winmm = DynamicLibrary.open('winmm.dll');

int timeBeginPeriod(
  int uPeriod,
) =>
    _timeBeginPeriod(
      uPeriod,
    );

late final _timeBeginPeriod = _winmm.lookupFunction<
    Uint32 Function(
  Uint32 uPeriod,
),
    int Function(
  int uPeriod,
)>('timeBeginPeriod');

int timeEndPeriod(
  int uPeriod,
) =>
    _timeEndPeriod(
      uPeriod,
    );

late final _timeEndPeriod = _winmm.lookupFunction<
    Uint32 Function(
  Uint32 uPeriod,
),
    int Function(
  int uPeriod,
)>('timeEndPeriod');

int timeGetDevCaps(
  Pointer<TIMECAPS> ptc,
  int cbtc,
) =>
    _timeGetDevCaps(
      ptc,
      cbtc,
    );

late final _timeGetDevCaps = _winmm.lookupFunction<
    Uint32 Function(
  Pointer<TIMECAPS> ptc,
  Uint32 cbtc,
),
    int Function(
  Pointer<TIMECAPS> ptc,
  int cbtc,
)>('timeGetDevCaps');

int timeGetSystemTime(
  Pointer<MMTIME> pmmt,
  int cbmmt,
) =>
    _timeGetSystemTime(
      pmmt,
      cbmmt,
    );

late final _timeGetSystemTime = _winmm.lookupFunction<
    Uint32 Function(
  Pointer<MMTIME> pmmt,
  Uint32 cbmmt,
),
    int Function(
  Pointer<MMTIME> pmmt,
  int cbmmt,
)>('timeGetSystemTime');

int timeGetTime() => _timeGetTime();

late final _timeGetTime =
    _winmm.lookupFunction<Uint32 Function(), int Function()>('timeGetTime');

int timeKillEvent(
  int uTimerID,
) =>
    _timeKillEvent(
      uTimerID,
    );

late final _timeKillEvent = _winmm.lookupFunction<
    Uint32 Function(
  Uint32 uTimerID,
),
    int Function(
  int uTimerID,
)>('timeKillEvent');

int timeSetEvent(
  int uDelay,
  int uResolution,
  Pointer<NativeFunction<LPTIMECALLBACK>> fptc,
  int dwUser,
  int fuEvent,
) =>
    _timeSetEvent(
      uDelay,
      uResolution,
      fptc,
      dwUser,
      fuEvent,
    );

late final _timeSetEvent = _winmm.lookupFunction<
    Uint32 Function(
  Uint32 uDelay,
  Uint32 uResolution,
  Pointer<NativeFunction<LPTIMECALLBACK>> fptc,
  IntPtr dwUser,
  Uint32 fuEvent,
),
    int Function(
  int uDelay,
  int uResolution,
  Pointer<NativeFunction<LPTIMECALLBACK>> fptc,
  int dwUser,
  int fuEvent,
)>('timeSetEvent');
