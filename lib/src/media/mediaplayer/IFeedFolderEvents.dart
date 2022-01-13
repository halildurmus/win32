// IFeedFolderEvents.dart

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
const IID_IFeedFolderEvents = '{20A59FA6-A844-4630-9E98-175F70B4D55B}';

/// {@category Interface}
/// {@category com}
class IFeedFolderEvents extends IDispatch {
  // vtable begins at 7, is 16 entries long.
  IFeedFolderEvents(Pointer<COMObject> ptr) : super(ptr);

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

  int FolderAdded(
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

  int FolderDeleted(
    Pointer<Utf16> path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int FolderRenamed(
    Pointer<Utf16> path,
    Pointer<Utf16> oldPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int FolderMovedFrom(
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

  int FolderMovedTo(
    Pointer<Utf16> path,
    Pointer<Utf16> oldPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int FolderItemCountChanged(
    Pointer<Utf16> path,
    int itemCountType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int FeedAdded(
    Pointer<Utf16> path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int FeedDeleted(
    Pointer<Utf16> path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
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
          .elementAt(16)
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
          .elementAt(17)
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

  int FeedMovedFrom(
    Pointer<Utf16> path,
    Pointer<Utf16> oldPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int FeedMovedTo(
    Pointer<Utf16> path,
    Pointer<Utf16> oldPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
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
          .elementAt(20)
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
          .elementAt(21)
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
          .elementAt(22)
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
