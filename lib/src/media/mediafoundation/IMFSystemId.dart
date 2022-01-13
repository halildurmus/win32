// IMFSystemId.dart

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
const IID_IMFSystemId = '{FFF4AF3A-1FC1-4EF9-A29B-D26C49E2F31A}';

/// {@category Interface}
/// {@category com}
class IMFSystemId extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFSystemId(Pointer<COMObject> ptr) : super(ptr);

  int GetData(
    Pointer<Uint32> size,
    Pointer<Pointer<Uint8>> data,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> size,
            Pointer<Pointer<Uint8>> data,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> size,
            Pointer<Pointer<Uint8>> data,
          )>()(
        ptr.ref.lpVtbl,
        size,
        data,
      );

  int Setup(
    int stage,
    int cbIn,
    Pointer<Uint8> pbIn,
    Pointer<Uint32> pcbOut,
    Pointer<Pointer<Uint8>> ppbOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 stage,
            Uint32 cbIn,
            Pointer<Uint8> pbIn,
            Pointer<Uint32> pcbOut,
            Pointer<Pointer<Uint8>> ppbOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int stage,
            int cbIn,
            Pointer<Uint8> pbIn,
            Pointer<Uint32> pcbOut,
            Pointer<Pointer<Uint8>> ppbOut,
          )>()(
        ptr.ref.lpVtbl,
        stage,
        cbIn,
        pbIn,
        pcbOut,
        ppbOut,
      );
}
