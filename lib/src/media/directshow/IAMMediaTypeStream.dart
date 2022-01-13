// IAMMediaTypeStream.dart

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

import '../../media/directshow/IMediaStream.dart';
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../media/directshow/IAMMediaTypeSample.dart';

/// @nodoc
const IID_IAMMediaTypeStream = '{AB6B4AFA-F6E4-11D0-900D-00C04FD9189D}';

/// {@category Interface}
/// {@category com}
class IAMMediaTypeStream extends IMediaStream {
  // vtable begins at 9, is 5 entries long.
  IAMMediaTypeStream(Pointer<COMObject> ptr) : super(ptr);

  int GetFormat(
    Pointer<AM_MEDIA_TYPE> pMediaType,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AM_MEDIA_TYPE> pMediaType,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AM_MEDIA_TYPE> pMediaType,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pMediaType,
        dwFlags,
      );

  int SetFormat(
    Pointer<AM_MEDIA_TYPE> pMediaType,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AM_MEDIA_TYPE> pMediaType,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AM_MEDIA_TYPE> pMediaType,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pMediaType,
        dwFlags,
      );

  int CreateSample(
    int lSampleSize,
    Pointer<Uint8> pbBuffer,
    int dwFlags,
    Pointer<COMObject> pUnkOuter,
    Pointer<Pointer<COMObject>> ppAMMediaTypeSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lSampleSize,
            Pointer<Uint8> pbBuffer,
            Uint32 dwFlags,
            Pointer<COMObject> pUnkOuter,
            Pointer<Pointer<COMObject>> ppAMMediaTypeSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lSampleSize,
            Pointer<Uint8> pbBuffer,
            int dwFlags,
            Pointer<COMObject> pUnkOuter,
            Pointer<Pointer<COMObject>> ppAMMediaTypeSample,
          )>()(
        ptr.ref.lpVtbl,
        lSampleSize,
        pbBuffer,
        dwFlags,
        pUnkOuter,
        ppAMMediaTypeSample,
      );

  int GetStreamAllocatorRequirements(
    Pointer<ALLOCATOR_PROPERTIES> pProps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ALLOCATOR_PROPERTIES> pProps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ALLOCATOR_PROPERTIES> pProps,
          )>()(
        ptr.ref.lpVtbl,
        pProps,
      );

  int SetStreamAllocatorRequirements(
    Pointer<ALLOCATOR_PROPERTIES> pProps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<ALLOCATOR_PROPERTIES> pProps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<ALLOCATOR_PROPERTIES> pProps,
          )>()(
        ptr.ref.lpVtbl,
        pProps,
      );
}
