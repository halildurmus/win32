// IDXGISwapChain4.dart

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

import '../../graphics/dxgi/IDXGISwapChain3.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGISwapChain4 = '{3D585D5A-BD4A-489E-B1F4-3DBCB6452FFB}';

/// {@category Interface}
/// {@category com}
class IDXGISwapChain4 extends IDXGISwapChain3 {
  // vtable begins at 40, is 1 entries long.
  IDXGISwapChain4(Pointer<COMObject> ptr) : super(ptr);

  int SetHDRMetaData(
    int Type,
    int Size,
    Pointer pMetaData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Type,
            Uint32 Size,
            Pointer pMetaData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Type,
            int Size,
            Pointer pMetaData,
          )>()(
        ptr.ref.lpVtbl,
        Type,
        Size,
        pMetaData,
      );
}
