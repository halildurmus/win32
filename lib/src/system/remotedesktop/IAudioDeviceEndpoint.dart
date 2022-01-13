// IAudioDeviceEndpoint.dart

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
const IID_IAudioDeviceEndpoint = '{D4952F5A-A0B2-4CC4-8B82-9358488DD8AC}';

/// {@category Interface}
/// {@category com}
class IAudioDeviceEndpoint extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IAudioDeviceEndpoint(Pointer<COMObject> ptr) : super(ptr);

  int SetBuffer(
    int MaxPeriod,
    int u32LatencyCoefficient,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 MaxPeriod,
            Uint32 u32LatencyCoefficient,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int MaxPeriod,
            int u32LatencyCoefficient,
          )>()(
        ptr.ref.lpVtbl,
        MaxPeriod,
        u32LatencyCoefficient,
      );

  int GetRTCaps(
    Pointer<Int32> pbIsRTCapable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbIsRTCapable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbIsRTCapable,
          )>()(
        ptr.ref.lpVtbl,
        pbIsRTCapable,
      );

  int GetEventDrivenCapable(
    Pointer<Int32> pbisEventCapable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbisEventCapable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbisEventCapable,
          )>()(
        ptr.ref.lpVtbl,
        pbisEventCapable,
      );

  int WriteExclusiveModeParametersToSharedMemory(
    int hTargetProcess,
    int hnsPeriod,
    int hnsBufferDuration,
    int u32LatencyCoefficient,
    Pointer<Uint32> pu32SharedMemorySize,
    Pointer<IntPtr> phSharedMemory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hTargetProcess,
            Int64 hnsPeriod,
            Int64 hnsBufferDuration,
            Uint32 u32LatencyCoefficient,
            Pointer<Uint32> pu32SharedMemorySize,
            Pointer<IntPtr> phSharedMemory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hTargetProcess,
            int hnsPeriod,
            int hnsBufferDuration,
            int u32LatencyCoefficient,
            Pointer<Uint32> pu32SharedMemorySize,
            Pointer<IntPtr> phSharedMemory,
          )>()(
        ptr.ref.lpVtbl,
        hTargetProcess,
        hnsPeriod,
        hnsBufferDuration,
        u32LatencyCoefficient,
        pu32SharedMemorySize,
        phSharedMemory,
      );
}
