// IMediaSample.dart

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
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMediaSample = '{56A8689A-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IMediaSample extends IUnknown {
  // vtable begins at 3, is 16 entries long.
  IMediaSample(Pointer<COMObject> ptr) : super(ptr);

  int GetPointer(
    Pointer<Pointer<Uint8>> ppBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppBuffer,
          )>()(
        ptr.ref.lpVtbl,
        ppBuffer,
      );

  int GetSize() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetTime(
    Pointer<Int64> pTimeStart,
    Pointer<Int64> pTimeEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pTimeStart,
            Pointer<Int64> pTimeEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pTimeStart,
            Pointer<Int64> pTimeEnd,
          )>()(
        ptr.ref.lpVtbl,
        pTimeStart,
        pTimeEnd,
      );

  int SetTime(
    Pointer<Int64> pTimeStart,
    Pointer<Int64> pTimeEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pTimeStart,
            Pointer<Int64> pTimeEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pTimeStart,
            Pointer<Int64> pTimeEnd,
          )>()(
        ptr.ref.lpVtbl,
        pTimeStart,
        pTimeEnd,
      );

  int IsSyncPoint() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int SetSyncPoint(
    int bIsSyncPoint,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bIsSyncPoint,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bIsSyncPoint,
          )>()(
        ptr.ref.lpVtbl,
        bIsSyncPoint,
      );

  int IsPreroll() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int SetPreroll(
    int bIsPreroll,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bIsPreroll,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bIsPreroll,
          )>()(
        ptr.ref.lpVtbl,
        bIsPreroll,
      );

  int GetActualDataLength() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int SetActualDataLength(
    int MIDL__IMediaSample0000,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 MIDL__IMediaSample0000,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MIDL__IMediaSample0000,
          )>()(
        ptr.ref.lpVtbl,
        MIDL__IMediaSample0000,
      );

  int GetMediaType(
    Pointer<Pointer<AM_MEDIA_TYPE>> ppMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<AM_MEDIA_TYPE>> ppMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<AM_MEDIA_TYPE>> ppMediaType,
          )>()(
        ptr.ref.lpVtbl,
        ppMediaType,
      );

  int SetMediaType(
    Pointer<AM_MEDIA_TYPE> pMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int IsDiscontinuity() => ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int SetDiscontinuity(
    int bDiscontinuity,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bDiscontinuity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bDiscontinuity,
          )>()(
        ptr.ref.lpVtbl,
        bDiscontinuity,
      );

  int GetMediaTime(
    Pointer<Int64> pTimeStart,
    Pointer<Int64> pTimeEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pTimeStart,
            Pointer<Int64> pTimeEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pTimeStart,
            Pointer<Int64> pTimeEnd,
          )>()(
        ptr.ref.lpVtbl,
        pTimeStart,
        pTimeEnd,
      );

  int SetMediaTime(
    Pointer<Int64> pTimeStart,
    Pointer<Int64> pTimeEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pTimeStart,
            Pointer<Int64> pTimeEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pTimeStart,
            Pointer<Int64> pTimeEnd,
          )>()(
        ptr.ref.lpVtbl,
        pTimeStart,
        pTimeEnd,
      );
}
