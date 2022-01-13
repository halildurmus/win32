// IAsyncRpcChannelBuffer.dart

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

import '../../system/com/IRpcChannelBuffer2.dart';
import '../../system/com/structs.g.dart';
import '../../system/com/ISynchronize.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAsyncRpcChannelBuffer = '{A5029FB6-3C34-11D1-9C99-00C04FB998AA}';

/// {@category Interface}
/// {@category com}
class IAsyncRpcChannelBuffer extends IRpcChannelBuffer2 {
  // vtable begins at 9, is 3 entries long.
  IAsyncRpcChannelBuffer(Pointer<COMObject> ptr) : super(ptr);

  int Send(
    Pointer<RPCOLEMESSAGE> pMsg,
    Pointer<COMObject> pSync,
    Pointer<Uint32> pulStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMsg,
            Pointer<COMObject> pSync,
            Pointer<Uint32> pulStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMsg,
            Pointer<COMObject> pSync,
            Pointer<Uint32> pulStatus,
          )>()(
        ptr.ref.lpVtbl,
        pMsg,
        pSync,
        pulStatus,
      );

  int Receive(
    Pointer<RPCOLEMESSAGE> pMsg,
    Pointer<Uint32> pulStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMsg,
            Pointer<Uint32> pulStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMsg,
            Pointer<Uint32> pulStatus,
          )>()(
        ptr.ref.lpVtbl,
        pMsg,
        pulStatus,
      );

  int GetDestCtxEx(
    Pointer<RPCOLEMESSAGE> pMsg,
    Pointer<Uint32> pdwDestContext,
    Pointer<Pointer> ppvDestContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMsg,
            Pointer<Uint32> pdwDestContext,
            Pointer<Pointer> ppvDestContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMsg,
            Pointer<Uint32> pdwDestContext,
            Pointer<Pointer> ppvDestContext,
          )>()(
        ptr.ref.lpVtbl,
        pMsg,
        pdwDestContext,
        ppvDestContext,
      );
}
