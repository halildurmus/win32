// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Maps FFI prototypes onto the corresponding Win32 API function calls.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: non_constant_identifier_names, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';

import '../bstr.dart';
import '../com/imetadatadispenserex.g.dart';
import '../com/imetadataimport2.g.dart';
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
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../win32_error.dart';
import '../win32_result.dart';

/// Locates and retrieves the metadata file that describes the Application
/// Binary Interface (ABI) for the specified typename.
///
/// Throws a [WindowsException] on failure.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/rometadataresolution/nf-rometadataresolution-rogetmetadatafile>.
///
/// {@category winrt}
@pragma('vm:prefer-inline')
void RoGetMetaDataFile(
  HSTRING name,
  IMetaDataDispenserEx? metaDataDispenser,
  Pointer<Pointer>? metaDataFilePath,
  Pointer<VTablePointer>? metaDataImport,
  Pointer<Uint32>? typeDefToken,
) {
  final hr$ = HRESULT(
    _RoGetMetaDataFile(
      name,
      metaDataDispenser?.ptr ?? nullptr,
      metaDataFilePath ?? nullptr,
      metaDataImport ?? nullptr,
      typeDefToken ?? nullptr,
    ),
  );
  if (hr$.isError) throw WindowsException(hr$);
}

@Native<
  Int32 Function(
    Pointer,
    VTablePointer,
    Pointer<Pointer>,
    Pointer<VTablePointer>,
    Pointer<Uint32>,
  )
>(symbol: 'RoGetMetaDataFile')
external int _RoGetMetaDataFile(
  Pointer name,
  VTablePointer metaDataDispenser,
  Pointer<Pointer> metaDataFilePath,
  Pointer<VTablePointer> metaDataImport,
  Pointer<Uint32> typeDefToken,
);
