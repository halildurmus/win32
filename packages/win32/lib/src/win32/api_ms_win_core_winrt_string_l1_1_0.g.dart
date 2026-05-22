// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../functions.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

final _api_ms_win_core_winrt_string_l1_1_0 = DynamicLibrary.open(
  'api-ms-win-core-winrt-string-l1-1-0.dll',
);

/// Compares two specified HSTRING objects and returns an integer that indicates
/// their relative position in a sort order.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowscomparestringordinal>.
///
/// {@category winrt}
int WindowsCompareStringOrdinal(HSTRING? string1, HSTRING? string2) {
  final result = adaptiveCalloc<Int32>();
  final hr$ = HRESULT(
    _WindowsCompareStringOrdinal(
      string1 ?? nullptr,
      string2 ?? nullptr,
      result,
    ),
  );
  if (hr$.isError) {
    free(result);
    throw WindowsException(hr$);
  }
  final result$ = result.value;
  free(result);
  return result$;
}

final _WindowsCompareStringOrdinal = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer<Int32>),
      int Function(Pointer, Pointer, Pointer<Int32>)
    >('WindowsCompareStringOrdinal');

/// Concatenates two specified strings.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowsconcatstring>.
///
/// {@category winrt}
HSTRING WindowsConcatString(HSTRING? string1, HSTRING? string2) {
  final newString = adaptiveCalloc<Pointer>();
  final hr$ = HRESULT(
    _WindowsConcatString(string1 ?? nullptr, string2 ?? nullptr, newString),
  );
  if (hr$.isError) {
    free(newString);
    throw WindowsException(hr$);
  }
  final result$ = newString.value;
  free(newString);
  return .new(result$);
}

final _WindowsConcatString = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer<Pointer>),
      int Function(Pointer, Pointer, Pointer<Pointer>)
    >('WindowsConcatString');

/// Creates a new HSTRING based on the specified source string.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowscreatestring>.
///
/// {@category winrt}
HSTRING WindowsCreateString(PCWSTR? sourceString, int length) {
  final string = adaptiveCalloc<Pointer>();
  final hr$ = HRESULT(
    _WindowsCreateString(sourceString ?? nullptr, length, string),
  );
  if (hr$.isError) {
    free(string);
    throw WindowsException(hr$);
  }
  final result$ = string.value;
  free(string);
  return .new(result$);
}

final _WindowsCreateString = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer<Utf16>, Uint32, Pointer<Pointer>),
      int Function(Pointer<Utf16>, int, Pointer<Pointer>)
    >('WindowsCreateString');

/// Decrements the reference count of a string buffer.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowsdeletestring>.
///
/// {@category winrt}
@pragma('vm:prefer-inline')
void WindowsDeleteString(HSTRING? string) {
  final hr$ = HRESULT(_WindowsDeleteString(string ?? nullptr));
  if (hr$.isError) throw WindowsException(hr$);
}

final _WindowsDeleteString = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'WindowsDeleteString',
    );

/// Discards a preallocated string buffer if it was not promoted to an HSTRING.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowsdeletestringbuffer>.
///
/// {@category winrt}
@pragma('vm:prefer-inline')
void WindowsDeleteStringBuffer(HSTRING_BUFFER? bufferHandle) {
  final hr$ = HRESULT(_WindowsDeleteStringBuffer(bufferHandle ?? nullptr));
  if (hr$.isError) throw WindowsException(hr$);
}

final _WindowsDeleteStringBuffer = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'WindowsDeleteStringBuffer',
    );

/// Creates a copy of the specified string.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowsduplicatestring>.
///
/// {@category winrt}
HSTRING WindowsDuplicateString(HSTRING? string) {
  final newString = adaptiveCalloc<Pointer>();
  final hr$ = HRESULT(_WindowsDuplicateString(string ?? nullptr, newString));
  if (hr$.isError) {
    free(newString);
    throw WindowsException(hr$);
  }
  final result$ = newString.value;
  free(newString);
  return .new(result$);
}

final _WindowsDuplicateString = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Pointer>),
      int Function(Pointer, Pointer<Pointer>)
    >('WindowsDuplicateString');

