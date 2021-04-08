// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Parse the Windows Metadata for a WinRT type and generate a Dart wrapper

import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'package:winmd/winmd.dart';

void main() {
  const types = <String>[
    // This works; it implements IMediaPlaybackSource
    'Windows.Media.Playback.IMediaPlaybackItem',

    // Gives interfaces but can't resolve them
    'Windows.Foundation.Collections.IPropertySet',

    // This does not work; it implements IDictionary`2, which is in mscorlib
    'Windows.Foundation.Collections.IObservableMap`2',
  ];

  for (final type in types) {
    final typeDef = MetadataStore.getMetadataForType(type)!;
    print('Resolving ${typeDef.typeName}:');

    final reader = typeDef.reader;

    // Get first implemented interface
    final phEnum = calloc<IntPtr>();
    final rImpls = calloc<Uint32>(256);
    final pcImpls = calloc<Uint32>();
    var hr =
        reader.EnumInterfaceImpls(phEnum, typeDef.token, rImpls, 256, pcImpls);
    print('This type implements ${pcImpls.value} interface(s).');
    if (FAILED(hr)) {
      throw WindowsException(hr);
    }

    for (var i = 0; i < pcImpls.value; i++) {
      final rImpl = rImpls.elementAt(i).value;
      print('rImpl token: ${rImpl.toHexString(32)}.');

      // Process interface token
      final pClass = calloc<Uint32>();
      final ptkIface = calloc<Uint32>();
      hr = reader.GetInterfaceImplProps(rImpl, pClass, ptkIface);
      if (FAILED(hr)) {
        throw WindowsException(hr);
      }

      final iface = ptkIface.value;
      print('iface token: ${iface.toHexString(32)}. '
          'typeSpec: ${tokenIsTypeSpec(iface)}');

      // Resolve interface token
      final ptkResolutionScope = calloc<Uint32>();
      final szName = calloc<Uint16>(256).cast<Utf16>();
      final pchName = calloc<Uint32>();
      hr = reader.GetTypeRefProps(
          iface, ptkResolutionScope, szName, 256, pchName);
      if (FAILED(hr)) {
        throw WindowsException(hr);
      }
      print('iface represents: ${szName.toDartString()}');
      print(
          'ptkResolutionScope is: ${ptkResolutionScope.value.toHexString(32)}');
    }
    print('');
  }
}
