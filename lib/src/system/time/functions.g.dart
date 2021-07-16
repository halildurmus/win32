// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../guid.dart';
import '../../combase.dart';
import '../../foundation/structs.g.dart';
import '../../system/time/structs.g.dart';

// -----------------------------------------------------------------------
// KERNEL32.dll
// -----------------------------------------------------------------------
final _kernel32 = DynamicLibrary.open('KERNEL32.dll');

int FileTimeToSystemTime(
        Pointer<FILETIME> lpFileTime, Pointer<SYSTEMTIME> lpSystemTime) =>
    _FileTimeToSystemTime(lpFileTime, lpSystemTime);

late final _FileTimeToSystemTime = _kernel32.lookupFunction<
    Int32 Function(
        Pointer<FILETIME> lpFileTime, Pointer<SYSTEMTIME> lpSystemTime),
    int Function(Pointer<FILETIME> lpFileTime,
        Pointer<SYSTEMTIME> lpSystemTime)>('FileTimeToSystemTime');

int GetDynamicTimeZoneInformation(
        Pointer<DYNAMIC_TIME_ZONE_INFORMATION> pTimeZoneInformation) =>
    _GetDynamicTimeZoneInformation(pTimeZoneInformation);

late final _GetDynamicTimeZoneInformation = _kernel32.lookupFunction<
        Uint32 Function(
            Pointer<DYNAMIC_TIME_ZONE_INFORMATION> pTimeZoneInformation),
        int Function(
            Pointer<DYNAMIC_TIME_ZONE_INFORMATION> pTimeZoneInformation)>(
    'GetDynamicTimeZoneInformation');

int GetTimeZoneInformation(
        Pointer<TIME_ZONE_INFORMATION> lpTimeZoneInformation) =>
    _GetTimeZoneInformation(lpTimeZoneInformation);

late final _GetTimeZoneInformation = _kernel32.lookupFunction<
        Uint32 Function(Pointer<TIME_ZONE_INFORMATION> lpTimeZoneInformation),
        int Function(Pointer<TIME_ZONE_INFORMATION> lpTimeZoneInformation)>(
    'GetTimeZoneInformation');

int GetTimeZoneInformationForYear(
        int wYear,
        Pointer<DYNAMIC_TIME_ZONE_INFORMATION> pdtzi,
        Pointer<TIME_ZONE_INFORMATION> ptzi) =>
    _GetTimeZoneInformationForYear(wYear, pdtzi, ptzi);

late final _GetTimeZoneInformationForYear = _kernel32.lookupFunction<
    Int32 Function(Uint16 wYear, Pointer<DYNAMIC_TIME_ZONE_INFORMATION> pdtzi,
        Pointer<TIME_ZONE_INFORMATION> ptzi),
    int Function(int wYear, Pointer<DYNAMIC_TIME_ZONE_INFORMATION> pdtzi,
        Pointer<TIME_ZONE_INFORMATION> ptzi)>('GetTimeZoneInformationForYear');

int LocalFileTimeToLocalSystemTime(
        Pointer<TIME_ZONE_INFORMATION> timeZoneInformation,
        Pointer<FILETIME> localFileTime,
        Pointer<SYSTEMTIME> localSystemTime) =>
    _LocalFileTimeToLocalSystemTime(
        timeZoneInformation, localFileTime, localSystemTime);

late final _LocalFileTimeToLocalSystemTime = _kernel32.lookupFunction<
    Int32 Function(Pointer<TIME_ZONE_INFORMATION> timeZoneInformation,
        Pointer<FILETIME> localFileTime, Pointer<SYSTEMTIME> localSystemTime),
    int Function(
        Pointer<TIME_ZONE_INFORMATION> timeZoneInformation,
        Pointer<FILETIME> localFileTime,
        Pointer<SYSTEMTIME> localSystemTime)>('LocalFileTimeToLocalSystemTime');

int LocalSystemTimeToLocalFileTime(
        Pointer<TIME_ZONE_INFORMATION> timeZoneInformation,
        Pointer<SYSTEMTIME> localSystemTime,
        Pointer<FILETIME> localFileTime) =>
    _LocalSystemTimeToLocalFileTime(
        timeZoneInformation, localSystemTime, localFileTime);

