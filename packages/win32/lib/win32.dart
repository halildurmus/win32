// ignore_for_file: directives_ordering

/// Provides direct, strongly-typed access to core Win32 and COM APIs for
/// Windows development.
///
/// It exposes commonly used functions, constants, and data structures, enabling
/// Dart and Flutter applications to integrate with native Windows functionality
/// without requiring a C or C++ layer.
///
/// The Win32 API surface is vast and uneven in relevance. Rather than
/// attempting full coverage, this package focuses on APIs that are broadly
/// useful to Dart developers, Windows application authors, and Flutter plugin
/// maintainers. Lower-level or highly specialized APIs are included
/// selectively, based on practical demand and long-term maintainability.
///
/// Win32 and COM are fundamentally C-based technologies. Their design relies
/// heavily on pointers, explicit memory management, structs, and native string
/// representations. This library exposes those concepts directly and
/// intentionally, prioritizing correctness, performance, and fidelity to the
/// underlying platform. Higher-level or more idiomatic Dart abstractions can be
/// built on top where appropriate, but are not imposed by default.
///
/// Win32 is at its heart a C-based API, and accordingly adopts the style and
/// idioms of that language, including heavy usage of pointers, structs
/// allocated on the heap, and null-terminated strings. As a result, you may
/// choose to wrap the exposed APIs in your application to make their invocation
/// more idiomatic for a Dart consumer.
///
/// For architectural guidance, design rationale, and examples of building
/// Windows applications and plugins with Dart, see the
/// [documentation](https://win32.pub/docs).
library;

export '_com.g.dart'; // COM interfaces.
export 'src/com/interface.g.dart'; // ComInterface and ComCompanion classes.

export '_win32.g.dart'; // Traditional C-style Windows APIs.

// Useful extension methods.
export 'src/extensions/arena.dart';
export 'src/extensions/dialog.dart';
export 'src/extensions/filetime.dart';
export 'src/extensions/int.dart';
export 'src/extensions/pointer.dart';
export 'src/extensions/string.dart';
export 'src/extensions/systemtime.dart';
export 'src/extensions/uint8list.dart';

// Core Win32 APIs, callbacks, constants, enumerations, macros, structures,
// and more.
export 'src/bstr.dart';
export 'src/callbacks.dart';
export 'src/callbacks.g.dart';
export 'src/constants.dart';
export 'src/constants.g.dart';
export 'src/dispatcher.dart';
export 'src/enums.dart';
export 'src/enums.g.dart';
export 'src/exception.dart';
export 'src/functions.dart';
export 'src/guid.dart';
export 'src/hresult.dart';
export 'src/hstring.dart';
export 'src/inline.dart';
export 'src/macros.dart';
export 'src/ntstatus.dart';
export 'src/propvariant.dart';
export 'src/pstr.dart';
export 'src/pcstr.dart';
export 'src/pwstr.dart';
export 'src/pcwstr.dart';
export 'src/rpc_status.dart';
export 'src/structs.dart';
export 'src/structs.g.dart';
export 'src/types.dart';
export 'src/utils.dart';
export 'src/variant.dart';
export 'src/win32_error.dart';
export 'src/win32_result.dart';
