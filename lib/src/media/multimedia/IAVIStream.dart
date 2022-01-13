// IAVIStream.dart

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
import '../../media/multimedia/structs.g.dart';

/// @nodoc
const IID_IAVIStream = '{00020021-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IAVIStream extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IAVIStream(Pointer<COMObject> ptr) : super(ptr);

  int Create(
    int lParam1,
    int lParam2,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr lParam1,
            IntPtr lParam2,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lParam1,
            int lParam2,
          )>()(
        ptr.ref.lpVtbl,
        lParam1,
        lParam2,
      );

  int Info(
    Pointer<AVISTREAMINFO> psi,
    int lSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AVISTREAMINFO> psi,
            Int32 lSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AVISTREAMINFO> psi,
            int lSize,
          )>()(
        ptr.ref.lpVtbl,
        psi,
        lSize,
      );

  int FindSample(
    int lPos,
    int lFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lPos,
            Int32 lFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lPos,
            int lFlags,
          )>()(
        ptr.ref.lpVtbl,
        lPos,
        lFlags,
      );

  int ReadFormat(
    int lPos,
    Pointer lpFormat,
    Pointer<Int32> lpcbFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lPos,
            Pointer lpFormat,
            Pointer<Int32> lpcbFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lPos,
            Pointer lpFormat,
            Pointer<Int32> lpcbFormat,
          )>()(
        ptr.ref.lpVtbl,
        lPos,
        lpFormat,
        lpcbFormat,
      );

  int SetFormat(
    int lPos,
    Pointer lpFormat,
    int cbFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lPos,
            Pointer lpFormat,
            Int32 cbFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lPos,
            Pointer lpFormat,
            int cbFormat,
          )>()(
        ptr.ref.lpVtbl,
        lPos,
        lpFormat,
        cbFormat,
      );

  int Read(
    int lStart,
    int lSamples,
    Pointer lpBuffer,
    int cbBuffer,
    Pointer<Int32> plBytes,
    Pointer<Int32> plSamples,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lStart,
            Int32 lSamples,
            Pointer lpBuffer,
            Int32 cbBuffer,
            Pointer<Int32> plBytes,
            Pointer<Int32> plSamples,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lStart,
            int lSamples,
            Pointer lpBuffer,
            int cbBuffer,
            Pointer<Int32> plBytes,
            Pointer<Int32> plSamples,
          )>()(
        ptr.ref.lpVtbl,
        lStart,
        lSamples,
        lpBuffer,
        cbBuffer,
        plBytes,
        plSamples,
      );

  int Write(
    int lStart,
    int lSamples,
    Pointer lpBuffer,
    int cbBuffer,
    int dwFlags,
    Pointer<Int32> plSampWritten,
    Pointer<Int32> plBytesWritten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lStart,
            Int32 lSamples,
            Pointer lpBuffer,
            Int32 cbBuffer,
            Uint32 dwFlags,
            Pointer<Int32> plSampWritten,
            Pointer<Int32> plBytesWritten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lStart,
            int lSamples,
            Pointer lpBuffer,
            int cbBuffer,
            int dwFlags,
            Pointer<Int32> plSampWritten,
            Pointer<Int32> plBytesWritten,
          )>()(
        ptr.ref.lpVtbl,
        lStart,
        lSamples,
        lpBuffer,
        cbBuffer,
        dwFlags,
        plSampWritten,
        plBytesWritten,
      );

  int Delete(
    int lStart,
    int lSamples,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lStart,
            Int32 lSamples,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lStart,
            int lSamples,
          )>()(
        ptr.ref.lpVtbl,
        lStart,
        lSamples,
      );

  int ReadData(
    int fcc,
    Pointer lp,
    Pointer<Int32> lpcb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fcc,
            Pointer lp,
            Pointer<Int32> lpcb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fcc,
            Pointer lp,
            Pointer<Int32> lpcb,
          )>()(
        ptr.ref.lpVtbl,
        fcc,
        lp,
        lpcb,
      );

  int WriteData(
    int fcc,
    Pointer lp,
    int cb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 fcc,
            Pointer lp,
            Int32 cb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fcc,
            Pointer lp,
            int cb,
          )>()(
        ptr.ref.lpVtbl,
        fcc,
        lp,
        cb,
      );

  int SetInfo(
    Pointer<AVISTREAMINFO> lpInfo,
    int cbInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AVISTREAMINFO> lpInfo,
            Int32 cbInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AVISTREAMINFO> lpInfo,
            int cbInfo,
          )>()(
        ptr.ref.lpVtbl,
        lpInfo,
        cbInfo,
      );
}
