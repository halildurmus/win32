// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Tests that Win32 API prototypes can be successfully loaded (i.e. that
// lookupFunction works for all the APIs generated).
//
// ignore_for_file: non_constant_identifier_names, unnecessary_ignore
// ignore_for_file: unused_import

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

@Native<Int32 Function(Pointer, Pointer, Pointer<Int32>)>(
  symbol: 'WindowsCompareStringOrdinal',
)
external int _WindowsCompareStringOrdinal(
  Pointer string1,
  Pointer string2,
  Pointer<Int32> result,
);

@Native<Int32 Function(Pointer, Pointer, Pointer<Pointer>)>(
  symbol: 'WindowsConcatString',
)
external int _WindowsConcatString(
  Pointer string1,
  Pointer string2,
  Pointer<Pointer> newString,
);

@Native<Int32 Function(Pointer<Utf16>, Uint32, Pointer<Pointer>)>(
  symbol: 'WindowsCreateString',
)
external int _WindowsCreateString(
  Pointer<Utf16> sourceString,
  int length,
  Pointer<Pointer> string,
);

@Native<Int32 Function(Pointer)>(symbol: 'WindowsDeleteString')
external int _WindowsDeleteString(Pointer string);

@Native<Int32 Function(Pointer)>(symbol: 'WindowsDeleteStringBuffer')
external int _WindowsDeleteStringBuffer(Pointer bufferHandle);

@Native<Int32 Function(Pointer, Pointer<Pointer>)>(
  symbol: 'WindowsDuplicateString',
)
external int _WindowsDuplicateString(
  Pointer string,
  Pointer<Pointer> newString,
);

@Native<Uint32 Function(Pointer)>(symbol: 'WindowsGetStringLen')
external int _WindowsGetStringLen(Pointer string);

@Native<Pointer<Utf16> Function(Pointer, Pointer<Uint32>)>(
  symbol: 'WindowsGetStringRawBuffer',
)
external Pointer<Utf16> _WindowsGetStringRawBuffer(
  Pointer string,
  Pointer<Uint32> length,
);

@Native<Int32 Function(Pointer)>(symbol: 'WindowsIsStringEmpty')
external int _WindowsIsStringEmpty(Pointer string);

@Native<Int32 Function(Uint32, Pointer<Pointer<Uint16>>, Pointer<Pointer>)>(
  symbol: 'WindowsPreallocateStringBuffer',
)
external int _WindowsPreallocateStringBuffer(
  int length,
  Pointer<Pointer<Uint16>> charBuffer,
  Pointer<Pointer> bufferHandle,
);

@Native<Int32 Function(Pointer, Pointer<Pointer>)>(
  symbol: 'WindowsPromoteStringBuffer',
)
external int _WindowsPromoteStringBuffer(
  Pointer bufferHandle,
  Pointer<Pointer> string,
);

@Native<Int32 Function(Pointer, Pointer, Pointer, Pointer<Pointer>)>(
  symbol: 'WindowsReplaceString',
)
external int _WindowsReplaceString(
  Pointer string,
  Pointer stringReplaced,
  Pointer stringReplaceWith,
  Pointer<Pointer> newString,
);

@Native<Int32 Function(Pointer, Pointer<Int32>)>(
  symbol: 'WindowsStringHasEmbeddedNull',
)
external int _WindowsStringHasEmbeddedNull(
  Pointer string,
  Pointer<Int32> hasEmbedNull,
);

@Native<Int32 Function(Pointer, Uint32, Pointer<Pointer>)>(
  symbol: 'WindowsSubstring',
)
external int _WindowsSubstring(
  Pointer string,
  int startIndex,
  Pointer<Pointer> newString,
);

@Native<Int32 Function(Pointer, Uint32, Uint32, Pointer<Pointer>)>(
  symbol: 'WindowsSubstringWithSpecifiedLength',
)
external int _WindowsSubstringWithSpecifiedLength(
  Pointer string,
  int startIndex,
  int length,
  Pointer<Pointer> newString,
);

@Native<Int32 Function(Pointer, Pointer, Pointer<Pointer>)>(
  symbol: 'WindowsTrimStringEnd',
)
external int _WindowsTrimStringEnd(
  Pointer string,
  Pointer trimString,
  Pointer<Pointer> newString,
);

@Native<Int32 Function(Pointer, Pointer, Pointer<Pointer>)>(
  symbol: 'WindowsTrimStringStart',
)
external int _WindowsTrimStringStart(
  Pointer string,
  Pointer trimString,
  Pointer<Pointer> newString,
);
