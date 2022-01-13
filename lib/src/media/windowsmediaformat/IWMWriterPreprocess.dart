// IWMWriterPreprocess.dart

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
import '../../media/windowsmediaformat/INSSBuffer.dart';

/// @nodoc
const IID_IWMWriterPreprocess = '{FC54A285-38C4-45B5-AA23-85B9F7CB424B}';

/// {@category Interface}
/// {@category com}
class IWMWriterPreprocess extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IWMWriterPreprocess(Pointer<COMObject> ptr) : super(ptr);

  int GetMaxPreprocessingPasses(
    int dwInputNum,
    int dwFlags,
    Pointer<Uint32> pdwMaxNumPasses,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputNum,
            Uint32 dwFlags,
            Pointer<Uint32> pdwMaxNumPasses,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputNum,
            int dwFlags,
            Pointer<Uint32> pdwMaxNumPasses,
          )>()(
        ptr.ref.lpVtbl,
        dwInputNum,
        dwFlags,
        pdwMaxNumPasses,
      );

  int SetNumPreprocessingPasses(
    int dwInputNum,
    int dwFlags,
    int dwNumPasses,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputNum,
            Uint32 dwFlags,
            Uint32 dwNumPasses,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputNum,
            int dwFlags,
            int dwNumPasses,
          )>()(
        ptr.ref.lpVtbl,
        dwInputNum,
        dwFlags,
        dwNumPasses,
      );

  int BeginPreprocessingPass(
    int dwInputNum,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputNum,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputNum,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwInputNum,
        dwFlags,
      );

  int PreprocessSample(
    int dwInputNum,
    int cnsSampleTime,
    int dwFlags,
    Pointer<COMObject> pSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputNum,
            Uint64 cnsSampleTime,
            Uint32 dwFlags,
            Pointer<COMObject> pSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputNum,
            int cnsSampleTime,
            int dwFlags,
            Pointer<COMObject> pSample,
          )>()(
        ptr.ref.lpVtbl,
        dwInputNum,
        cnsSampleTime,
        dwFlags,
        pSample,
      );

  int EndPreprocessingPass(
    int dwInputNum,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwInputNum,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwInputNum,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwInputNum,
        dwFlags,
      );
}
