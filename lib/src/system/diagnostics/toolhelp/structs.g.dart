// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/toolhelp/structs.g.dart';

/// {@category Struct}
class HEAPENTRY32 extends Struct {
  @IntPtr()
  external int dwSize;

  @IntPtr()
  external int hHandle;

  @IntPtr()
  external int dwAddress;

  @IntPtr()
  external int dwBlockSize;

  @Uint32()
  external int dwFlags;

  @Uint32()
  external int dwLockCount;

  @Uint32()
  external int dwResvd;

  @Uint32()
  external int th32ProcessID;

  @IntPtr()
  external int th32HeapID;
}

/// {@category Struct}
class HEAPLIST32 extends Struct {
  @IntPtr()
  external int dwSize;

  @Uint32()
  external int th32ProcessID;

  @IntPtr()
  external int th32HeapID;

  @Uint32()
  external int dwFlags;
}

/// {@category Struct}
class MODULEENTRY32 extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int th32ModuleID;

  @Uint32()
  external int th32ProcessID;

  @Uint32()
  external int GlblcntUsage;

  @Uint32()
  external int ProccntUsage;

  external Pointer<Uint8> modBaseAddr;

  @Uint32()
  external int modBaseSize;

  @IntPtr()
  external int hModule;

  @Array(256)
  external Array<Uint16> _szModule;

  String get szModule {
    final charCodes = <int>[];
    for (var i = 0; i < 256; i++) {
      charCodes.add(_szModule[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szModule(String value) {
    final stringToStore = value.padRight(256, '\x00');
    for (var i = 0; i < 256; i++) {
      _szModule[i] = stringToStore.codeUnitAt(i);
    }
  }

  @Array(260)
  external Array<Uint16> _szExePath;

  String get szExePath {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szExePath[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szExePath(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szExePath[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class PROCESSENTRY32 extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int cntUsage;

  @Uint32()
  external int th32ProcessID;

  @IntPtr()
  external int th32DefaultHeapID;

  @Uint32()
  external int th32ModuleID;

  @Uint32()
  external int cntThreads;

  @Uint32()
  external int th32ParentProcessID;

  @Int32()
  external int pcPriClassBase;

  @Uint32()
  external int dwFlags;

  @Array(260)
  external Array<Uint16> _szExeFile;

  String get szExeFile {
    final charCodes = <int>[];
    for (var i = 0; i < 260; i++) {
      charCodes.add(_szExeFile[i]);
    }
    return String.fromCharCodes(charCodes);
  }

  set szExeFile(String value) {
    final stringToStore = value.padRight(260, '\x00');
    for (var i = 0; i < 260; i++) {
      _szExeFile[i] = stringToStore.codeUnitAt(i);
    }
  }
}

/// {@category Struct}
class THREADENTRY32 extends Struct {
  @Uint32()
  external int dwSize;

  @Uint32()
  external int cntUsage;

  @Uint32()
  external int th32ThreadID;

  @Uint32()
  external int th32OwnerProcessID;

  @Int32()
  external int tpBasePri;

  @Int32()
  external int tpDeltaPri;

  @Uint32()
  external int dwFlags;
}
