// IMFByteStreamBuffering.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFByteStreamBuffering = '{6D66D782-1D4F-4DB7-8C63-CB8C77F1EF5E}';

/// {@category Interface}
/// {@category com}
class IMFByteStreamBuffering extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFByteStreamBuffering(Pointer<COMObject> ptr) : super(ptr);

  int SetBufferingParams(
    Pointer<MFBYTESTREAM_BUFFERING_PARAMS> pParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MFBYTESTREAM_BUFFERING_PARAMS> pParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MFBYTESTREAM_BUFFERING_PARAMS> pParams,
          )>()(
        ptr.ref.lpVtbl,
        pParams,
      );

  int EnableBuffering(
    int fEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnable,
          )>()(
        ptr.ref.lpVtbl,
        fEnable,
      );

  int StopBuffering() => ptr.ref.lpVtbl.value
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
