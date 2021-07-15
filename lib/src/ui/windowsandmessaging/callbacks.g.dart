// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

// -----------------------------------------------------------------------------
// Linter exceptions
// -----------------------------------------------------------------------------
// ignore_for_file: camel_case_types
// ignore_for_file: camel_case_extensions
//
// Why? The linter defaults to throw a warning for types not named as camel
// case. We deliberately break this convention to match the Win32 underlying
// types.
//
//
// ignore_for_file: unused_field
//
// Why? The linter complains about unused fields (e.g. a class that contains
// underscore-prefixed members that are not used in the library. In this class,
// we use this feature to ensure that sizeOf<STRUCT_NAME> returns a size at
// least as large as the underlying native struct. See, for example,
// ENUMLOGFONTEX.
//
//
// ignore_for_file: unnecessary_getters_setters
//
// Why? In structs like VARIANT, we're using getters and setters to project the
// same underlying data property to various union types. The trivial overhead is
// outweighed by readability.
//
//
// ignore_for_file: unused_import
//
// Why? We speculatively include some imports that we might generate a
// requirement for.
// -----------------------------------------------------------------------------

import 'dart:ffi';

import 'package:ffi/ffi.dart';
import '../../guid.dart';
import '../../foundation/structs.g.dart';
import '../../system/diagnostics/debug/structs.g.dart';

typedef DESKTOPENUMPROCA = Int32 Function(Pointer<Utf8> param0, IntPtr param1);
typedef DESKTOPENUMPROCW = Int32 Function(Pointer<Utf16> param0, IntPtr param1);
typedef DLGPROC = IntPtr Function(
    IntPtr param0, Uint32 param1, IntPtr param2, IntPtr param3);
typedef HOOKPROC = IntPtr Function(Int32 code, IntPtr wParam, IntPtr lParam);
typedef LPCCHOOKPROC = IntPtr Function(
    IntPtr param0, Uint32 param1, IntPtr param2, IntPtr param3);
typedef LPCFHOOKPROC = IntPtr Function(
    IntPtr param0, Uint32 param1, IntPtr param2, IntPtr param3);
typedef LPFRHOOKPROC = IntPtr Function(
    IntPtr param0, Uint32 param1, IntPtr param2, IntPtr param3);
typedef LPOFNHOOKPROC = IntPtr Function(
    IntPtr param0, Uint32 param1, IntPtr param2, IntPtr param3);
typedef LPPAGEPAINTHOOK = IntPtr Function(
    IntPtr param0, Uint32 param1, IntPtr param2, IntPtr param3);
typedef LPPAGESETUPHOOK = IntPtr Function(
    IntPtr param0, Uint32 param1, IntPtr param2, IntPtr param3);
typedef LPPRINTHOOKPROC = IntPtr Function(
    IntPtr param0, Uint32 param1, IntPtr param2, IntPtr param3);
typedef LPSETUPHOOKPROC = IntPtr Function(
    IntPtr param0, Uint32 param1, IntPtr param2, IntPtr param3);
typedef NAMEENUMPROCA = Int32 Function(Pointer<Utf8> param0, IntPtr param1);
typedef NAMEENUMPROCW = Int32 Function(Pointer<Utf16> param0, IntPtr param1);
typedef PREGISTERCLASSNAMEW = Uint8 Function(Pointer<Utf16> param0);
typedef PROPENUMPROCA = Int32 Function(
    IntPtr param0, Pointer<Utf8> param1, IntPtr param2);
typedef PROPENUMPROCEXA = Int32 Function(
    IntPtr param0, Pointer<Utf8> param1, IntPtr param2, IntPtr param3);
typedef PROPENUMPROCEXW = Int32 Function(
    IntPtr param0, Pointer<Utf16> param1, IntPtr param2, IntPtr param3);
typedef PROPENUMPROCW = Int32 Function(
    IntPtr param0, Pointer<Utf16> param1, IntPtr param2);
typedef SENDASYNCPROC = Void Function(
    IntPtr param0, Uint32 param1, IntPtr param2, IntPtr param3);
typedef TIMERPROC = Void Function(
    IntPtr param0, Uint32 param1, IntPtr param2, Uint32 param3);
typedef WINSTAENUMPROCA = Int32 Function(Pointer<Utf8> param0, IntPtr param1);
typedef WINSTAENUMPROCW = Int32 Function(Pointer<Utf16> param0, IntPtr param1);
typedef WNDENUMPROC = Int32 Function(IntPtr param0, IntPtr param1);
typedef WNDPROC = IntPtr Function(
    IntPtr param0, Uint32 param1, IntPtr param2, IntPtr param3);
