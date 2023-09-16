// Copyright (c) 2020, Dart | Windows.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

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

final _netapi32 = DynamicLibrary.open('netapi32.dll');

/// Frees the memory allocated for the specified DSREG_JOIN_INFO structure,
/// which contains join information for a tenant and which you retrieved by
/// calling the NetGetAadJoinInformation function.
///
/// ```c
/// VOID NET_API_FUNCTION NetFreeAadJoinInformation(
///   [in, optional] PDSREG_JOIN_INFO pJoinInfo
/// );
/// ```
/// {@category netapi32}
void NetFreeAadJoinInformation(Pointer<DSREG_JOIN_INFO> pJoinInfo) =>
    _NetFreeAadJoinInformation(pJoinInfo);

final _NetFreeAadJoinInformation = _netapi32.lookupFunction<
    Void Function(Pointer<DSREG_JOIN_INFO> pJoinInfo),
    void Function(
        Pointer<DSREG_JOIN_INFO> pJoinInfo)>('NetFreeAadJoinInformation');

/// Retrieves the join information for the specified tenant. This function
/// examines the join information for Microsoft Azure Active Directory and
/// the work account that the current user added.
///
/// ```c
/// HRESULT NET_API_FUNCTION NetGetAadJoinInformation(
///   [in, optional] LPCWSTR          pcszTenantId,
///   [out]          PDSREG_JOIN_INFO *ppJoinInfo
/// );
/// ```
/// {@category netapi32}
int NetGetAadJoinInformation(Pointer<Utf16> pcszTenantId,
        Pointer<Pointer<DSREG_JOIN_INFO>> ppJoinInfo) =>
    _NetGetAadJoinInformation(pcszTenantId, ppJoinInfo);

final _NetGetAadJoinInformation = _netapi32.lookupFunction<
        Int32 Function(Pointer<Utf16> pcszTenantId,
            Pointer<Pointer<DSREG_JOIN_INFO>> ppJoinInfo),
        int Function(Pointer<Utf16> pcszTenantId,
            Pointer<Pointer<DSREG_JOIN_INFO>> ppJoinInfo)>(
    'NetGetAadJoinInformation');
