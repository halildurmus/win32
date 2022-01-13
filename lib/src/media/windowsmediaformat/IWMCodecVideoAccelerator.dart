// IWMCodecVideoAccelerator.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/windowsmediaformat/IWMPlayerTimestampHook.dart';

/// @nodoc
const IID_IWMCodecVideoAccelerator = '{990641B0-739F-4E94-A808-9888DA8F75AF}';

/// {@category Interface}
/// {@category com}
class IWMCodecVideoAccelerator extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMCodecVideoAccelerator(Pointer<COMObject> ptr) : super(ptr);

  int NegotiateConnection(
    Pointer<COMObject> pIAMVA,
    Pointer<AM_MEDIA_TYPE> pMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIAMVA,
            Pointer<AM_MEDIA_TYPE> pMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIAMVA,
            Pointer<AM_MEDIA_TYPE> pMediaType,
          )>()(
        ptr.ref.lpVtbl,
        pIAMVA,
        pMediaType,
      );

  int SetPlayerNotify(
    Pointer<COMObject> pHook,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
