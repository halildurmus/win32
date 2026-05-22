// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: specify_nonobvious_property_types, unused_import

@TestOn('windows')
library;

import 'dart:ffi';

import 'package:checks/checks.dart';
import 'package:ffi/ffi.dart';
import 'package:test/scaffolding.dart';
import 'package:win32/win32.dart';

import '../../helpers.dart';

void main() {
  group('api-ms-win-core-winrt-string-l1-1-0.dll', () {
    test('WindowsCompareStringOrdinal can be instantiated', () {
      check(_WindowsCompareStringOrdinal).isA<Function>();
    });
    test('WindowsConcatString can be instantiated', () {
      check(_WindowsConcatString).isA<Function>();
    });
    test('WindowsCreateString can be instantiated', () {
      check(_WindowsCreateString).isA<Function>();
    });
    test('WindowsDeleteString can be instantiated', () {
      check(_WindowsDeleteString).isA<Function>();
    });
    test('WindowsDeleteStringBuffer can be instantiated', () {
      check(_WindowsDeleteStringBuffer).isA<Function>();
    });
    test('WindowsDuplicateString can be instantiated', () {
      check(_WindowsDuplicateString).isA<Function>();
    });
    test('WindowsGetStringLen can be instantiated', () {
      check(_WindowsGetStringLen).isA<Function>();
    });
    test('WindowsGetStringRawBuffer can be instantiated', () {
      check(_WindowsGetStringRawBuffer).isA<Function>();
    });
    test('WindowsIsStringEmpty can be instantiated', () {
      check(_WindowsIsStringEmpty).isA<Function>();
    });
    test('WindowsPreallocateStringBuffer can be instantiated', () {
      check(_WindowsPreallocateStringBuffer).isA<Function>();
    });
    test('WindowsPromoteStringBuffer can be instantiated', () {
      check(_WindowsPromoteStringBuffer).isA<Function>();
    });
    test('WindowsReplaceString can be instantiated', () {
      check(_WindowsReplaceString).isA<Function>();
    });
    test('WindowsStringHasEmbeddedNull can be instantiated', () {
      check(_WindowsStringHasEmbeddedNull).isA<Function>();
    });
    test('WindowsSubstring can be instantiated', () {
      check(_WindowsSubstring).isA<Function>();
    });
    test('WindowsSubstringWithSpecifiedLength can be instantiated', () {
      check(_WindowsSubstringWithSpecifiedLength).isA<Function>();
    });
    test('WindowsTrimStringEnd can be instantiated', () {
      check(_WindowsTrimStringEnd).isA<Function>();
    });
    test('WindowsTrimStringStart can be instantiated', () {
      check(_WindowsTrimStringStart).isA<Function>();
    });
  });
}

final _api_ms_win_core_winrt_string_l1_1_0 = DynamicLibrary.open(
  'api-ms-win-core-winrt-string-l1-1-0.dll',
);

final _WindowsCompareStringOrdinal = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer<Int32>),
      int Function(Pointer, Pointer, Pointer<Int32>)
    >('WindowsCompareStringOrdinal');

final _WindowsConcatString = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer<Pointer>),
      int Function(Pointer, Pointer, Pointer<Pointer>)
    >('WindowsConcatString');

final _WindowsCreateString = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32, Pointer<Pointer>),
      int Function(Pointer<Utf16>, int, Pointer<Pointer>)
    >('WindowsCreateString');

final _WindowsDeleteString = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'WindowsDeleteString',
    );

final _WindowsDeleteStringBuffer = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'WindowsDeleteStringBuffer',
    );

final _WindowsDuplicateString = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Pointer>),
      int Function(Pointer, Pointer<Pointer>)
    >('WindowsDuplicateString');

final _WindowsGetStringLen = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'WindowsGetStringLen',
    );

final _WindowsGetStringRawBuffer = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Pointer<Utf16> Function(Pointer, Pointer<Uint32>),
      Pointer<Utf16> Function(Pointer, Pointer<Uint32>)
    >('WindowsGetStringRawBuffer');

final _WindowsIsStringEmpty = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'WindowsIsStringEmpty',
    );

final _WindowsPreallocateStringBuffer = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Pointer<Uint16>>, Pointer<Pointer>),
      int Function(int, Pointer<Pointer<Uint16>>, Pointer<Pointer>)
    >('WindowsPreallocateStringBuffer');

final _WindowsPromoteStringBuffer = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Pointer>),
      int Function(Pointer, Pointer<Pointer>)
    >('WindowsPromoteStringBuffer');

final _WindowsReplaceString = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer, Pointer<Pointer>),
      int Function(Pointer, Pointer, Pointer, Pointer<Pointer>)
    >('WindowsReplaceString');

final _WindowsStringHasEmbeddedNull = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Int32>),
      int Function(Pointer, Pointer<Int32>)
    >('WindowsStringHasEmbeddedNull');

final _WindowsSubstring = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Pointer>),
      int Function(Pointer, int, Pointer<Pointer>)
    >('WindowsSubstring');

final _WindowsSubstringWithSpecifiedLength =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Pointer<Pointer>),
      int Function(Pointer, int, int, Pointer<Pointer>)
    >('WindowsSubstringWithSpecifiedLength');

final _WindowsTrimStringEnd = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer<Pointer>),
      int Function(Pointer, Pointer, Pointer<Pointer>)
    >('WindowsTrimStringEnd');

final _WindowsTrimStringStart = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer<Pointer>),
      int Function(Pointer, Pointer, Pointer<Pointer>)
    >('WindowsTrimStringStart');
