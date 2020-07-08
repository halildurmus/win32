// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

final _comctl32 = DynamicLibrary.open('comctl32.dll');

/// {@category comctl32}
final TaskDialog =
    _comctl32.lookupFunction<taskDialogNative, taskDialogDart>('TaskDialog');
