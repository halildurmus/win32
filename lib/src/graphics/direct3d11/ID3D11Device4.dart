// ID3D11Device4.dart

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

import '../../graphics/direct3d11/ID3D11Device3.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D11Device4 = '{8992AB71-02E6-4B8D-BA48-B056DCDA42C4}';

/// {@category Interface}
/// {@category com}
class ID3D11Device4 extends ID3D11Device3 {
  // vtable begins at 65, is 2 entries long.
  ID3D11Device4(Pointer<COMObject> ptr) : super(ptr);

  int RegisterDeviceRemovedEvent(
    int hEvent,
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(65)
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

  void UnregisterDeviceRemoved(
    int dwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(66)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 dwCookie,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int dwCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwCookie,
      );
}
