// IDXGIAdapter4.dart

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

import '../../graphics/dxgi/IDXGIAdapter3.dart';
import '../../graphics/dxgi/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGIAdapter4 = '{3C8D99D1-4FBF-4181-A82C-AF66BF7BD24E}';

/// {@category Interface}
/// {@category com}
class IDXGIAdapter4 extends IDXGIAdapter3 {
  // vtable begins at 18, is 1 entries long.
  IDXGIAdapter4(Pointer<COMObject> ptr) : super(ptr);

  int GetDesc3(
    Pointer<DXGI_ADAPTER_DESC3> pDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DXGI_ADAPTER_DESC3> pDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DXGI_ADAPTER_DESC3> pDesc,
          )>()(
        ptr.ref.lpVtbl,
        pDesc,
      );
}
