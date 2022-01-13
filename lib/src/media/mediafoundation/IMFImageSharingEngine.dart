// IMFImageSharingEngine.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_IMFImageSharingEngine = '{CFA0AE8E-7E1C-44D2-AE68-FC4C148A6354}';

/// {@category Interface}
/// {@category com}
class IMFImageSharingEngine extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFImageSharingEngine(Pointer<COMObject> ptr) : super(ptr);

  int SetSource(
    Pointer<COMObject> pStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStream,
          )>()(
        ptr.ref.lpVtbl,
        pStream,
      );

  int GetDevice(
    Pointer<DEVICE_INFO> pDevice,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEVICE_INFO> pDevice,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEVICE_INFO> pDevice,
          )>()(
        ptr.ref.lpVtbl,
        pDevice,
      );

  int Shutdown() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
