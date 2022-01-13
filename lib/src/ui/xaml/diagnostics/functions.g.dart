// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'enums.g.dart';

import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart'; // -----------------------------------------------------------------------

// windows.ui.xaml.dll
// -----------------------------------------------------------------------
final _windows_ui_xaml = DynamicLibrary.open('windows.ui.xaml.dll');

int InitializeXamlDiagnostic(
  Pointer<Utf16> endPointName,
  int pid,
  Pointer<Utf16> wszDllXamlDiagnostics,
  Pointer<Utf16> wszTAPDllName,
  GUID tapClsid,
) =>
    _InitializeXamlDiagnostic(
      endPointName,
      pid,
      wszDllXamlDiagnostics,
      wszTAPDllName,
      tapClsid,
    );

late final _InitializeXamlDiagnostic = _windows_ui_xaml.lookupFunction<
    Int32 Function(
  Pointer<Utf16> endPointName,
  Uint32 pid,
  Pointer<Utf16> wszDllXamlDiagnostics,
  Pointer<Utf16> wszTAPDllName,
  GUID tapClsid,
),
    int Function(
  Pointer<Utf16> endPointName,
  int pid,
  Pointer<Utf16> wszDllXamlDiagnostics,
  Pointer<Utf16> wszTAPDllName,
  GUID tapClsid,
)>('InitializeXamlDiagnostic');

int InitializeXamlDiagnosticsEx(
  Pointer<Utf16> endPointName,
  int pid,
  Pointer<Utf16> wszDllXamlDiagnostics,
  Pointer<Utf16> wszTAPDllName,
  GUID tapClsid,
  Pointer<Utf16> wszInitializationData,
) =>
    _InitializeXamlDiagnosticsEx(
      endPointName,
      pid,
      wszDllXamlDiagnostics,
      wszTAPDllName,
      tapClsid,
      wszInitializationData,
    );

late final _InitializeXamlDiagnosticsEx = _windows_ui_xaml.lookupFunction<
    Int32 Function(
  Pointer<Utf16> endPointName,
  Uint32 pid,
  Pointer<Utf16> wszDllXamlDiagnostics,
  Pointer<Utf16> wszTAPDllName,
  GUID tapClsid,
  Pointer<Utf16> wszInitializationData,
),
    int Function(
  Pointer<Utf16> endPointName,
  int pid,
  Pointer<Utf16> wszDllXamlDiagnostics,
  Pointer<Utf16> wszTAPDllName,
  GUID tapClsid,
  Pointer<Utf16> wszInitializationData,
)>('InitializeXamlDiagnosticsEx');
