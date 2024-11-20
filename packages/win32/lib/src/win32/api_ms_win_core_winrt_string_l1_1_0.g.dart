// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../com/interface.g.dart';
import '../com/iunknown.g.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
import '../extensions/pointer.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';

/// Compares two specified HSTRING objects and returns an integer that indicates
/// their relative position in a sort order.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowscomparestringordinal>.
///
/// {@category winrt}
int WindowsCompareStringOrdinal(int? string1, int? string2) {
  final result = loggingCalloc<Int32>();
  final hr$ = HRESULT(
    _WindowsCompareStringOrdinal(string1 ?? NULL, string2 ?? NULL, result),
  );
  if (hr$.isError) {
    free(result);
    throw WindowsException(hr$);
  }
  final result$ = result.value;
  free(result);
  return result$;
}

@Native<Int32 Function(HSTRING, HSTRING, Pointer<Int32>)>(
  symbol: 'WindowsCompareStringOrdinal',
)
external int _WindowsCompareStringOrdinal(
  int string1,
  int string2,
  Pointer<Int32> result,
);

/// Concatenates two specified strings.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowsconcatstring>.
///
/// {@category winrt}
int WindowsConcatString(int? string1, int? string2) {
  final newString = loggingCalloc<HSTRING>();
  final hr$ = HRESULT(
    _WindowsConcatString(string1 ?? NULL, string2 ?? NULL, newString),
  );
  if (hr$.isError) {
    free(newString);
    throw WindowsException(hr$);
  }
  final result$ = newString.value;
  free(newString);
  return result$;
}

@Native<Int32 Function(HSTRING, HSTRING, Pointer<HSTRING>)>(
  symbol: 'WindowsConcatString',
)
external int _WindowsConcatString(
  int string1,
  int string2,
  Pointer<HSTRING> newString,
);

/// Creates a new HSTRING based on the specified source string.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowscreatestring>.
///
/// {@category winrt}
int WindowsCreateString(PCWSTR? sourceString, int length) {
  final string = loggingCalloc<HSTRING>();
  final hr$ = HRESULT(
    _WindowsCreateString(sourceString ?? nullptr, length, string),
  );
  if (hr$.isError) {
    free(string);
    throw WindowsException(hr$);
  }
  final result$ = string.value;
  free(string);
  return result$;
}

@Native<Int32 Function(PCWSTR, Uint32, Pointer<HSTRING>)>(
  symbol: 'WindowsCreateString',
)
external int _WindowsCreateString(
  PCWSTR sourceString,
  int length,
  Pointer<HSTRING> string,
);

