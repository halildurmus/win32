// IWMCodecAMVideoAccelerator.dart

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
import '../../media/directshow/IAMVideoAccelerator.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';
import '../../media/windowsmediaformat/IWMPlayerTimestampHook.dart';

/// @nodoc
const IID_IWMCodecAMVideoAccelerator = '{D98EE251-34E0-4A2D-9312-9B4C788D9FA1}';

/// {@category Interface}
/// {@category com}
class IWMCodecAMVideoAccelerator extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWMCodecAMVideoAccelerator(Pointer<COMObject> ptr) : super(ptr);

  int SetAcceleratorInterface(
    Pointer<COMObject> pIAMVA,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIAMVA,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIAMVA,
          )>()(
        ptr.ref.lpVtbl,
        pIAMVA,
      );

  int NegotiateConnection(
    Pointer<AM_MEDIA_TYPE> pMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AM_MEDIA_TYPE> pMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AM_MEDIA_TYPE> pMediaType,
          )>()(
        ptr.ref.lpVtbl,
        pMediaType,
      );

  int SetPlayerNotify(
    Pointer<COMObject> pHook,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pHook,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pHook,
          )>()(
        ptr.ref.lpVtbl,
        pHook,
      );
}
