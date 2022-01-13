// IDXGISurface2.dart

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

import '../../graphics/dxgi/IDXGISurface1.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDXGISurface2 = '{ABA496DD-B617-4CB8-A866-BC44D7EB1FA2}';

/// {@category Interface}
/// {@category com}
class IDXGISurface2 extends IDXGISurface1 {
  // vtable begins at 13, is 1 entries long.
  IDXGISurface2(Pointer<COMObject> ptr) : super(ptr);

  int GetResource(
    Pointer<GUID> riid,
    Pointer<Pointer> ppParentResource,
    Pointer<Uint32> pSubresourceIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppParentResource,
            Pointer<Uint32> pSubresourceIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppParentResource,
            Pointer<Uint32> pSubresourceIndex,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppParentResource,
        pSubresourceIndex,
      );
}
