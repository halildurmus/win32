// IDXGIAdapter1.dart

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

import '../../graphics/dxgi/IDXGIAdapter.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGIAdapter1 = '{29038F61-3839-4626-91FD-086879011A05}';

/// {@category Interface}
/// {@category com}
class IDXGIAdapter1 extends IDXGIAdapter {
  // vtable begins at 10, is 1 entries long.
  IDXGIAdapter1(Pointer<COMObject> ptr) : super(ptr);

  int GetDesc1(
    Pointer<DXGI_ADAPTER_DESC1> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_ADAPTER_DESC1> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_ADAPTER_DESC1> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );
}
