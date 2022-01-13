// IWMDMDeviceSession.dart

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
import '../../media/devicemanager/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDMDeviceSession = '{82AF0A65-9D96-412C-83E5-3C43E4B06CC7}';

/// {@category Interface}
/// {@category com}
class IWMDMDeviceSession extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMDMDeviceSession(Pointer<COMObject> ptr) : super(ptr);

  int BeginSession(
    int type,
    Pointer<Uint8> pCtx,
    int dwSizeCtx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 type,
            Pointer<Uint8> pCtx,
            Uint32 dwSizeCtx,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int type,
            Pointer<Uint8> pCtx,
            int dwSizeCtx,
          )>()(
        ptr.ref.lpVtbl,
        type,
        pCtx,
        dwSizeCtx,
      );

  int EndSession(
    int type,
    Pointer<Uint8> pCtx,
    int dwSizeCtx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 type,
            Pointer<Uint8> pCtx,
            Uint32 dwSizeCtx,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int type,
            Pointer<Uint8> pCtx,
            int dwSizeCtx,
          )>()(
        ptr.ref.lpVtbl,
        type,
        pCtx,
        dwSizeCtx,
      );
}
