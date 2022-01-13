// IWTSBitmapRenderService.dart

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
import '../../system/remotedesktop/IWTSBitmapRendererCallback.dart';
import '../../system/remotedesktop/IWTSBitmapRenderer.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWTSBitmapRenderService = '{EA326091-05FE-40C1-B49C-3D2EF4626A0E}';

/// {@category Interface}
/// {@category com}
class IWTSBitmapRenderService extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWTSBitmapRenderService(Pointer<COMObject> ptr) : super(ptr);

  int GetMappedRenderer(
    int mappingId,
    Pointer<COMObject> pMappedRendererCallback,
    Pointer<Pointer<COMObject>> ppMappedRenderer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 mappingId,
            Pointer<COMObject> pMappedRendererCallback,
            Pointer<Pointer<COMObject>> ppMappedRenderer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int mappingId,
            Pointer<COMObject> pMappedRendererCallback,
            Pointer<Pointer<COMObject>> ppMappedRenderer,
          )>()(
        ptr.ref.lpVtbl,
        mappingId,
        pMappedRendererCallback,
        ppMappedRenderer,
      );
}
