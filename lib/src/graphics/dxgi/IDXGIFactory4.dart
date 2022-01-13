// IDXGIFactory4.dart

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

import '../../graphics/dxgi/IDXGIFactory3.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGIFactory4 = '{1BC6EA02-EF36-464F-BF0C-21CA39E5168A}';

/// {@category Interface}
/// {@category com}
class IDXGIFactory4 extends IDXGIFactory3 {
  // vtable begins at 26, is 2 entries long.
  IDXGIFactory4(Pointer<COMObject> ptr) : super(ptr);

  int EnumAdapterByLuid(
    LUID AdapterLuid,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvAdapter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            LUID AdapterLuid,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvAdapter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            LUID AdapterLuid,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvAdapter,
          )>()(
        ptr.ref.lpVtbl,
        AdapterLuid,
        riid,
        ppvAdapter,
      );

  int EnumWarpAdapter(
    Pointer<GUID> riid,
    Pointer<Pointer> ppvAdapter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvAdapter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvAdapter,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppvAdapter,
      );
}
