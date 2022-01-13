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
import '../../combase.dart';
import '../../guid.dart';

/// {@category Struct}
class TBS_CONTEXT_PARAMS extends Struct {
  @Uint32()
  external int version;
}

/// {@category Struct}
class TBS_CONTEXT_PARAMS2 extends Struct {
  @Uint32()
  external int version;

  external _TBS_CONTEXT_PARAMS2__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _TBS_CONTEXT_PARAMS2__Anonymous_e__Union extends Union {
  external _TBS_CONTEXT_PARAMS2__Anonymous_e__Union__Anonymous_e__Struct
      Anonymous;

  @Uint32()
  external int asUINT32;
}

/// {@category Struct}
class _TBS_CONTEXT_PARAMS2__Anonymous_e__Union__Anonymous_e__Struct
    extends Struct {
  @Uint32()
  external int bitfield;
}

extension TBS_CONTEXT_PARAMS2__Anonymous_e__Union_Extension
    on TBS_CONTEXT_PARAMS2 {
  int get bitfield => this.Anonymous.Anonymous.bitfield;
  set bitfield(int value) => this.Anonymous.Anonymous.bitfield = value;
}

extension TBS_CONTEXT_PARAMS2_Extension on TBS_CONTEXT_PARAMS2 {
  _TBS_CONTEXT_PARAMS2__Anonymous_e__Union__Anonymous_e__Struct get Anonymous =>
      this.Anonymous.Anonymous;
  set Anonymous(
          _TBS_CONTEXT_PARAMS2__Anonymous_e__Union__Anonymous_e__Struct
              value) =>
      this.Anonymous.Anonymous = value;

  int get asUINT32 => this.Anonymous.asUINT32;
  set asUINT32(int value) => this.Anonymous.asUINT32 = value;
}

/// {@category Struct}
class TPM_DEVICE_INFO extends Struct {
  @Uint32()
  external int structVersion;

  @Uint32()
  external int tpmVersion;

  @Uint32()
  external int tpmInterfaceType;

  @Uint32()
  external int tpmImpRevision;
}

/// {@category Struct}
class tdTPM_WNF_PROVISIONING extends Struct {
  @Uint32()
  external int status;

  @Array(28)
  external Array<Uint8> message;
}
