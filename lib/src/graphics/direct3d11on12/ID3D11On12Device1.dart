// ID3D11On12Device1.dart

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

import '../../graphics/direct3d11on12/ID3D11On12Device.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D11On12Device1 = '{BDB64DF4-EA2F-4C70-B861-AAAB1258BB5D}';

/// {@category Interface}
/// {@category com}
class ID3D11On12Device1 extends ID3D11On12Device {
  // vtable begins at 6, is 1 entries long.
  ID3D11On12Device1(Pointer<COMObject> ptr) : super(ptr);

  int GetD3D12Device(
    Pointer<GUID> riid,
    Pointer<Pointer> ppvDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvDevice,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppvDevice,
      );
}
