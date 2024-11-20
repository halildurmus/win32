// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: non_constant_identifier_names, unused_import,
// ignore_for_file: unused_local_variable

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

@Native<Int32 Function(HSTRING, HSTRING, Pointer<Int32>)>(
  symbol: 'WindowsCompareStringOrdinal',
)
external int _WindowsCompareStringOrdinal(
  int string1,
  int string2,
  Pointer<Int32> result,
);

@Native<Int32 Function(HSTRING, HSTRING, Pointer<HSTRING>)>(
  symbol: 'WindowsConcatString',
)
external int _WindowsConcatString(
  int string1,
  int string2,
  Pointer<HSTRING> newString,
);

@Native<Int32 Function(PCWSTR, Uint32, Pointer<HSTRING>)>(
  symbol: 'WindowsCreateString',
)
external int _WindowsCreateString(
  PCWSTR sourceString,
  int length,
  Pointer<HSTRING> string,
);

@Native<Int32 Function(HSTRING)>(symbol: 'WindowsDeleteString')
external int _WindowsDeleteString(int string);

@Native<Int32 Function(HSTRING_BUFFER)>(symbol: 'WindowsDeleteStringBuffer')
external int _WindowsDeleteStringBuffer(int bufferHandle);

@Native<Int32 Function(HSTRING, Pointer<HSTRING>)>(
  symbol: 'WindowsDuplicateString',
)
external int _WindowsDuplicateString(int string, Pointer<HSTRING> newString);

@Native<Uint32 Function(HSTRING)>(symbol: 'WindowsGetStringLen')
external int _WindowsGetStringLen(int string);

@Native<PCWSTR Function(HSTRING, Pointer<Uint32>)>(
  symbol: 'WindowsGetStringRawBuffer',
)
external PCWSTR _WindowsGetStringRawBuffer(int string, Pointer<Uint32> length);

@Native<BOOL Function(HSTRING)>(symbol: 'WindowsIsStringEmpty')
external int _WindowsIsStringEmpty(int string);

@Native<
  Int32 Function(Uint32, Pointer<Pointer<Uint16>>, Pointer<HSTRING_BUFFER>)
>(symbol: 'WindowsPreallocateStringBuffer')
external int _WindowsPreallocateStringBuffer(
  int length,
  Pointer<Pointer<Uint16>> charBuffer,
  Pointer<HSTRING_BUFFER> bufferHandle,
);

@Native<Int32 Function(HSTRING_BUFFER, Pointer<HSTRING>)>(
  symbol: 'WindowsPromoteStringBuffer',
)
external int _WindowsPromoteStringBuffer(
  int bufferHandle,
  Pointer<HSTRING> string,
);

@Native<Int32 Function(HSTRING, HSTRING, HSTRING, Pointer<HSTRING>)>(
  symbol: 'WindowsReplaceString',
)
external int _WindowsReplaceString(
  int string,
  int stringReplaced,
  int stringReplaceWith,
  Pointer<HSTRING> newString,
);

@Native<Int32 Function(HSTRING, Pointer<BOOL>)>(
  symbol: 'WindowsStringHasEmbeddedNull',
)
external int _WindowsStringHasEmbeddedNull(
  int string,
  Pointer<BOOL> hasEmbedNull,
);

@Native<Int32 Function(HSTRING, Uint32, Pointer<HSTRING>)>(
  symbol: 'WindowsSubstring',
)
external int _WindowsSubstring(
  int string,
  int startIndex,
  Pointer<HSTRING> newString,
);

@Native<Int32 Function(HSTRING, Uint32, Uint32, Pointer<HSTRING>)>(
  symbol: 'WindowsSubstringWithSpecifiedLength',
)
external int _WindowsSubstringWithSpecifiedLength(
  int string,
  int startIndex,
  int length,
  Pointer<HSTRING> newString,
);

@Native<Int32 Function(HSTRING, HSTRING, Pointer<HSTRING>)>(
  symbol: 'WindowsTrimStringEnd',
)
external int _WindowsTrimStringEnd(
  int string,
  int trimString,
  Pointer<HSTRING> newString,
);

@Native<Int32 Function(HSTRING, HSTRING, Pointer<HSTRING>)>(
  symbol: 'WindowsTrimStringStart',
)
external int _WindowsTrimStringStart(
  int string,
  int trimString,
  Pointer<HSTRING> newString,
);
