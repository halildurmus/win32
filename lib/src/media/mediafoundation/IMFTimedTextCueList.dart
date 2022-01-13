// IMFTimedTextCueList.dart

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
import '../../media/mediafoundation/IMFTimedTextCue.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFTimedTextCueList = '{AD128745-211B-40A0-9981-FE65F166D0FD}';

/// {@category Interface}
/// {@category com}
class IMFTimedTextCueList extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IMFTimedTextCueList(Pointer<COMObject> ptr) : super(ptr);

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

  int GetCueByIndex(
    int index,
    Pointer<Pointer<COMObject>> cue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<COMObject>> cue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> cue,
          )>()(
        ptr.ref.lpVtbl,
        index,
        cue,
      );

  int GetCueById(
    int id,
    Pointer<Pointer<COMObject>> cue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 id,
            Pointer<Pointer<COMObject>> cue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int id,
            Pointer<Pointer<COMObject>> cue,
          )>()(
        ptr.ref.lpVtbl,
        id,
        cue,
      );

  int GetCueByOriginalId(
    Pointer<Utf16> originalId,
    Pointer<Pointer<COMObject>> cue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> originalId,
            Pointer<Pointer<COMObject>> cue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> originalId,
            Pointer<Pointer<COMObject>> cue,
          )>()(
        ptr.ref.lpVtbl,
        originalId,
        cue,
      );

  int AddTextCue(
    double start,
    double duration,
    Pointer<Utf16> text,
    Pointer<Pointer<COMObject>> cue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double start,
            Double duration,
            Pointer<Utf16> text,
            Pointer<Pointer<COMObject>> cue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double start,
            double duration,
            Pointer<Utf16> text,
            Pointer<Pointer<COMObject>> cue,
          )>()(
        ptr.ref.lpVtbl,
        start,
        duration,
        text,
        cue,
      );

  int AddDataCue(
    double start,
    double duration,
    Pointer<Uint8> data,
    int dataSize,
    Pointer<Pointer<COMObject>> cue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Double start,
            Double duration,
            Pointer<Uint8> data,
            Uint32 dataSize,
            Pointer<Pointer<COMObject>> cue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double start,
            double duration,
            Pointer<Uint8> data,
            int dataSize,
            Pointer<Pointer<COMObject>> cue,
          )>()(
        ptr.ref.lpVtbl,
        start,
        duration,
        data,
        dataSize,
        cue,
      );

  int RemoveCue(
    Pointer<COMObject> cue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> cue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> cue,
          )>()(
        ptr.ref.lpVtbl,
        cue,
      );
}