/// Gets the length, in Unicode characters, of the specified string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowsgetstringlen>.
///
/// {@category winrt}
@pragma('vm:prefer-inline')
int WindowsGetStringLen(HSTRING? string) =>
    _WindowsGetStringLen(string ?? nullptr);

final _WindowsGetStringLen = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<Uint32 Function(Pointer), int Function(Pointer)>(
      'WindowsGetStringLen',
    );

/// Retrieves the backing buffer for the specified string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowsgetstringrawbuffer>.
///
/// {@category winrt}
@pragma('vm:prefer-inline')
PCWSTR WindowsGetStringRawBuffer(HSTRING? string, Pointer<Uint32>? length) =>
    PCWSTR(_WindowsGetStringRawBuffer(string ?? nullptr, length ?? nullptr));

final _WindowsGetStringRawBuffer = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Pointer<Utf16> Function(Pointer, Pointer<Uint32>),
      Pointer<Utf16> Function(Pointer, Pointer<Uint32>)
    >('WindowsGetStringRawBuffer');

/// Indicates whether the specified string is the empty string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowsisstringempty>.
///
/// {@category winrt}
@pragma('vm:prefer-inline')
bool WindowsIsStringEmpty(HSTRING? string) =>
    _WindowsIsStringEmpty(string ?? nullptr) != FALSE;

final _WindowsIsStringEmpty = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<Int32 Function(Pointer), int Function(Pointer)>(
      'WindowsIsStringEmpty',
    );

/// Allocates a mutable character buffer for use in HSTRING creation.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowspreallocatestringbuffer>.
///
/// {@category winrt}
@pragma('vm:prefer-inline')
void WindowsPreallocateStringBuffer(
  int length,
  Pointer<Pointer<Uint16>> charBuffer,
  Pointer<Pointer> bufferHandle,
) {
  final hr$ = HRESULT(
    _WindowsPreallocateStringBuffer(length, charBuffer, bufferHandle),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

final _WindowsPreallocateStringBuffer = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Uint32, Pointer<Pointer<Uint16>>, Pointer<Pointer>),
      int Function(int, Pointer<Pointer<Uint16>>, Pointer<Pointer>)
    >('WindowsPreallocateStringBuffer');

/// Creates an HSTRING from the specified HSTRING_BUFFER.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowspromotestringbuffer>.
///
/// {@category winrt}
HSTRING WindowsPromoteStringBuffer(HSTRING_BUFFER bufferHandle) {
  final string = adaptiveCalloc<Pointer>();
  final hr$ = HRESULT(_WindowsPromoteStringBuffer(bufferHandle, string));
  if (hr$.isError) {
    free(string);
    throw WindowsException(hr$);
  }
  final result$ = string.value;
  free(string);
  return .new(result$);
}

final _WindowsPromoteStringBuffer = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Pointer>),
      int Function(Pointer, Pointer<Pointer>)
    >('WindowsPromoteStringBuffer');

/// Replaces all occurrences of a set of characters in the specified string with
/// another set of characters to create a new string.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowsreplacestring>.
///
/// {@category winrt}
HSTRING WindowsReplaceString(
  HSTRING? string,
  HSTRING? stringReplaced,
  HSTRING? stringReplaceWith,
) {
  final newString = adaptiveCalloc<Pointer>();
  final hr$ = HRESULT(
    _WindowsReplaceString(
      string ?? nullptr,
      stringReplaced ?? nullptr,
      stringReplaceWith ?? nullptr,
      newString,
    ),
  );
  if (hr$.isError) {
    free(newString);
    throw WindowsException(hr$);
  }
  final result$ = newString.value;
  free(newString);
  return .new(result$);
}

final _WindowsReplaceString = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer, Pointer<Pointer>),
      int Function(Pointer, Pointer, Pointer, Pointer<Pointer>)
    >('WindowsReplaceString');

