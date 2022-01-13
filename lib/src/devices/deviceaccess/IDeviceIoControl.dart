// IDeviceIoControl.dart

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
import '../../devices/deviceaccess/IDeviceRequestCompletionCallback.dart';

/// @nodoc
const IID_IDeviceIoControl = '{9EEFE161-23AB-4F18-9B49-991B586AE970}';

/// {@category Interface}
/// {@category com}
class IDeviceIoControl extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDeviceIoControl(Pointer<COMObject> ptr) : super(ptr);

  int DeviceIoControlSync(
    int ioControlCode,
    Pointer<Uint8> inputBuffer,
    int inputBufferSize,
    Pointer<Uint8> outputBuffer,
    int outputBufferSize,
    Pointer<Uint32> bytesReturned,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ioControlCode,
            Pointer<Uint8> inputBuffer,
            Uint32 inputBufferSize,
            Pointer<Uint8> outputBuffer,
            Uint32 outputBufferSize,
            Pointer<Uint32> bytesReturned,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ioControlCode,
            Pointer<Uint8> inputBuffer,
            int inputBufferSize,
            Pointer<Uint8> outputBuffer,
            int outputBufferSize,
            Pointer<Uint32> bytesReturned,
          )>()(
        ptr.ref.lpVtbl,
        ioControlCode,
        inputBuffer,
        inputBufferSize,
        outputBuffer,
        outputBufferSize,
        bytesReturned,
      );

  int DeviceIoControlAsync(
    int ioControlCode,
    Pointer<Uint8> inputBuffer,
    int inputBufferSize,
    Pointer<Uint8> outputBuffer,
    int outputBufferSize,
    Pointer<COMObject> requestCompletionCallback,
    Pointer<IntPtr> cancelContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ioControlCode,
            Pointer<Uint8> inputBuffer,
            Uint32 inputBufferSize,
            Pointer<Uint8> outputBuffer,
            Uint32 outputBufferSize,
            Pointer<COMObject> requestCompletionCallback,
            Pointer<IntPtr> cancelContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ioControlCode,
            Pointer<Uint8> inputBuffer,
            int inputBufferSize,
            Pointer<Uint8> outputBuffer,
            int outputBufferSize,
            Pointer<COMObject> requestCompletionCallback,
            Pointer<IntPtr> cancelContext,
          )>()(
        ptr.ref.lpVtbl,
        ioControlCode,
        inputBuffer,
        inputBufferSize,
        outputBuffer,
        outputBufferSize,
        requestCompletionCallback,
        cancelContext,
      );

  int CancelOperation(
    int cancelContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr cancelContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cancelContext,
          )>()(
        ptr.ref.lpVtbl,
        cancelContext,
      );
}
