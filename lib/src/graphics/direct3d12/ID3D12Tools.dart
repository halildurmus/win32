// ID3D12Tools.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12Tools = '{7071E1F0-E84B-4B33-974F-12FA49DE65C5}';

/// {@category Interface}
/// {@category com}
class ID3D12Tools extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ID3D12Tools(Pointer<COMObject> ptr) : super(ptr);

  void EnableShaderInstrumentation(
    int bEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 bEnable,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int bEnable,
          )>()(
        ptr.ref.lpVtbl,
        bEnable,
      );

  int ShaderInstrumentationEnabled() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