/// Decrements the reference count of a string buffer.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowsdeletestring>.
///
/// {@category winrt}
@pragma('vm:prefer-inline')
void WindowsDeleteString(int? string) {
  final hr$ = HRESULT(_WindowsDeleteString(string ?? NULL));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(HSTRING)>(symbol: 'WindowsDeleteString')
external int _WindowsDeleteString(int string);

/// Discards a preallocated string buffer if it was not promoted to an HSTRING.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowsdeletestringbuffer>.
///
/// {@category winrt}
@pragma('vm:prefer-inline')
void WindowsDeleteStringBuffer(int? bufferHandle) {
  final hr$ = HRESULT(_WindowsDeleteStringBuffer(bufferHandle ?? NULL));
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<Int32 Function(HSTRING_BUFFER)>(symbol: 'WindowsDeleteStringBuffer')
external int _WindowsDeleteStringBuffer(int bufferHandle);

/// Creates a copy of the specified string.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowsduplicatestring>.
///
/// {@category winrt}
int WindowsDuplicateString(int? string) {
  final newString = loggingCalloc<HSTRING>();
  final hr$ = HRESULT(_WindowsDuplicateString(string ?? NULL, newString));
  if (hr$.isError) {
    free(newString);
    throw WindowsException(hr$);
  }
  final result$ = newString.value;
  free(newString);
  return result$;
}

@Native<Int32 Function(HSTRING, Pointer<HSTRING>)>(
  symbol: 'WindowsDuplicateString',
)
external int _WindowsDuplicateString(int string, Pointer<HSTRING> newString);

/// Gets the length, in Unicode characters, of the specified string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowsgetstringlen>.
///
/// {@category winrt}
@pragma('vm:prefer-inline')
int WindowsGetStringLen(int? string) => _WindowsGetStringLen(string ?? NULL);

@Native<Uint32 Function(HSTRING)>(symbol: 'WindowsGetStringLen')
external int _WindowsGetStringLen(int string);

/// Retrieves the backing buffer for the specified string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowsgetstringrawbuffer>.
///
/// {@category winrt}
@pragma('vm:prefer-inline')
PCWSTR WindowsGetStringRawBuffer(int? string, Pointer<Uint32>? length) =>
    _WindowsGetStringRawBuffer(string ?? NULL, length ?? nullptr);

@Native<PCWSTR Function(HSTRING, Pointer<Uint32>)>(
  symbol: 'WindowsGetStringRawBuffer',
)
external PCWSTR _WindowsGetStringRawBuffer(int string, Pointer<Uint32> length);

/// Indicates whether the specified string is the empty string.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowsisstringempty>.
///
/// {@category winrt}
@pragma('vm:prefer-inline')
bool WindowsIsStringEmpty(int? string) =>
    _WindowsIsStringEmpty(string ?? NULL) != FALSE;

@Native<BOOL Function(HSTRING)>(symbol: 'WindowsIsStringEmpty')
external int _WindowsIsStringEmpty(int string);

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
  Pointer<HSTRING_BUFFER> bufferHandle,
) {
  final hr$ = HRESULT(
    _WindowsPreallocateStringBuffer(length, charBuffer, bufferHandle),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<
  Int32 Function(Uint32, Pointer<Pointer<Uint16>>, Pointer<HSTRING_BUFFER>)
>(symbol: 'WindowsPreallocateStringBuffer')
external int _WindowsPreallocateStringBuffer(
  int length,
  Pointer<Pointer<Uint16>> charBuffer,
  Pointer<HSTRING_BUFFER> bufferHandle,
);

/// Creates an HSTRING from the specified HSTRING_BUFFER.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowspromotestringbuffer>.
///
/// {@category winrt}
int WindowsPromoteStringBuffer(int bufferHandle) {
  final string = loggingCalloc<HSTRING>();
  final hr$ = HRESULT(_WindowsPromoteStringBuffer(bufferHandle, string));
  if (hr$.isError) {
    free(string);
    throw WindowsException(hr$);
  }
  final result$ = string.value;
  free(string);
  return result$;
}

@Native<Int32 Function(HSTRING_BUFFER, Pointer<HSTRING>)>(
  symbol: 'WindowsPromoteStringBuffer',
)
external int _WindowsPromoteStringBuffer(
  int bufferHandle,
  Pointer<HSTRING> string,
);

/// Replaces all occurrences of a set of characters in the specified string with
/// another set of characters to create a new string.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowsreplacestring>.
///
/// {@category winrt}
int WindowsReplaceString(
  int? string,
  int? stringReplaced,
  int? stringReplaceWith,
) {
  final newString = loggingCalloc<HSTRING>();
  final hr$ = HRESULT(
    _WindowsReplaceString(
      string ?? NULL,
      stringReplaced ?? NULL,
      stringReplaceWith ?? NULL,
      newString,
    ),
  );
  if (hr$.isError) {
    free(newString);
    throw WindowsException(hr$);
  }
  final result$ = newString.value;
  free(newString);
  return result$;
}

@Native<Int32 Function(HSTRING, HSTRING, HSTRING, Pointer<HSTRING>)>(
  symbol: 'WindowsReplaceString',
)
external int _WindowsReplaceString(
  int string,
  int stringReplaced,
  int stringReplaceWith,
  Pointer<HSTRING> newString,
);

/// Indicates whether the specified string has embedded null characters.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowsstringhasembeddednull>.
///
/// {@category winrt}
bool WindowsStringHasEmbeddedNull(int? string) {
  final hasEmbedNull = loggingCalloc<BOOL>();
  final hr$ = HRESULT(
    _WindowsStringHasEmbeddedNull(string ?? NULL, hasEmbedNull),
  );
  if (hr$.isError) {
    free(hasEmbedNull);
    throw WindowsException(hr$);
  }
  final result$ = hasEmbedNull.value;
  free(hasEmbedNull);
  return result$ != FALSE;
}

@Native<Int32 Function(HSTRING, Pointer<BOOL>)>(
  symbol: 'WindowsStringHasEmbeddedNull',
)
external int _WindowsStringHasEmbeddedNull(
  int string,
  Pointer<BOOL> hasEmbedNull,
);

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
int WindowsSubstring(int? string, int startIndex) {
  final newString = loggingCalloc<HSTRING>();
  final hr$ = HRESULT(_WindowsSubstring(string ?? NULL, startIndex, newString));
  if (hr$.isError) {
    free(newString);
    throw WindowsException(hr$);
  }
  final result$ = newString.value;
  free(newString);
  return result$;
}

@Native<Int32 Function(HSTRING, Uint32, Pointer<HSTRING>)>(
  symbol: 'WindowsSubstring',
)
external int _WindowsSubstring(
  int string,
  int startIndex,
  Pointer<HSTRING> newString,
);

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
int WindowsSubstringWithSpecifiedLength(
  int? string,
  int startIndex,
  int length,
) {
  final newString = loggingCalloc<HSTRING>();
  final hr$ = HRESULT(
    _WindowsSubstringWithSpecifiedLength(
      string ?? NULL,
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
  return result$;
}

@Native<Int32 Function(HSTRING, Uint32, Uint32, Pointer<HSTRING>)>(
  symbol: 'WindowsSubstringWithSpecifiedLength',
)
external int _WindowsSubstringWithSpecifiedLength(
  int string,
  int startIndex,
  int length,
  Pointer<HSTRING> newString,
);

/// Removes all trailing occurrences of a specified set of characters from the
/// source string.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowstrimstringend>.
///
/// {@category winrt}
int WindowsTrimStringEnd(int? string, int? trimString) {
  final newString = loggingCalloc<HSTRING>();
  final hr$ = HRESULT(
    _WindowsTrimStringEnd(string ?? NULL, trimString ?? NULL, newString),
  );
  if (hr$.isError) {
    free(newString);
    throw WindowsException(hr$);
  }
  final result$ = newString.value;
  free(newString);
  return result$;
}

@Native<Int32 Function(HSTRING, HSTRING, Pointer<HSTRING>)>(
  symbol: 'WindowsTrimStringEnd',
)
external int _WindowsTrimStringEnd(
  int string,
  int trimString,
  Pointer<HSTRING> newString,
);

/// Removes all leading occurrences of a specified set of characters from the
/// source string.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/winstring/nf-winstring-windowstrimstringstart>.
///
/// {@category winrt}
int WindowsTrimStringStart(int? string, int? trimString) {
  final newString = loggingCalloc<HSTRING>();
  final hr$ = HRESULT(
    _WindowsTrimStringStart(string ?? NULL, trimString ?? NULL, newString),
  );
  if (hr$.isError) {
    free(newString);
    throw WindowsException(hr$);
  }
  final result$ = newString.value;
  free(newString);
  return result$;
}

@Native<Int32 Function(HSTRING, HSTRING, Pointer<HSTRING>)>(
  symbol: 'WindowsTrimStringStart',
)
external int _WindowsTrimStringStart(
  int string,
  int trimString,
  Pointer<HSTRING> newString,
);
