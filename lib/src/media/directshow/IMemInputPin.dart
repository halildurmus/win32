// IMemInputPin.dart

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
import '../../media/directshow/IMemAllocator.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/structs.g.dart';
import '../../media/directshow/IMediaSample.dart';

/// @nodoc
const IID_IMemInputPin = '{56A8689D-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IMemInputPin extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IMemInputPin(Pointer<COMObject> ptr) : super(ptr);

  int GetAllocator(
    Pointer<Pointer<COMObject>> ppAllocator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAllocator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppAllocator,
          )>()(
        ptr.ref.lpVtbl,
        ppAllocator,
      );

  int NotifyAllocator(
    Pointer<COMObject> pAllocator,
    int bReadOnly,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAllocator,
            Int32 bReadOnly,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAllocator,
            int bReadOnly,
          )>()(
        ptr.ref.lpVtbl,
        pAllocator,
        bReadOnly,
      );

  int GetAllocatorRequirements(
    Pointer<ALLOCATOR_PROPERTIES> pProps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Receive(
    Pointer<COMObject> pSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSample,
          )>()(
        ptr.ref.lpVtbl,
        pSample,
      );

  int ReceiveMultiple(
    Pointer<Pointer<COMObject>> pSamples,
    int nSamples,
    Pointer<Int32> nSamplesProcessed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pSamples,
            Int32 nSamples,
            Pointer<Int32> nSamplesProcessed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pSamples,
            int nSamples,
            Pointer<Int32> nSamplesProcessed,
          )>()(
        ptr.ref.lpVtbl,
        pSamples,
        nSamples,
        nSamplesProcessed,
      );

  int ReceiveCanBlock() => ptr.ref.lpVtbl.value
          .elementAt(8)
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
