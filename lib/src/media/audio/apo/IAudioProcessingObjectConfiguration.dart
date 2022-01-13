// IAudioProcessingObjectConfiguration.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../media/audio/apo/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioProcessingObjectConfiguration =
    '{0E5ED805-ABA6-49C3-8F9A-2B8C889C4FA8}';

/// {@category Interface}
/// {@category com}
class IAudioProcessingObjectConfiguration extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAudioProcessingObjectConfiguration(Pointer<COMObject> ptr) : super(ptr);

  int LockForProcess(
    int u32NumInputConnections,
    Pointer<Pointer<APO_CONNECTION_DESCRIPTOR>> ppInputConnections,
    int u32NumOutputConnections,
    Pointer<Pointer<APO_CONNECTION_DESCRIPTOR>> ppOutputConnections,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 u32NumInputConnections,
            Pointer<Pointer<APO_CONNECTION_DESCRIPTOR>> ppInputConnections,
            Uint32 u32NumOutputConnections,
            Pointer<Pointer<APO_CONNECTION_DESCRIPTOR>> ppOutputConnections,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int u32NumInputConnections,
            Pointer<Pointer<APO_CONNECTION_DESCRIPTOR>> ppInputConnections,
            int u32NumOutputConnections,
            Pointer<Pointer<APO_CONNECTION_DESCRIPTOR>> ppOutputConnections,
          )>()(
        ptr.ref.lpVtbl,
        u32NumInputConnections,
        ppInputConnections,
        u32NumOutputConnections,
        ppOutputConnections,
      );

  int UnlockForProcess() => ptr.ref.lpVtbl.value
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
}
