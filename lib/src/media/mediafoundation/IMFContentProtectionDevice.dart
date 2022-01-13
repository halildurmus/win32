// IMFContentProtectionDevice.dart

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
const IID_IMFContentProtectionDevice = '{E6257174-A060-4C9A-A088-3B1B471CAD28}';

/// {@category Interface}
/// {@category com}
class IMFContentProtectionDevice extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFContentProtectionDevice(Pointer<COMObject> ptr) : super(ptr);

  int InvokeFunction(
    int FunctionId,
    int InputBufferByteCount,
    Pointer<Uint8> InputBuffer,
    Pointer<Uint32> OutputBufferByteCount,
    Pointer<Uint8> OutputBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 FunctionId,
            Uint32 InputBufferByteCount,
            Pointer<Uint8> InputBuffer,
            Pointer<Uint32> OutputBufferByteCount,
            Pointer<Uint8> OutputBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int FunctionId,
            int InputBufferByteCount,
            Pointer<Uint8> InputBuffer,
            Pointer<Uint32> OutputBufferByteCount,
            Pointer<Uint8> OutputBuffer,
          )>()(
        ptr.ref.lpVtbl,
        FunctionId,
        InputBufferByteCount,
        InputBuffer,
        OutputBufferByteCount,
        OutputBuffer,
      );

  int GetPrivateDataByteCount(
    Pointer<Uint32> PrivateInputByteCount,
    Pointer<Uint32> PrivateOutputByteCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> PrivateInputByteCount,
            Pointer<Uint32> PrivateOutputByteCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> PrivateInputByteCount,
            Pointer<Uint32> PrivateOutputByteCount,
          )>()(
        ptr.ref.lpVtbl,
        PrivateInputByteCount,
        PrivateOutputByteCount,
      );
}
