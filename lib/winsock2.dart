// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: directives_ordering

/// Support for programming against the Win32 Windows Socket 2 library on
/// Windows operating systems.
///
/// This library extends the core `win32` library with Windows Socket functions.
/// Since this library is somewhat specialist and many of its function names are
/// likely to conflict with other libraries or programs, it is separately
/// exported.
///
/// The `winsock2` library will normally be used in conjunction with the main
/// `win32` library, and the latter will be required for constants and structs
/// used here.
library winsock2;

// Core Win32 APIs, constants and macros
export 'src/structs.g.dart' show addrinfo, fd_set, SOCKADDR, timeval;

// Traditional C-style Windows APIs
export 'src/ws2_32.dart';
