// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'com/combase.dart';
import 'structs.dart';

final _winmm = DynamicLibrary.open('winmm.dll');

/// The PlaySound function plays a sound specified by the given file name,
/// resource, or system event.
///
/// ```c
/// BOOL PlaySound(
///   LPCTSTR pszSound,
///   HMODULE hmod,
///   DWORD fdwSound);
/// ```
/// {@category winmm}
final PlaySound = _winmm.lookupFunction<
    Int32 Function(Pointer<Utf16> pszSound, IntPtr hmod, Uint32 fdwSound),
    int Function(
        Pointer<Utf16> pszSound, int hmod, int fdwSound)>('PlaySoundW');
