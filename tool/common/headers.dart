const structFileHeader = '''
// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Dart representations of common structs used in the Win32 API.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

// Dart 2.17 will introduce a new `Char` FFI type, which conflicts with
// CHAR_INFO.Char. Hiding this in advance to prevent later conflict, but we need
// to disable the lint since it's not in 2.16.
// ignore: undefined_hidden_name
import 'dart:ffi' hide Char;
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
''';
