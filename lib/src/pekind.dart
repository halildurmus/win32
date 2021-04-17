// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:win32/win32.dart';

import 'com/IMetaDataImport2.dart';
import 'constants.dart';
import 'type_aliases.dart';
import 'utils.dart';

const IMAGE_FILE_MACHINE_I386 = 0x014C;
const IMAGE_FILE_MACHINE_IA64 = 0x0200;
const IMAGE_FILE_MACHINE_AMD64 = 0x8664;

enum ImageType { i386, ia64, amd64 }

class PEKind {
  late final int _machine;
  late final int _peKind;

  PEKind(IMetaDataImport2 reader) {
    final pdwPEKind = calloc<DWORD>();
    final pdwMachine = calloc<DWORD>();

    try {
      final hr = reader.GetPEKind(pdwPEKind, pdwMachine);
      if (SUCCEEDED(hr)) {
        _peKind = pdwPEKind.value;
        _machine = pdwMachine.value;
      } else {
        _peKind = 0;
        _machine = 0;
      }
    } finally {
      free(pdwPEKind);
      free(pdwMachine);
    }
  }

  /// Returns false if the file is not in portable executable (PE) file format.
  bool get isPEFile => _peKind != 0;

  /// Returns true if this PE file contains only managed code, and is therefore
  /// neutral with respect to 32-bit or 64-bit platforms.
  bool get isILOnly => _peKind & CorPEKind.peILonly == CorPEKind.peILonly;

  /// Returns true if this PE file makes Win32 calls.
  bool get makes32BitCalls =>
      _peKind & CorPEKind.pe32BitRequired == CorPEKind.pe32BitRequired;

  /// Returns true if this PE file requires a 64-bit platform.
  bool get runsOn64BitPlatform =>
      _peKind & CorPEKind.pe32Plus == CorPEKind.pe32Plus;

  /// Returns true if this PE file contains native (unmanaged) code.
  bool get isNativeCode =>
      _peKind & CorPEKind.pe32Unmanaged == CorPEKind.pe32Unmanaged;

  /// Returns true if this PE file is platform-neutral and prefers to be loaded
  /// in a 32-bit environment.
  bool get isPlatformNeutral =>
      _peKind & CorPEKind.pe32BitPreferred == CorPEKind.pe32BitPreferred;

  /// Returns a value that identifies the platform architecture targeted by the
  /// module.
  ImageType get imageType {
    switch (_machine) {
      case IMAGE_FILE_MACHINE_I386:
        return ImageType.i386;
      case IMAGE_FILE_MACHINE_IA64:
        return ImageType.ia64;
      case IMAGE_FILE_MACHINE_AMD64:
        return ImageType.amd64;
      default:
        throw WinmdException('Unrecognized image type.');
    }
  }
}
