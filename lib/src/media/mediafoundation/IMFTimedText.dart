// IMFTimedText.dart

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
import '../../media/mediafoundation/IMFTimedTextNotify.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFByteStream.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/IMFTimedTextTrack.dart';
import '../../media/mediafoundation/IMFTimedTextTrackList.dart';

/// @nodoc
const IID_IMFTimedText = '{1F2A94C9-A3DF-430D-9D0F-ACD85DDC29AF}';

/// {@category Interface}
/// {@category com}
class IMFTimedText extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  IMFTimedText(Pointer<COMObject> ptr) : super(ptr);

  int RegisterNotifications(
    Pointer<COMObject> notify,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> notify,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> notify,
          )>()(
        ptr.ref.lpVtbl,
        notify,
      );

  int SelectTrack(
    int trackId,
    int selected,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 trackId,
            Int32 selected,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int trackId,
            int selected,
          )>()(
        ptr.ref.lpVtbl,
        trackId,
        selected,
      );

  int AddDataSource(
    Pointer<COMObject> byteStream,
    Pointer<Utf16> label,
    Pointer<Utf16> language,
    int kind,
    int isDefault,
    Pointer<Uint32> trackId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> byteStream,
            Pointer<Utf16> label,
            Pointer<Utf16> language,
            Int32 kind,
            Int32 isDefault,
            Pointer<Uint32> trackId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> byteStream,
            Pointer<Utf16> label,
            Pointer<Utf16> language,
            int kind,
            int isDefault,
            Pointer<Uint32> trackId,
          )>()(
        ptr.ref.lpVtbl,
        byteStream,
        label,
        language,
        kind,
        isDefault,
        trackId,
      );

  int AddDataSourceFromUrl(
    Pointer<Utf16> url,
    Pointer<Utf16> label,
    Pointer<Utf16> language,
    int kind,
    int isDefault,
    Pointer<Uint32> trackId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> url,
            Pointer<Utf16> label,
            Pointer<Utf16> language,
            Int32 kind,
            Int32 isDefault,
            Pointer<Uint32> trackId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> url,
            Pointer<Utf16> label,
            Pointer<Utf16> language,
            int kind,
            int isDefault,
            Pointer<Uint32> trackId,
          )>()(
        ptr.ref.lpVtbl,
        url,
        label,
        language,
        kind,
        isDefault,
        trackId,
      );

  int AddTrack(
    Pointer<Utf16> label,
    Pointer<Utf16> language,
    int kind,
    Pointer<Pointer<COMObject>> track,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> label,
            Pointer<Utf16> language,
            Int32 kind,
            Pointer<Pointer<COMObject>> track,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> label,
            Pointer<Utf16> language,
            int kind,
            Pointer<Pointer<COMObject>> track,
          )>()(
        ptr.ref.lpVtbl,
        label,
        language,
        kind,
        track,
      );

  int RemoveTrack(
    Pointer<COMObject> track,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> track,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> track,
          )>()(
        ptr.ref.lpVtbl,
        track,
      );

  int GetCueTimeOffset(
    Pointer<Double> offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> offset,
          )>()(
        ptr.ref.lpVtbl,
        offset,
      );

  int SetCueTimeOffset(
    double offset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double offset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double offset,
          )>()(
        ptr.ref.lpVtbl,
        offset,
      );

  int GetTracks(
    Pointer<Pointer<COMObject>> tracks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> tracks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> tracks,
          )>()(
        ptr.ref.lpVtbl,
        tracks,
      );

  int GetActiveTracks(
    Pointer<Pointer<COMObject>> activeTracks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> activeTracks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> activeTracks,
          )>()(
        ptr.ref.lpVtbl,
        activeTracks,
      );

  int GetTextTracks(
    Pointer<Pointer<COMObject>> textTracks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> textTracks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> textTracks,
          )>()(
        ptr.ref.lpVtbl,
        textTracks,
      );

  int GetMetadataTracks(
    Pointer<Pointer<COMObject>> metadataTracks,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> metadataTracks,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> metadataTracks,
          )>()(
        ptr.ref.lpVtbl,
        metadataTracks,
      );

  int SetInBandEnabled(
    int enabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enabled,
          )>()(
        ptr.ref.lpVtbl,
        enabled,
      );

  int IsInBandEnabled() => ptr.ref.lpVtbl.value
          .elementAt(16)
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
