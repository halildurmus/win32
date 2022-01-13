// IMFExtendedCameraIntrinsics.dart

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
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFExtendedCameraIntrinsicModel.dart';

/// @nodoc
const IID_IMFExtendedCameraIntrinsics =
    '{687F6DAC-6987-4750-A16A-734D1E7A10FE}';

/// {@category Interface}
/// {@category com}
class IMFExtendedCameraIntrinsics extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMFExtendedCameraIntrinsics(Pointer<COMObject> ptr) : super(ptr);

  int InitializeFromBuffer(
    Pointer<Uint8> pbBuffer,
    int dwBufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbBuffer,
            Uint32 dwBufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbBuffer,
            int dwBufferSize,
          )>()(
        ptr.ref.lpVtbl,
        pbBuffer,
        dwBufferSize,
      );

  int GetBufferSize(
    Pointer<Uint32> pdwBufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwBufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwBufferSize,
          )>()(
        ptr.ref.lpVtbl,
        pdwBufferSize,
      );

  int SerializeToBuffer(
    Pointer<Uint8> pbBuffer,
    Pointer<Uint32> pdwBufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbBuffer,
            Pointer<Uint32> pdwBufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbBuffer,
            Pointer<Uint32> pdwBufferSize,
          )>()(
        ptr.ref.lpVtbl,
        pbBuffer,
        pdwBufferSize,
      );

  int GetIntrinsicModelCount(
    Pointer<Uint32> pdwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwCount,
      );

  int GetIntrinsicModelByIndex(
    int dwIndex,
    Pointer<Pointer<COMObject>> ppIntrinsicModel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Pointer<COMObject>> ppIntrinsicModel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Pointer<COMObject>> ppIntrinsicModel,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        ppIntrinsicModel,
      );

  int AddIntrinsicModel(
    Pointer<COMObject> pIntrinsicModel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIntrinsicModel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIntrinsicModel,
          )>()(
        ptr.ref.lpVtbl,
        pIntrinsicModel,
      );
}
