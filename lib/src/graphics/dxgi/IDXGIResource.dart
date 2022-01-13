// IDXGIResource.dart

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

import '../../graphics/dxgi/IDXGIDeviceSubObject.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/dxgi/structs.g.dart';

/// @nodoc
const IID_IDXGIResource = '{035F3AB4-482E-4E50-B41F-8A7F8BD8960B}';

/// {@category Interface}
/// {@category com}
class IDXGIResource extends IDXGIDeviceSubObject {
  // vtable begins at 8, is 4 entries long.
  IDXGIResource(Pointer<COMObject> ptr) : super(ptr);

  int GetSharedHandle(
    Pointer<IntPtr> pSharedHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> pSharedHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> pSharedHandle,
          )>()(
        ptr.ref.lpVtbl,
        pSharedHandle,
      );

  int GetUsage(
    Pointer<Uint32> pUsage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pUsage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pUsage,
          )>()(
        ptr.ref.lpVtbl,
        pUsage,
      );

  int SetEvictionPriority(
    int EvictionPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 EvictionPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int EvictionPriority,
          )>()(
        ptr.ref.lpVtbl,
        EvictionPriority,
      );

  int GetEvictionPriority(
    Pointer<Uint32> pEvictionPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pEvictionPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pEvictionPriority,
          )>()(
        ptr.ref.lpVtbl,
        pEvictionPriority,
      );
}
