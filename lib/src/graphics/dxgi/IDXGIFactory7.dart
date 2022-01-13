// IDXGIFactory7.dart

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

import '../../graphics/dxgi/IDXGIFactory6.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGIFactory7 = '{A4966EED-76DB-44DA-84C1-EE9A7AFB20A8}';

/// {@category Interface}
/// {@category com}
class IDXGIFactory7 extends IDXGIFactory6 {
  // vtable begins at 30, is 2 entries long.
  IDXGIFactory7(Pointer<COMObject> ptr) : super(ptr);

  int RegisterAdaptersChangedEvent(
    int hEvent,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hEvent,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hEvent,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        hEvent,
        pdwCookie,
      );

  int UnregisterAdaptersChangedEvent(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
      );
}
