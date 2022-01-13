// IWICStream.dart

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

import '../../system/com/IStream.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWICStream = '{135FF860-22B7-4DDF-B0F6-218F4F299A43}';

/// {@category Interface}
/// {@category com}
class IWICStream extends IStream {
  // vtable begins at 14, is 4 entries long.
  IWICStream(Pointer<COMObject> ptr) : super(ptr);

  int InitializeFromIStream(
    Pointer<COMObject> pIStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIStream,
          )>()(
        ptr.ref.lpVtbl,
        pIStream,
      );

  int InitializeFromFilename(
    Pointer<Utf16> wzFileName,
    int dwDesiredAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wzFileName,
            Uint32 dwDesiredAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wzFileName,
            int dwDesiredAccess,
          )>()(
        ptr.ref.lpVtbl,
        wzFileName,
        dwDesiredAccess,
      );

  int InitializeFromMemory(
    Pointer<Uint8> pbBuffer,
    int cbBufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbBuffer,
            Uint32 cbBufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbBuffer,
            int cbBufferSize,
          )>()(
        ptr.ref.lpVtbl,
        pbBuffer,
        cbBufferSize,
      );

  int InitializeFromIStreamRegion(
    Pointer<COMObject> pIStream,
    int ulOffset,
    int ulMaxSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIStream,
            Uint64 ulOffset,
            Uint64 ulMaxSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIStream,
            int ulOffset,
            int ulMaxSize,
          )>()(
        ptr.ref.lpVtbl,
        pIStream,
        ulOffset,
        ulMaxSize,
      );
}
