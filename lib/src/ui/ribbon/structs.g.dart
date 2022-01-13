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
import '../../ui/ribbon/structs.g.dart';
import '../../foundation/structs.g.dart';

/// {@category Struct}
class UI_EVENTPARAMS extends Struct {
  @Int32()
  external int EventType;

  external _UI_EVENTPARAMS__Anonymous_e__Union Anonymous;
}

/// {@category Struct}
class _UI_EVENTPARAMS__Anonymous_e__Union extends Union {
  @Int32()
  external int Modes;

  external UI_EVENTPARAMS_COMMAND Params;
}

extension UI_EVENTPARAMS_Extension on UI_EVENTPARAMS {
  int get Modes => this.Anonymous.Modes;
  set Modes(int value) => this.Anonymous.Modes = value;

  UI_EVENTPARAMS_COMMAND get Params => this.Anonymous.Params;
  set Params(UI_EVENTPARAMS_COMMAND value) => this.Anonymous.Params = value;
}

/// {@category Struct}
class UI_EVENTPARAMS_COMMAND extends Struct {
  @Uint32()
  external int CommandID;

  external Pointer<Utf16> CommandName;

  @Uint32()
  external int ParentCommandID;

  external Pointer<Utf16> ParentCommandName;

  @Uint32()
  external int SelectionIndex;

  @Int32()
  external int Location;
}
