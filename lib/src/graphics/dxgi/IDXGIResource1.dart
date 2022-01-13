// IDXGIResource1.dart

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

import '../../graphics/dxgi/IDXGIResource.dart';
import '../../graphics/dxgi/IDXGISurface2.dart';
import '../../foundation/structs.g.dart';
import '../../security/structs.g.dart';

/// @nodoc
const IID_IDXGIResource1 = '{30961379-4609-4A41-998E-54FE567EE0C1}';

/// {@category Interface}
/// {@category com}
class IDXGIResource1 extends IDXGIResource {
  // vtable begins at 12, is 2 entries long.
  IDXGIResource1(Pointer<COMObject> ptr) : super(ptr);

  int CreateSubresourceSurface(
    int index,
    Pointer<Pointer<COMObject>> ppSurface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<COMObject>> ppSurface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> ppSurface,
          )>()(
        ptr.ref.lpVtbl,
        index,
        ppSurface,
      );

  int CreateSharedHandle(
    Pointer<SECURITY_ATTRIBUTES> pAttributes,
    int dwAccess,
    Pointer<Utf16> lpName,
    Pointer<IntPtr> pHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SECURITY_ATTRIBUTES> pAttributes,
            Uint32 dwAccess,
            Pointer<Utf16> lpName,
            Pointer<IntPtr> pHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SECURITY_ATTRIBUTES> pAttributes,
            int dwAccess,
            Pointer<Utf16> lpName,
            Pointer<IntPtr> pHandle,
          )>()(
        ptr.ref.lpVtbl,
        pAttributes,
        dwAccess,
        lpName,
        pHandle,
      );
}
