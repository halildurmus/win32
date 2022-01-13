// IRpcChannelBuffer.dart

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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRpcChannelBuffer = '{D5F56B60-593B-101A-B569-08002B2DBF7A}';

/// {@category Interface}
/// {@category com}
class IRpcChannelBuffer extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IRpcChannelBuffer(Pointer<COMObject> ptr) : super(ptr);

  int GetBuffer(
    Pointer<RPCOLEMESSAGE> pMessage,
    Pointer<GUID> riid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMessage,
            Pointer<GUID> riid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMessage,
            Pointer<GUID> riid,
          )>()(
        ptr.ref.lpVtbl,
        pMessage,
        riid,
      );

  int SendReceive(
    Pointer<RPCOLEMESSAGE> pMessage,
    Pointer<Uint32> pStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMessage,
            Pointer<Uint32> pStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMessage,
            Pointer<Uint32> pStatus,
          )>()(
        ptr.ref.lpVtbl,
        pMessage,
        pStatus,
      );

  int FreeBuffer(
    Pointer<RPCOLEMESSAGE> pMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMessage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMessage,
          )>()(
        ptr.ref.lpVtbl,
        pMessage,
      );

  int GetDestCtx(
    Pointer<Uint32> pdwDestContext,
    Pointer<Pointer> ppvDestContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwDestContext,
            Pointer<Pointer> ppvDestContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwDestContext,
            Pointer<Pointer> ppvDestContext,
          )>()(
        ptr.ref.lpVtbl,
        pdwDestContext,
        ppvDestContext,
      );

  int IsConnected() => ptr.ref.lpVtbl.value
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
}