/// Indicates whether the specified string has embedded null characters.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowsstringhasembeddednull>.
///
/// {@category winrt}
bool WindowsStringHasEmbeddedNull(HSTRING? string) {
  final hasEmbedNull = adaptiveCalloc<Int32>();
  final hr$ = HRESULT(
    _WindowsStringHasEmbeddedNull(string ?? nullptr, hasEmbedNull),
  );
  if (hr$.isError) {
    free(hasEmbedNull);
    throw WindowsException(hr$);
  }
  final result$ = hasEmbedNull.value;
  free(hasEmbedNull);
  return result$ != FALSE;
}

final _WindowsStringHasEmbeddedNull = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Pointer<Int32>),
      int Function(Pointer, Pointer<Int32>)
    >('WindowsStringHasEmbeddedNull');

/// Retrieves a substring from the specified string.
///
/// The substring starts at the specified character position.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowssubstring>.
///
/// {@category winrt}
HSTRING WindowsSubstring(HSTRING? string, int startIndex) {
  final newString = adaptiveCalloc<Pointer>();
  final hr$ = HRESULT(
    _WindowsSubstring(string ?? nullptr, startIndex, newString),
  );
  if (hr$.isError) {
    free(newString);
    throw WindowsException(hr$);
  }
  final result$ = newString.value;
  free(newString);
  return .new(result$);
}

final _WindowsSubstring = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Uint32, Pointer<Pointer>),
      int Function(Pointer, int, Pointer<Pointer>)
    >('WindowsSubstring');

/// Retrieves a substring from the specified string.
///
/// The substring starts at a specified character position and has a specified
/// length.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowssubstringwithspecifiedlength>.
///
/// {@category winrt}
HSTRING WindowsSubstringWithSpecifiedLength(
  HSTRING? string,
  int startIndex,
  int length,
) {
  final newString = adaptiveCalloc<Pointer>();
  final hr$ = HRESULT(
    _WindowsSubstringWithSpecifiedLength(
      string ?? nullptr,
      startIndex,
      length,
      newString,
    ),
  );
  if (hr$.isError) {
    free(newString);
    throw WindowsException(hr$);
  }
  final result$ = newString.value;
  free(newString);
  return .new(result$);
}

final _WindowsSubstringWithSpecifiedLength =
    _api_ms_win_core_winrt_string_l1_1_0.lookupFunction<
      Int32 Function(Pointer, Uint32, Uint32, Pointer<Pointer>),
      int Function(Pointer, int, int, Pointer<Pointer>)
    >('WindowsSubstringWithSpecifiedLength');

/// Removes all trailing occurrences of a specified set of characters from the
/// source string.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowstrimstringend>.
///
/// {@category winrt}
HSTRING WindowsTrimStringEnd(HSTRING? string, HSTRING? trimString) {
  final newString = adaptiveCalloc<Pointer>();
  final hr$ = HRESULT(
    _WindowsTrimStringEnd(string ?? nullptr, trimString ?? nullptr, newString),
  );
  if (hr$.isError) {
    free(newString);
    throw WindowsException(hr$);
  }
  final result$ = newString.value;
  free(newString);
  return .new(result$);
}

final _WindowsTrimStringEnd = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer<Pointer>),
      int Function(Pointer, Pointer, Pointer<Pointer>)
    >('WindowsTrimStringEnd');

/// Removes all leading occurrences of a specified set of characters from the
/// source string.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowstrimstringstart>.
///
/// {@category winrt}
HSTRING WindowsTrimStringStart(HSTRING? string, HSTRING? trimString) {
  final newString = adaptiveCalloc<Pointer>();
  final hr$ = HRESULT(
    _WindowsTrimStringStart(
      string ?? nullptr,
      trimString ?? nullptr,
      newString,
    ),
  );
  if (hr$.isError) {
    free(newString);
    throw WindowsException(hr$);
  }
  final result$ = newString.value;
  free(newString);
  return .new(result$);
}

final _WindowsTrimStringStart = _api_ms_win_core_winrt_string_l1_1_0
    .lookupFunction<
      Int32 Function(Pointer, Pointer, Pointer<Pointer>),
      int Function(Pointer, Pointer, Pointer<Pointer>)
    >('WindowsTrimStringStart');
