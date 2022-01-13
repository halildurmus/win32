// IWMReaderCallback.dart

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
const IID_IWMReaderCallback = '{96406BD8-2B2B-11D3-B36B-00C04F6108FF}';

/// {@category Interface}
/// {@category com}
class IWMReaderCallback extends IWMStatusCallback {
  // vtable begins at 4, is 1 entries long.
  IWMReaderCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnSample(
    int dwOutputNum,
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
            Uint32 dwOutputNum,
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
            int dwOutputNum,
            int cnsSampleTime,
            int cnsSampleDuration,
            int dwFlags,
            Pointer<COMObject> pSample,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        cnsSampleTime,
        cnsSampleDuration,
        dwFlags,
        pSample,
        pvContext,
      );
}
