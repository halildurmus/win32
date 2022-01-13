// IMFMediaEngineSupportsSourceTransfer.dart

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
import '../../media/mediafoundation/IMFByteStream.dart';
import '../../media/mediafoundation/IMFMediaSource.dart';
import '../../media/mediafoundation/IMFMediaSourceExtension.dart';

/// @nodoc
const IID_IMFMediaEngineSupportsSourceTransfer =
    '{A724B056-1B2E-4642-A6F3-DB9420C52908}';

/// {@category Interface}
/// {@category com}
class IMFMediaEngineSupportsSourceTransfer extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFMediaEngineSupportsSourceTransfer(Pointer<COMObject> ptr) : super(ptr);

  int ShouldTransferSource(
    Pointer<Int32> pfShouldTransfer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfShouldTransfer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfShouldTransfer,
          )>()(
        ptr.ref.lpVtbl,
        pfShouldTransfer,
      );

  int DetachMediaSource(
    Pointer<Pointer<COMObject>> ppByteStream,
    Pointer<Pointer<COMObject>> ppMediaSource,
    Pointer<Pointer<COMObject>> ppMSE,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppByteStream,
            Pointer<Pointer<COMObject>> ppMediaSource,
            Pointer<Pointer<COMObject>> ppMSE,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppByteStream,
            Pointer<Pointer<COMObject>> ppMediaSource,
            Pointer<Pointer<COMObject>> ppMSE,
          )>()(
        ptr.ref.lpVtbl,
        ppByteStream,
        ppMediaSource,
        ppMSE,
      );

  int AttachMediaSource(
    Pointer<COMObject> pByteStream,
    Pointer<COMObject> pMediaSource,
    Pointer<COMObject> pMSE,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pByteStream,
            Pointer<COMObject> pMediaSource,
            Pointer<COMObject> pMSE,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pByteStream,
            Pointer<COMObject> pMediaSource,
            Pointer<COMObject> pMSE,
          )>()(
        ptr.ref.lpVtbl,
        pByteStream,
        pMediaSource,
        pMSE,
      );
}
