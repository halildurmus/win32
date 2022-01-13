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
import '../../../specialTypes.dart';
import '../../../system/com/IUnknown.dart';

/// {@category Struct}
class CALLFRAMEINFO extends Struct {
  @Uint32()
  external int iMethod;

  @Int32()
  external int fHasInValues;

  @Int32()
  external int fHasInOutValues;

  @Int32()
  external int fHasOutValues;

  @Int32()
  external int fDerivesFromIDispatch;

  @Int32()
  external int cInInterfacesMax;

  @Int32()
  external int cInOutInterfacesMax;

  @Int32()
  external int cOutInterfacesMax;

  @Int32()
  external int cTopLevelInInterfaces;

  external GUID iid;

  @Uint32()
  external int cMethod;

  @Uint32()
  external int cParams;
}

/// {@category Struct}
class CALLFRAMEPARAMINFO extends Struct {
  @Uint8()
  external int fIn;

  @Uint8()
  external int fOut;

  @Uint32()
  external int stackOffset;

  @Uint32()
  external int cbParam;
}

/// {@category Struct}
class CALLFRAME_MARSHALCONTEXT extends Struct {
  @Uint8()
  external int fIn;

  @Uint32()
  external int dwDestContext;

  external Pointer pvDestContext;

  external Pointer<COMObject> punkReserved;

  external GUID guidTransferSyntax;
}
