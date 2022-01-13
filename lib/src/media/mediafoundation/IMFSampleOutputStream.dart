// IMFSampleOutputStream.dart

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
import '../../media/mediafoundation/IMFSample.dart';
import '../../media/mediafoundation/IMFAsyncCallback.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFAsyncResult.dart';

/// @nodoc
const IID_IMFSampleOutputStream = '{8FEED468-6F7E-440D-869A-49BDD283AD0D}';

/// {@category Interface}
/// {@category com}
class IMFSampleOutputStream extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFSampleOutputStream(Pointer<COMObject> ptr) : super(ptr);

  int BeginWriteSample(
    Pointer<COMObject> pSample,
    Pointer<COMObject> pCallback,
    Pointer<COMObject> punkState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSample,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSample,
            Pointer<COMObject> pCallback,
            Pointer<COMObject> punkState,
          )>()(
        ptr.ref.lpVtbl,
        pSample,
        pCallback,
        punkState,
      );

  int EndWriteSample(
    Pointer<COMObject> pResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pResult,
          )>()(
        ptr.ref.lpVtbl,
        pResult,
      );

  int Close() => ptr.ref.lpVtbl.value
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
