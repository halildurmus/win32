// IRpcChannelBuffer3.dart

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
import '../../foundation/structs.g.dart';
import '../../system/com/IAsyncManager.dart';

/// @nodoc
const IID_IRpcChannelBuffer3 = '{25B15600-0115-11D0-BF0D-00AA00B8DFD2}';

/// {@category Interface}
/// {@category com}
class IRpcChannelBuffer3 extends IRpcChannelBuffer2 {
  // vtable begins at 9, is 7 entries long.
  IRpcChannelBuffer3(Pointer<COMObject> ptr) : super(ptr);

  int Send(
    Pointer<RPCOLEMESSAGE> pMsg,
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

  int Receive(
    Pointer<RPCOLEMESSAGE> pMsg,
    int ulSize,
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
            Uint32 ulSize,
            Pointer<Uint32> pulStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMsg,
            int ulSize,
            Pointer<Uint32> pulStatus,
          )>()(
        ptr.ref.lpVtbl,
        pMsg,
        ulSize,
        pulStatus,
      );

  int Cancel(
    Pointer<RPCOLEMESSAGE> pMsg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMsg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMsg,
          )>()(
        ptr.ref.lpVtbl,
        pMsg,
      );

  int GetCallContext(
    Pointer<RPCOLEMESSAGE> pMsg,
    Pointer<GUID> riid,
    Pointer<Pointer> pInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMsg,
            Pointer<GUID> riid,
            Pointer<Pointer> pInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMsg,
            Pointer<GUID> riid,
            Pointer<Pointer> pInterface,
          )>()(
        ptr.ref.lpVtbl,
        pMsg,
        riid,
        pInterface,
      );

  int GetDestCtxEx(
    Pointer<RPCOLEMESSAGE> pMsg,
    Pointer<Uint32> pdwDestContext,
    Pointer<Pointer> ppvDestContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int GetState(
    Pointer<RPCOLEMESSAGE> pMsg,
    Pointer<Uint32> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMsg,
            Pointer<Uint32> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMsg,
            Pointer<Uint32> pState,
          )>()(
        ptr.ref.lpVtbl,
        pMsg,
        pState,
      );

  int RegisterAsync(
    Pointer<RPCOLEMESSAGE> pMsg,
    Pointer<COMObject> pAsyncMgr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMsg,
            Pointer<COMObject> pAsyncMgr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMsg,
            Pointer<COMObject> pAsyncMgr,
          )>()(
        ptr.ref.lpVtbl,
        pMsg,
        pAsyncMgr,
      );
}
