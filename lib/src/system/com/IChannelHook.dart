// IChannelHook.dart

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
const IID_IChannelHook = '{1008C4A0-7613-11CF-9AF1-0020AF6E72F4}';

/// {@category Interface}
/// {@category com}
class IChannelHook extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IChannelHook(Pointer<COMObject> ptr) : super(ptr);

  void ClientGetSize(
    Pointer<GUID> uExtent,
    Pointer<GUID> riid,
    Pointer<Uint32> pDataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<GUID> uExtent,
            Pointer<GUID> riid,
            Pointer<Uint32> pDataSize,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<GUID> uExtent,
            Pointer<GUID> riid,
            Pointer<Uint32> pDataSize,
          )>()(
        ptr.ref.lpVtbl,
        uExtent,
        riid,
        pDataSize,
      );

  void ClientFillBuffer(
    Pointer<GUID> uExtent,
    Pointer<GUID> riid,
    Pointer<Uint32> pDataSize,
    Pointer pDataBuffer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<GUID> uExtent,
            Pointer<GUID> riid,
            Pointer<Uint32> pDataSize,
            Pointer pDataBuffer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<GUID> uExtent,
            Pointer<GUID> riid,
            Pointer<Uint32> pDataSize,
            Pointer pDataBuffer,
          )>()(
        ptr.ref.lpVtbl,
        uExtent,
        riid,
        pDataSize,
        pDataBuffer,
      );

  void ClientNotify(
    Pointer<GUID> uExtent,
    Pointer<GUID> riid,
    int cbDataSize,
    Pointer pDataBuffer,
    int lDataRep,
    int hrFault,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<GUID> uExtent,
            Pointer<GUID> riid,
            Uint32 cbDataSize,
            Pointer pDataBuffer,
            Uint32 lDataRep,
            Int32 hrFault,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<GUID> uExtent,
            Pointer<GUID> riid,
            int cbDataSize,
            Pointer pDataBuffer,
            int lDataRep,
            int hrFault,
          )>()(
        ptr.ref.lpVtbl,
        uExtent,
        riid,
        cbDataSize,
        pDataBuffer,
        lDataRep,
        hrFault,
      );

  void ServerNotify(
    Pointer<GUID> uExtent,
    Pointer<GUID> riid,
    int cbDataSize,
    Pointer pDataBuffer,
    int lDataRep,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<GUID> uExtent,
            Pointer<GUID> riid,
            Uint32 cbDataSize,
            Pointer pDataBuffer,
            Uint32 lDataRep,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<GUID> uExtent,
            Pointer<GUID> riid,
            int cbDataSize,
            Pointer pDataBuffer,
            int lDataRep,
          )>()(
        ptr.ref.lpVtbl,
        uExtent,
        riid,
        cbDataSize,
        pDataBuffer,
        lDataRep,
      );

  void ServerGetSize(
    Pointer<GUID> uExtent,
    Pointer<GUID> riid,
    int hrFault,
    Pointer<Uint32> pDataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<GUID> uExtent,
            Pointer<GUID> riid,
            Int32 hrFault,
            Pointer<Uint32> pDataSize,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<GUID> uExtent,
            Pointer<GUID> riid,
            int hrFault,
            Pointer<Uint32> pDataSize,
          )>()(
        ptr.ref.lpVtbl,
        uExtent,
        riid,
        hrFault,
        pDataSize,
      );

  void ServerFillBuffer(
    Pointer<GUID> uExtent,
    Pointer<GUID> riid,
    Pointer<Uint32> pDataSize,
    Pointer pDataBuffer,
    int hrFault,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<GUID> uExtent,
            Pointer<GUID> riid,
            Pointer<Uint32> pDataSize,
            Pointer pDataBuffer,
            Int32 hrFault,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<GUID> uExtent,
            Pointer<GUID> riid,
            Pointer<Uint32> pDataSize,
            Pointer pDataBuffer,
            int hrFault,
          )>()(
        ptr.ref.lpVtbl,
        uExtent,
        riid,
        pDataSize,
        pDataBuffer,
        hrFault,
      );
}
