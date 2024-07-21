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

final _api_ms_win_ro_typeresolution_l1_1_0 =
    DynamicLibrary.open('api-ms-win-ro-typeresolution-l1-1-0.dll');

/// Locates and retrieves the metadata file that describes the Application
/// Binary Interface (ABI) for the specified typename.
///
/// ```c
/// HRESULT RoGetMetaDataFile(
///   [in]            const HSTRING        name,
///   [in, optional]  IMetaDataDispenserEx *metaDataDispenser,
///   [out, optional] HSTRING              *metaDataFilePath,
///   [out, optional] IMetaDataImport2     **metaDataImport,
///   [out, optional] mdTypeDef            *typeDefToken
/// );
/// ```
/// {@category winrt}
int RoGetMetaDataFile(
        int name,
        Pointer<COMObject> metaDataDispenser,
        Pointer<IntPtr> metaDataFilePath,
        Pointer<Pointer<COMObject>> metaDataImport,
        Pointer<Uint32> typeDefToken) =>
    _RoGetMetaDataFile(name, metaDataDispenser, metaDataFilePath,
        metaDataImport, typeDefToken);

final _RoGetMetaDataFile = _api_ms_win_ro_typeresolution_l1_1_0.lookupFunction<
    Int32 Function(
        IntPtr name,
        Pointer<COMObject> metaDataDispenser,
        Pointer<IntPtr> metaDataFilePath,
        Pointer<Pointer<COMObject>> metaDataImport,
        Pointer<Uint32> typeDefToken),
    int Function(
        int name,
        Pointer<COMObject> metaDataDispenser,
        Pointer<IntPtr> metaDataFilePath,
        Pointer<Pointer<COMObject>> metaDataImport,
        Pointer<Uint32> typeDefToken)>('RoGetMetaDataFile');
