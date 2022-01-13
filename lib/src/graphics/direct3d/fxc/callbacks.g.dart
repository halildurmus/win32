// Copyright (c) 2020, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// Native callback functions that can get called by the Win32 API

// ignore_for_file: camel_case_extensions, camel_case_types
// ignore_for_file: directives_ordering, unnecessary_getters_setters
// ignore_for_file: unused_field, unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'structs.g.dart';
import '../../../combase.dart';
import '../../../guid.dart';
import '../../../foundation/structs.g.dart';
import '../../../graphics/direct3d/structs.g.dart';
import '../../../graphics/direct3d/ID3DInclude.dart';
import '../../../graphics/direct3d/ID3DBlob.dart';

typedef pD3DCompile = Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSize,
  Pointer<Utf8> pFileName,
  Pointer<D3D_SHADER_MACRO> pDefines,
  Pointer<COMObject> pInclude,
  Pointer<Utf8> pEntrypoint,
  Pointer<Utf8> pTarget,
  Uint32 Flags1,
  Uint32 Flags2,
  Pointer<Pointer<COMObject>> ppCode,
  Pointer<Pointer<COMObject>> ppErrorMsgs,
);
typedef pD3DDisassemble = Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSize,
  Uint32 Flags,
  Pointer<Utf8> szComments,
  Pointer<Pointer<COMObject>> ppDisassembly,
);
typedef pD3DPreprocess = Int32 Function(
  Pointer pSrcData,
  IntPtr SrcDataSize,
  Pointer<Utf8> pFileName,
  Pointer<D3D_SHADER_MACRO> pDefines,
  Pointer<COMObject> pInclude,
  Pointer<Pointer<COMObject>> ppCodeText,
  Pointer<Pointer<COMObject>> ppErrorMsgs,
);
