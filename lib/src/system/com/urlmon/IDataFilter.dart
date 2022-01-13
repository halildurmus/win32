// IDataFilter.dart

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
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDataFilter = '{69D14C80-C18E-11D0-A9CE-006097942311}';

/// {@category Interface}
/// {@category com}
class IDataFilter extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDataFilter(Pointer<COMObject> ptr) : super(ptr);

  int DoEncode(
    int dwFlags,
    int lInBufferSize,
    Pointer<Uint8> pbInBuffer,
    int lOutBufferSize,
    Pointer<Uint8> pbOutBuffer,
    int lInBytesAvailable,
    Pointer<Int32> plInBytesRead,
    Pointer<Int32> plOutBytesWritten,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Int32 lInBufferSize,
            Pointer<Uint8> pbInBuffer,
            Int32 lOutBufferSize,
            Pointer<Uint8> pbOutBuffer,
            Int32 lInBytesAvailable,
            Pointer<Int32> plInBytesRead,
            Pointer<Int32> plOutBytesWritten,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            int lInBufferSize,
            Pointer<Uint8> pbInBuffer,
            int lOutBufferSize,
            Pointer<Uint8> pbOutBuffer,
            int lInBytesAvailable,
            Pointer<Int32> plInBytesRead,
            Pointer<Int32> plOutBytesWritten,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        lInBufferSize,
        pbInBuffer,
        lOutBufferSize,
        pbOutBuffer,
        lInBytesAvailable,
        plInBytesRead,
        plOutBytesWritten,
        dwReserved,
      );

  int DoDecode(
    int dwFlags,
    int lInBufferSize,
    Pointer<Uint8> pbInBuffer,
    int lOutBufferSize,
    Pointer<Uint8> pbOutBuffer,
    int lInBytesAvailable,
    Pointer<Int32> plInBytesRead,
    Pointer<Int32> plOutBytesWritten,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Int32 lInBufferSize,
            Pointer<Uint8> pbInBuffer,
            Int32 lOutBufferSize,
            Pointer<Uint8> pbOutBuffer,
            Int32 lInBytesAvailable,
            Pointer<Int32> plInBytesRead,
            Pointer<Int32> plOutBytesWritten,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            int lInBufferSize,
            Pointer<Uint8> pbInBuffer,
            int lOutBufferSize,
            Pointer<Uint8> pbOutBuffer,
            int lInBytesAvailable,
            Pointer<Int32> plInBytesRead,
            Pointer<Int32> plOutBytesWritten,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        lInBufferSize,
        pbInBuffer,
        lOutBufferSize,
        pbOutBuffer,
        lInBytesAvailable,
        plInBytesRead,
        plOutBytesWritten,
        dwReserved,
      );

  int SetEncodingLevel(
    int dwEncLevel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwEncLevel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwEncLevel,
          )>()(
        ptr.ref.lpVtbl,
        dwEncLevel,
      );
}
