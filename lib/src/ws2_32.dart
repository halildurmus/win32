// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'callbacks.dart';
import 'combase.dart';
import 'structs.dart';
import 'structs.g.dart';

final _ws2_32 = DynamicLibrary.open('ws2_32.dll');

/// The socket function creates a socket that is bound to a specific
/// transport service provider.
///
/// ```c
/// SOCKET WSAAPI socket(
///   int af,
///   int type,
///   int protocol
/// );
/// ```
/// {@category winsock}
int socket(int af, int type, int protocol) {
  final _socket = _ws2_32.lookupFunction<
      IntPtr Function(Int32 af, Int32 type, Int32 protocol),
      int Function(int af, int type, int protocol)>('socket');
  return _socket(af, type, protocol);
}
