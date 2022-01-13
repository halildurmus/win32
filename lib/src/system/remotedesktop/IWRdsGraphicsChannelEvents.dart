// IWRdsGraphicsChannelEvents.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IWRdsGraphicsChannelEvents = '{67F2368C-D674-4FAE-66A5-D20628A640D2}';

/// {@category Interface}
/// {@category com}
class IWRdsGraphicsChannelEvents extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IWRdsGraphicsChannelEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnDataReceived(
    int cbSize,
    Pointer<Uint8> pBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbSize,
            Pointer<Uint8> pBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbSize,
            Pointer<Uint8> pBuffer,
          )>()(
        ptr.ref.lpVtbl,
        cbSize,
        pBuffer,
      );

  int OnClose() => ptr.ref.lpVtbl.value
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

  int OnChannelOpened(
    int OpenResult,
    Pointer<COMObject> pOpenContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 OpenResult,
            Pointer<COMObject> pOpenContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OpenResult,
            Pointer<COMObject> pOpenContext,
          )>()(
        ptr.ref.lpVtbl,
        OpenResult,
        pOpenContext,
      );

  int OnDataSent(
    Pointer<COMObject> pWriteContext,
    int bCancelled,
    Pointer<Uint8> pBuffer,
    int cbBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pWriteContext,
            Int32 bCancelled,
            Pointer<Uint8> pBuffer,
            Uint32 cbBuffer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pWriteContext,
            int bCancelled,
            Pointer<Uint8> pBuffer,
            int cbBuffer,
          )>()(
        ptr.ref.lpVtbl,
        pWriteContext,
        bCancelled,
        pBuffer,
        cbBuffer,
      );

  int OnMetricsUpdate(
    int bandwidth,
    int RTT,
    int lastSentByteIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 bandwidth,
            Uint32 RTT,
            Uint64 lastSentByteIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bandwidth,
            int RTT,
            int lastSentByteIndex,
          )>()(
        ptr.ref.lpVtbl,
        bandwidth,
        RTT,
        lastSentByteIndex,
      );
}
