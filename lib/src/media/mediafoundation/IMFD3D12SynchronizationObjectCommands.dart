// IMFD3D12SynchronizationObjectCommands.dart

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
import '../../graphics/direct3d12/ID3D12CommandQueue.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFD3D12SynchronizationObjectCommands =
    '{09D0F835-92FF-4E53-8EFA-40FAA551F233}';

/// {@category Interface}
/// {@category com}
class IMFD3D12SynchronizationObjectCommands extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMFD3D12SynchronizationObjectCommands(Pointer<COMObject> ptr) : super(ptr);

  int EnqueueResourceReady(
    Pointer<COMObject> pProducerCommandQueue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProducerCommandQueue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProducerCommandQueue,
          )>()(
        ptr.ref.lpVtbl,
        pProducerCommandQueue,
      );

  int EnqueueResourceReadyWait(
    Pointer<COMObject> pConsumerCommandQueue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pConsumerCommandQueue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pConsumerCommandQueue,
          )>()(
        ptr.ref.lpVtbl,
        pConsumerCommandQueue,
      );

  int SignalEventOnResourceReady(
    int hEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hEvent,
          )>()(
        ptr.ref.lpVtbl,
        hEvent,
      );

  int EnqueueResourceRelease(
    Pointer<COMObject> pConsumerCommandQueue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pConsumerCommandQueue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pConsumerCommandQueue,
          )>()(
        ptr.ref.lpVtbl,
        pConsumerCommandQueue,
      );
}
