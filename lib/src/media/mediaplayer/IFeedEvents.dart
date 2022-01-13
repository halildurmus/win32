// IFeedEvents.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediaplayer/structs.g.dart';

/// @nodoc
const IID_IFeedEvents = '{ABF35C99-0681-47EA-9A8C-1436A375A99E}';

/// {@category Interface}
/// {@category com}
class IFeedEvents extends IDispatch {
  // vtable begins at 7, is 8 entries long.
  IFeedEvents(Pointer<COMObject> ptr) : super(ptr);

  int Error() => ptr.ref.lpVtbl.value
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

  int FeedDeleted(
    Pointer<Utf16> path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
          )>()(
        ptr.ref.lpVtbl,
        path,
      );

  int FeedRenamed(
    Pointer<Utf16> path,
    Pointer<Utf16> oldPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Utf16> oldPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Utf16> oldPath,
          )>()(
        ptr.ref.lpVtbl,
        path,
        oldPath,
      );

  int FeedUrlChanged(
    Pointer<Utf16> path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
          )>()(
        ptr.ref.lpVtbl,
        path,
      );

  int FeedMoved(
    Pointer<Utf16> path,
    Pointer<Utf16> oldPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Utf16> oldPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            Pointer<Utf16> oldPath,
          )>()(
        ptr.ref.lpVtbl,
        path,
        oldPath,
      );

  int FeedDownloading(
    Pointer<Utf16> path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
          )>()(
        ptr.ref.lpVtbl,
        path,
      );

  int FeedDownloadCompleted(
    Pointer<Utf16> path,
    int error,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Int32 error,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            int error,
          )>()(
        ptr.ref.lpVtbl,
        path,
        error,
      );

  int FeedItemCountChanged(
    Pointer<Utf16> path,
    int itemCountType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> path,
            Int32 itemCountType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> path,
            int itemCountType,
          )>()(
        ptr.ref.lpVtbl,
        path,
        itemCountType,
      );
}