late final _LocalSystemTimeToLocalFileTime = _kernel32.lookupFunction<
    Int32 Function(Pointer<TIME_ZONE_INFORMATION> timeZoneInformation,
        Pointer<SYSTEMTIME> localSystemTime, Pointer<FILETIME> localFileTime),
    int Function(
        Pointer<TIME_ZONE_INFORMATION> timeZoneInformation,
        Pointer<SYSTEMTIME> localSystemTime,
        Pointer<FILETIME> localFileTime)>('LocalSystemTimeToLocalFileTime');

int SetDynamicTimeZoneInformation(
        Pointer<DYNAMIC_TIME_ZONE_INFORMATION> lpTimeZoneInformation) =>
    _SetDynamicTimeZoneInformation(lpTimeZoneInformation);

late final _SetDynamicTimeZoneInformation = _kernel32.lookupFunction<
        Int32 Function(
            Pointer<DYNAMIC_TIME_ZONE_INFORMATION> lpTimeZoneInformation),
        int Function(
            Pointer<DYNAMIC_TIME_ZONE_INFORMATION> lpTimeZoneInformation)>(
    'SetDynamicTimeZoneInformation');

int SetTimeZoneInformation(
        Pointer<TIME_ZONE_INFORMATION> lpTimeZoneInformation) =>
    _SetTimeZoneInformation(lpTimeZoneInformation);

late final _SetTimeZoneInformation = _kernel32.lookupFunction<
        Int32 Function(Pointer<TIME_ZONE_INFORMATION> lpTimeZoneInformation),
        int Function(Pointer<TIME_ZONE_INFORMATION> lpTimeZoneInformation)>(
    'SetTimeZoneInformation');

int SystemTimeToFileTime(
        Pointer<SYSTEMTIME> lpSystemTime, Pointer<FILETIME> lpFileTime) =>
    _SystemTimeToFileTime(lpSystemTime, lpFileTime);

late final _SystemTimeToFileTime = _kernel32.lookupFunction<
    Int32 Function(
        Pointer<SYSTEMTIME> lpSystemTime, Pointer<FILETIME> lpFileTime),
    int Function(Pointer<SYSTEMTIME> lpSystemTime,
        Pointer<FILETIME> lpFileTime)>('SystemTimeToFileTime');

int SystemTimeToTzSpecificLocalTime(
        Pointer<TIME_ZONE_INFORMATION> lpTimeZoneInformation,
        Pointer<SYSTEMTIME> lpUniversalTime,
        Pointer<SYSTEMTIME> lpLocalTime) =>
    _SystemTimeToTzSpecificLocalTime(
        lpTimeZoneInformation, lpUniversalTime, lpLocalTime);

late final _SystemTimeToTzSpecificLocalTime = _kernel32.lookupFunction<
    Int32 Function(Pointer<TIME_ZONE_INFORMATION> lpTimeZoneInformation,
        Pointer<SYSTEMTIME> lpUniversalTime, Pointer<SYSTEMTIME> lpLocalTime),
    int Function(
        Pointer<TIME_ZONE_INFORMATION> lpTimeZoneInformation,
        Pointer<SYSTEMTIME> lpUniversalTime,
        Pointer<SYSTEMTIME> lpLocalTime)>('SystemTimeToTzSpecificLocalTime');

int SystemTimeToTzSpecificLocalTimeEx(
        Pointer<DYNAMIC_TIME_ZONE_INFORMATION> lpTimeZoneInformation,
        Pointer<SYSTEMTIME> lpUniversalTime,
        Pointer<SYSTEMTIME> lpLocalTime) =>
    _SystemTimeToTzSpecificLocalTimeEx(
        lpTimeZoneInformation, lpUniversalTime, lpLocalTime);

late final _SystemTimeToTzSpecificLocalTimeEx = _kernel32.lookupFunction<
    Int32 Function(Pointer<DYNAMIC_TIME_ZONE_INFORMATION> lpTimeZoneInformation,
        Pointer<SYSTEMTIME> lpUniversalTime, Pointer<SYSTEMTIME> lpLocalTime),
    int Function(
        Pointer<DYNAMIC_TIME_ZONE_INFORMATION> lpTimeZoneInformation,
        Pointer<SYSTEMTIME> lpUniversalTime,
        Pointer<SYSTEMTIME> lpLocalTime)>('SystemTimeToTzSpecificLocalTimeEx');

