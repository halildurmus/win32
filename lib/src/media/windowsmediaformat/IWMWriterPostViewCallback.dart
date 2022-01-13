// IWMWriterPostViewCallback.dart

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

import '../../media/windowsmediaformat/IWMStatusCallback.dart';
import '../../media/windowsmediaformat/INSSBuffer.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMWriterPostViewCallback = '{D9D6549D-A193-4F24-B308-03123D9B7F8D}';

/// {@category Interface}
/// {@category com}
class IWMWriterPostViewCallback extends IWMStatusCallback {
  // vtable begins at 4, is 2 entries long.
  IWMWriterPostViewCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnPostViewSample(
    int wStreamNumber,
    int cnsSampleTime,
    int cnsSampleDuration,
    int dwFlags,
    Pointer<COMObject> pSample,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNumber,
            Uint64 cnsSampleTime,
            Uint64 cnsSampleDuration,
            Uint32 dwFlags,
            Pointer<COMObject> pSample,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNumber,
            int cnsSampleTime,
            int cnsSampleDuration,
            int dwFlags,
            Pointer<COMObject> pSample,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNumber,
        cnsSampleTime,
        cnsSampleDuration,
        dwFlags,
        pSample,
        pvContext,
      );

  int AllocateForPostView(
    int wStreamNum,
    int cbBuffer,
    Pointer<Pointer<COMObject>> ppBuffer,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Uint32 cbBuffer,
            Pointer<Pointer<COMObject>> ppBuffer,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            int cbBuffer,
            Pointer<Pointer<COMObject>> ppBuffer,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        cbBuffer,
        ppBuffer,
        pvContext,
      );
}
