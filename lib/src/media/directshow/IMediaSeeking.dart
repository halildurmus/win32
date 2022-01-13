// IMediaSeeking.dart

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

/// @nodoc
const IID_IMediaSeeking = '{36B73880-C2C8-11CF-8B46-00805F6CEF60}';

/// {@category Interface}
/// {@category com}
class IMediaSeeking extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  IMediaSeeking(Pointer<COMObject> ptr) : super(ptr);

  int GetCapabilities(
    Pointer<Uint32> pCapabilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCapabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCapabilities,
          )>()(
        ptr.ref.lpVtbl,
        pCapabilities,
      );

  int CheckCapabilities(
    Pointer<Uint32> pCapabilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCapabilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCapabilities,
          )>()(
        ptr.ref.lpVtbl,
        pCapabilities,
      );

  int IsFormatSupported(
    Pointer<GUID> pFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pFormat,
          )>()(
        ptr.ref.lpVtbl,
        pFormat,
      );

  int QueryPreferredFormat(
    Pointer<GUID> pFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pFormat,
          )>()(
        ptr.ref.lpVtbl,
        pFormat,
      );

  int GetTimeFormat(
    Pointer<GUID> pFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pFormat,
          )>()(
        ptr.ref.lpVtbl,
        pFormat,
      );

  int IsUsingTimeFormat(
    Pointer<GUID> pFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pFormat,
          )>()(
        ptr.ref.lpVtbl,
        pFormat,
      );

  int SetTimeFormat(
    Pointer<GUID> pFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pFormat,
          )>()(
        ptr.ref.lpVtbl,
        pFormat,
      );

  int GetDuration(
    Pointer<Int64> pDuration,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pDuration,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pDuration,
          )>()(
        ptr.ref.lpVtbl,
        pDuration,
      );

  int GetStopPosition(
    Pointer<Int64> pStop,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pStop,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pStop,
          )>()(
        ptr.ref.lpVtbl,
        pStop,
      );

  int GetCurrentPosition(
    Pointer<Int64> pCurrent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pCurrent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pCurrent,
          )>()(
        ptr.ref.lpVtbl,
        pCurrent,
      );

  int ConvertTimeFormat(
    Pointer<Int64> pTarget,
    Pointer<GUID> pTargetFormat,
    int Source,
    Pointer<GUID> pSourceFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pTarget,
            Pointer<GUID> pTargetFormat,
            Int64 Source,
            Pointer<GUID> pSourceFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pTarget,
            Pointer<GUID> pTargetFormat,
            int Source,
            Pointer<GUID> pSourceFormat,
          )>()(
        ptr.ref.lpVtbl,
        pTarget,
        pTargetFormat,
        Source,
        pSourceFormat,
      );

  int SetPositions(
    Pointer<Int64> pCurrent,
    int dwCurrentFlags,
    Pointer<Int64> pStop,
    int dwStopFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pCurrent,
            Uint32 dwCurrentFlags,
            Pointer<Int64> pStop,
            Uint32 dwStopFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pCurrent,
            int dwCurrentFlags,
            Pointer<Int64> pStop,
            int dwStopFlags,
          )>()(
        ptr.ref.lpVtbl,
        pCurrent,
        dwCurrentFlags,
        pStop,
        dwStopFlags,
      );

  int GetPositions(
    Pointer<Int64> pCurrent,
    Pointer<Int64> pStop,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pCurrent,
            Pointer<Int64> pStop,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pCurrent,
            Pointer<Int64> pStop,
          )>()(
        ptr.ref.lpVtbl,
        pCurrent,
        pStop,
      );

  int GetAvailable(
    Pointer<Int64> pEarliest,
    Pointer<Int64> pLatest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pEarliest,
            Pointer<Int64> pLatest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pEarliest,
            Pointer<Int64> pLatest,
          )>()(
        ptr.ref.lpVtbl,
        pEarliest,
        pLatest,
      );

  int SetRate(
    double dRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double dRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double dRate,
          )>()(
        ptr.ref.lpVtbl,
        dRate,
      );

  int GetRate(
    Pointer<Double> pdRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pdRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pdRate,
          )>()(
        ptr.ref.lpVtbl,
        pdRate,
      );

  int GetPreroll(
    Pointer<Int64> pllPreroll,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pllPreroll,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pllPreroll,
          )>()(
        ptr.ref.lpVtbl,
        pllPreroll,
      );
}
