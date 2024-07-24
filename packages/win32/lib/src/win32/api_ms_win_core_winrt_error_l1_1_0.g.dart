// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, non_constant_identifier_names
// ignore_for_file: constant_identifier_names, camel_case_types

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../guid.dart';
import '../structs.g.dart';
import '../variant.dart';

final _api_ms_win_core_winrt_error_l1_1_0 =
    DynamicLibrary.open('api-ms-win-core-winrt-error-l1-1-0.dll');

/// Gets the restricted error information object set by a previous call to
/// SetRestrictedErrorInfo in the current logical thread.
///
/// ```c
/// HRESULT GetRestrictedErrorInfo(
///   [out] IRestrictedErrorInfo **ppRestrictedErrorInfo
/// );
/// ```
/// {@category winrt}
int GetRestrictedErrorInfo(Pointer<Pointer<COMObject>> ppRestrictedErrorInfo) =>
    _GetRestrictedErrorInfo(ppRestrictedErrorInfo);

final _GetRestrictedErrorInfo =
    _api_ms_win_core_winrt_error_l1_1_0.lookupFunction<
            Int32 Function(Pointer<Pointer<COMObject>> ppRestrictedErrorInfo),
            int Function(Pointer<Pointer<COMObject>> ppRestrictedErrorInfo)>(
        'GetRestrictedErrorInfo');
