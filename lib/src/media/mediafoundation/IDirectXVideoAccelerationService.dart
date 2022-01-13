// IDirectXVideoAccelerationService.dart

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

import '../../system/com/IUnknown.dart';
import '../../graphics/direct3d9/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../graphics/direct3d9/IDirect3DSurface9.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectXVideoAccelerationService =
    '{FC51A550-D5E7-11D9-AF55-00054E43FF02}';

/// {@category Interface}
/// {@category com}
class IDirectXVideoAccelerationService extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDirectXVideoAccelerationService(Pointer<COMObject> ptr) : super(ptr);

  int CreateSurface(
    int Width,
    int Height,
    int BackBuffers,
    int Format,
    int Pool,
    int Usage,
    int DxvaType,
    Pointer<Pointer<COMObject>> ppSurface,
    Pointer<IntPtr> pSharedHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Width,
            Uint32 Height,
            Uint32 BackBuffers,
            Uint32 Format,
            Uint32 Pool,
            Uint32 Usage,
            Int32 DxvaType,
            Pointer<Pointer<COMObject>> ppSurface,
            Pointer<IntPtr> pSharedHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Width,
            int Height,
            int BackBuffers,
            int Format,
            int Pool,
            int Usage,
            int DxvaType,
            Pointer<Pointer<COMObject>> ppSurface,
            Pointer<IntPtr> pSharedHandle,
          )>()(
        ptr.ref.lpVtbl,
        Width,
        Height,
        BackBuffers,
        Format,
        Pool,
        Usage,
        DxvaType,
        ppSurface,
        pSharedHandle,
      );
}
