// IRedbookDiscMaster.dart

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
const IID_IRedbookDiscMaster = '{E3BC42CD-4E5C-11D3-9144-00104BA11C5E}';

/// {@category Interface}
/// {@category com}
class IRedbookDiscMaster extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IRedbookDiscMaster(Pointer<COMObject> ptr) : super(ptr);

  int GetTotalAudioTracks(
    Pointer<Int32> pnTracks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnTracks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnTracks,
          )>()(
        ptr.ref.lpVtbl,
        pnTracks,
      );

  int GetTotalAudioBlocks(
    Pointer<Int32> pnBlocks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnBlocks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnBlocks,
          )>()(
        ptr.ref.lpVtbl,
        pnBlocks,
      );

  int GetUsedAudioBlocks(
    Pointer<Int32> pnBlocks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnBlocks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnBlocks,
          )>()(
        ptr.ref.lpVtbl,
        pnBlocks,
      );

  int GetAvailableAudioTrackBlocks(
    Pointer<Int32> pnBlocks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnBlocks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnBlocks,
          )>()(
        ptr.ref.lpVtbl,
        pnBlocks,
      );

  int GetAudioBlockSize(
    Pointer<Int32> pnBlockBytes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnBlockBytes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnBlockBytes,
          )>()(
        ptr.ref.lpVtbl,
        pnBlockBytes,
      );

  int CreateAudioTrack(
    int nBlocks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 nBlocks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nBlocks,
          )>()(
        ptr.ref.lpVtbl,
        nBlocks,
      );

  int AddAudioTrackBlocks(
    Pointer<Uint8> pby,
    int cb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pby,
            Int32 cb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pby,
            int cb,
          )>()(
        ptr.ref.lpVtbl,
        pby,
        cb,
      );

  int CloseAudioTrack() => ptr.ref.lpVtbl.value
          .elementAt(10)
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
