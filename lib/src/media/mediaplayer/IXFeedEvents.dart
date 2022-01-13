// IXFeedEvents.dart

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
import '../../media/mediaplayer/structs.g.dart';

/// @nodoc
const IID_IXFeedEvents = '{1630852E-1263-465B-98E5-FE60FFEC4AC2}';

/// {@category Interface}
/// {@category com}
class IXFeedEvents extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IXFeedEvents(Pointer<COMObject> ptr) : super(ptr);

  int Error() => ptr.ref.lpVtbl.value
          .elementAt(3)
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
    Pointer<Utf16> pszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
      );

  int FeedRenamed(
    Pointer<Utf16> pszPath,
    Pointer<Utf16> pszOldPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Pointer<Utf16> pszOldPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Pointer<Utf16> pszOldPath,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        pszOldPath,
      );

  int FeedUrlChanged(
    Pointer<Utf16> pszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
      );

  int FeedMoved(
    Pointer<Utf16> pszPath,
    Pointer<Utf16> pszOldPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Pointer<Utf16> pszOldPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Pointer<Utf16> pszOldPath,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        pszOldPath,
      );

  int FeedDownloading(
    Pointer<Utf16> pszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
      );

  int FeedDownloadCompleted(
    Pointer<Utf16> pszPath,
    int fde,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Int32 fde,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int fde,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        fde,
      );

  int FeedItemCountChanged(
    Pointer<Utf16> pszPath,
    int feicfFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Int32 feicfFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            int feicfFlags,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        feicfFlags,
      );
}