int TzSpecificLocalTimeToSystemTime(
        Pointer<TIME_ZONE_INFORMATION> lpTimeZoneInformation,
        Pointer<SYSTEMTIME> lpLocalTime,
        Pointer<SYSTEMTIME> lpUniversalTime) =>
    _TzSpecificLocalTimeToSystemTime(
        lpTimeZoneInformation, lpLocalTime, lpUniversalTime);

late final _TzSpecificLocalTimeToSystemTime = _kernel32.lookupFunction<
    Int32 Function(Pointer<TIME_ZONE_INFORMATION> lpTimeZoneInformation,
        Pointer<SYSTEMTIME> lpLocalTime, Pointer<SYSTEMTIME> lpUniversalTime),
    int Function(
        Pointer<TIME_ZONE_INFORMATION> lpTimeZoneInformation,
        Pointer<SYSTEMTIME> lpLocalTime,
        Pointer<SYSTEMTIME>
            lpUniversalTime)>('TzSpecificLocalTimeToSystemTime');

int TzSpecificLocalTimeToSystemTimeEx(
        Pointer<DYNAMIC_TIME_ZONE_INFORMATION> lpTimeZoneInformation,
        Pointer<SYSTEMTIME> lpLocalTime,
        Pointer<SYSTEMTIME> lpUniversalTime) =>
    _TzSpecificLocalTimeToSystemTimeEx(
        lpTimeZoneInformation, lpLocalTime, lpUniversalTime);

late final _TzSpecificLocalTimeToSystemTimeEx = _kernel32.lookupFunction<
    Int32 Function(Pointer<DYNAMIC_TIME_ZONE_INFORMATION> lpTimeZoneInformation,
        Pointer<SYSTEMTIME> lpLocalTime, Pointer<SYSTEMTIME> lpUniversalTime),
    int Function(
        Pointer<DYNAMIC_TIME_ZONE_INFORMATION> lpTimeZoneInformation,
        Pointer<SYSTEMTIME> lpLocalTime,
        Pointer<SYSTEMTIME>
            lpUniversalTime)>('TzSpecificLocalTimeToSystemTimeEx');

// -----------------------------------------------------------------------
// ADVAPI32.dll
// -----------------------------------------------------------------------
final _advapi32 = DynamicLibrary.open('ADVAPI32.dll');

int EnumDynamicTimeZoneInformation(int dwIndex,
        Pointer<DYNAMIC_TIME_ZONE_INFORMATION> lpTimeZoneInformation) =>
    _EnumDynamicTimeZoneInformation(dwIndex, lpTimeZoneInformation);

late final _EnumDynamicTimeZoneInformation = _advapi32.lookupFunction<
        Uint32 Function(Uint32 dwIndex,
            Pointer<DYNAMIC_TIME_ZONE_INFORMATION> lpTimeZoneInformation),
        int Function(int dwIndex,
            Pointer<DYNAMIC_TIME_ZONE_INFORMATION> lpTimeZoneInformation)>(
    'EnumDynamicTimeZoneInformation');

int GetDynamicTimeZoneInformationEffectiveYears(
        Pointer<DYNAMIC_TIME_ZONE_INFORMATION> lpTimeZoneInformation,
        Pointer<Uint32> FirstYear,
        Pointer<Uint32> LastYear) =>
    _GetDynamicTimeZoneInformationEffectiveYears(
        lpTimeZoneInformation, FirstYear, LastYear);

late final _GetDynamicTimeZoneInformationEffectiveYears =
    _advapi32.lookupFunction<
            Uint32 Function(
                Pointer<DYNAMIC_TIME_ZONE_INFORMATION> lpTimeZoneInformation,
                Pointer<Uint32> FirstYear,
                Pointer<Uint32> LastYear),
            int Function(
                Pointer<DYNAMIC_TIME_ZONE_INFORMATION> lpTimeZoneInformation,
                Pointer<Uint32> FirstYear,
                Pointer<Uint32> LastYear)>(
        'GetDynamicTimeZoneInformationEffectiveYears');
