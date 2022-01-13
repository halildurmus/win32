// IDXGIAdapter2.dart

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

import '../../graphics/dxgi/IDXGIAdapter1.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGIAdapter2 = '{0AA1AE0A-FA0E-4B84-8644-E05FF8E5ACB5}';

/// {@category Interface}
/// {@category com}
class IDXGIAdapter2 extends IDXGIAdapter1 {
  // vtable begins at 11, is 1 entries long.
  IDXGIAdapter2(Pointer<COMObject> ptr) : super(ptr);

  int GetDesc2(
    Pointer<DXGI_ADAPTER_DESC2> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_ADAPTER_DESC2> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_ADAPTER_DESC2> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );
}
