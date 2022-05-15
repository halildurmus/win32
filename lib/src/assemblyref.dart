// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'com/structs.dart';
import 'scope.dart';
import 'token_object.dart';

/// An assembly reference.
///
/// This class is used to declare a reference to an external assembly. For
/// example, the Windows.Globalization assembly may contain references to object
/// in the Windows.Foundation assembly. The linkage is established through an
/// AssemblyRef entry.
class AssemblyRef extends TokenObject {
  final String name;
  final String version;

  const AssemblyRef(super.scope, super.token, this.name, this.version);

  /// Creates a assembly ref object from a provided token.
  factory AssemblyRef.fromToken(Scope scope, int token) => using((Arena arena) {
        final ppbPublicKeyOrToken = arena<Pointer<BYTE>>();
        final pcbPublicKeyOrToken = arena<ULONG>();
        final szName = arena<Uint16>(MAX_STRING_SIZE).cast<Utf16>();
        final pchName = arena<ULONG>();
        final pMetaData = arena<ASSEMBLYDATA>();
        final ppbHashValue = arena<Pointer<BYTE>>();
        final pcbHashValue = arena<ULONG>();
        final pdwAssemblyRefFlags = arena<DWORD>();

        final hr = scope.assemblyImport.GetAssemblyRefProps(
            token,
            ppbPublicKeyOrToken,
            pcbPublicKeyOrToken,
            szName,
            MAX_STRING_SIZE,
            pchName,
            pMetaData,
            ppbHashValue,
            pcbHashValue,
            pdwAssemblyRefFlags);
        if (FAILED(hr)) throw WindowsException(hr);

        final versionString = '${pMetaData.ref.usMajorVersion.toString()}.'
            '${pMetaData.ref.usMinorVersion.toString()}.'
            '${pMetaData.ref.usBuildNumber.toString()}.'
            '${pMetaData.ref.usRevisionNumber.toString()}';

        return AssemblyRef(scope, token, szName.toDartString(), versionString);
      });

  @override
  String toString() => name;
}
