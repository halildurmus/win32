// IMFTimedTextTrackList.dart

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
import '../../media/mediafoundation/IMFTimedTextTrack.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFTimedTextTrackList = '{23FF334C-442C-445F-BCCC-EDC438AA11E2}';

/// {@category Interface}
/// {@category com}
class IMFTimedTextTrackList extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFTimedTextTrackList(Pointer<COMObject> ptr) : super(ptr);

  int GetLength() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetTrack(
    int index,
    Pointer<Pointer<COMObject>> track,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<COMObject>> track,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> track,
          )>()(
        ptr.ref.lpVtbl,
        index,
        track,
      );

  int GetTrackById(
    int trackId,
    Pointer<Pointer<COMObject>> track,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 trackId,
            Pointer<Pointer<COMObject>> track,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int trackId,
            Pointer<Pointer<COMObject>> track,
          )>()(
        ptr.ref.lpVtbl,
        trackId,
        track,
      );
}
