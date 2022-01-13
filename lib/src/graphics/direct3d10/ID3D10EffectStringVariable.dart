// ID3D10EffectStringVariable.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../graphics/direct3d10/ID3D10EffectVariable.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D10EffectStringVariable = '{71417501-8DF9-4E0A-A78A-255F9756BAFF}';

/// {@category Interface}
/// {@category com}
class ID3D10EffectStringVariable extends ID3D10EffectVariable {
  // vtable begins at 25, is 2 entries long.
  ID3D10EffectStringVariable(Pointer<COMObject> ptr) : super(ptr);

  int GetString(
    Pointer<Pointer<Utf8>> ppString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf8>> ppString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf8>> ppString,
          )>()(
        ptr.ref.lpVtbl,
        ppString,
      );

  int GetStringArray(
    Pointer<Pointer<Utf8>> ppStrings,
    int Offset,
    int Count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf8>> ppStrings,
            Uint32 Offset,
            Uint32 Count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf8>> ppStrings,
            int Offset,
            int Count,
          )>()(
        ptr.ref.lpVtbl,
        ppStrings,
        Offset,
        Count,
      );
}
