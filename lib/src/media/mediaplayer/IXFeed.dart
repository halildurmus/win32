// IXFeed.dart

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
import '../../media/mediaplayer/structs.g.dart';
import '../../system/com/IStream.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediaplayer/IXFeedsEnum.dart';

/// @nodoc
const IID_IXFeed = '{A44179A4-E0F6-403B-AF8D-D080F425A451}';

/// {@category Interface}
/// {@category com}
class IXFeed extends IUnknown {
  // vtable begins at 3, is 44 entries long.
  IXFeed(Pointer<COMObject> ptr) : super(ptr);

  int Xml(
    int uiItemCount,
    int sortProperty,
    int sortOrder,
    int filterFlags,
    int includeFlags,
    Pointer<Pointer<COMObject>> pps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiItemCount,
            Int32 sortProperty,
            Int32 sortOrder,
            Int32 filterFlags,
            Int32 includeFlags,
            Pointer<Pointer<COMObject>> pps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiItemCount,
            int sortProperty,
            int sortOrder,
            int filterFlags,
            int includeFlags,
            Pointer<Pointer<COMObject>> pps,
          )>()(
        ptr.ref.lpVtbl,
        uiItemCount,
        sortProperty,
        sortOrder,
        filterFlags,
        includeFlags,
        pps,
      );

  int Name(
    Pointer<Pointer<Utf16>> ppszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszName,
          )>()(
        ptr.ref.lpVtbl,
        ppszName,
      );

  int Rename(
    Pointer<Utf16> pszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszName,
          )>()(
        ptr.ref.lpVtbl,
        pszName,
      );

  int Url(
    Pointer<Pointer<Utf16>> ppszUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszUrl,
          )>()(
        ptr.ref.lpVtbl,
        ppszUrl,
      );

  int SetUrl(
    Pointer<Utf16> pszUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszUrl,
          )>()(
        ptr.ref.lpVtbl,
        pszUrl,
      );

  int LocalId(
    Pointer<GUID> pguid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguid,
          )>()(
        ptr.ref.lpVtbl,
        pguid,
      );

  int Path(
    Pointer<Pointer<Utf16>> ppszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszPath,
          )>()(
        ptr.ref.lpVtbl,
        ppszPath,
      );

  int Move(
    Pointer<Utf16> pszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int Parent(
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppv,
      );

  int LastWriteTime(
    Pointer<SYSTEMTIME> pstLastWriteTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYSTEMTIME> pstLastWriteTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYSTEMTIME> pstLastWriteTime,
          )>()(
        ptr.ref.lpVtbl,
        pstLastWriteTime,
      );

  int Delete() => ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int Download() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int AsyncDownload() => ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int CancelAsyncDownload() => ptr.ref.lpVtbl.value
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

  int SyncSetting(
    Pointer<Int32> pfss,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfss,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfss,
          )>()(
        ptr.ref.lpVtbl,
        pfss,
      );

  int SetSyncSetting(
    int fss,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fss,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fss,
          )>()(
        ptr.ref.lpVtbl,
        fss,
      );

  int Interval(
    Pointer<Uint32> puiInterval,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiInterval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiInterval,
          )>()(
        ptr.ref.lpVtbl,
        puiInterval,
      );

  int SetInterval(
    int uiInterval,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiInterval,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiInterval,
          )>()(
        ptr.ref.lpVtbl,
        uiInterval,
      );

  int LastDownloadTime(
    Pointer<SYSTEMTIME> pstLastDownloadTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYSTEMTIME> pstLastDownloadTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYSTEMTIME> pstLastDownloadTime,
          )>()(
        ptr.ref.lpVtbl,
        pstLastDownloadTime,
      );

  int LocalEnclosurePath(
    Pointer<Pointer<Utf16>> ppszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszPath,
          )>()(
        ptr.ref.lpVtbl,
        ppszPath,
      );

  int Items(
    Pointer<Pointer<COMObject>> ppfe,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppfe,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppfe,
          )>()(
        ptr.ref.lpVtbl,
        ppfe,
      );

  int GetItem(
    int uiId,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiId,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiId,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        uiId,
        riid,
        ppv,
      );

  int MarkAllItemsRead() => ptr.ref.lpVtbl.value
          .elementAt(25)
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

  int MaxItemCount(
    Pointer<Uint32> puiMaxItemCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiMaxItemCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiMaxItemCount,
          )>()(
        ptr.ref.lpVtbl,
        puiMaxItemCount,
      );

  int SetMaxItemCount(
    int uiMaxItemCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uiMaxItemCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uiMaxItemCount,
          )>()(
        ptr.ref.lpVtbl,
        uiMaxItemCount,
      );

  int DownloadEnclosuresAutomatically(
    Pointer<Int32> pbDownloadEnclosuresAutomatically,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbDownloadEnclosuresAutomatically,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbDownloadEnclosuresAutomatically,
          )>()(
        ptr.ref.lpVtbl,
        pbDownloadEnclosuresAutomatically,
      );

  int SetDownloadEnclosuresAutomatically(
    int bDownloadEnclosuresAutomatically,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bDownloadEnclosuresAutomatically,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bDownloadEnclosuresAutomatically,
          )>()(
        ptr.ref.lpVtbl,
        bDownloadEnclosuresAutomatically,
      );

  int DownloadStatus(
    Pointer<Int32> pfds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfds,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfds,
          )>()(
        ptr.ref.lpVtbl,
        pfds,
      );

  int LastDownloadError(
    Pointer<Int32> pfde,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfde,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfde,
          )>()(
        ptr.ref.lpVtbl,
        pfde,
      );

  int Merge(
    Pointer<COMObject> pStream,
    Pointer<Utf16> pszUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<Utf16> pszUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<Utf16> pszUrl,
          )>()(
        ptr.ref.lpVtbl,
        pStream,
        pszUrl,
      );

  int DownloadUrl(
    Pointer<Pointer<Utf16>> ppszUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszUrl,
          )>()(
        ptr.ref.lpVtbl,
        ppszUrl,
      );

  int Title(
    Pointer<Pointer<Utf16>> ppszTitle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszTitle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszTitle,
          )>()(
        ptr.ref.lpVtbl,
        ppszTitle,
      );

  int Description(
    Pointer<Pointer<Utf16>> ppszDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszDescription,
          )>()(
        ptr.ref.lpVtbl,
        ppszDescription,
      );

  int Link(
    Pointer<Pointer<Utf16>> ppszHomePage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszHomePage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszHomePage,
          )>()(
        ptr.ref.lpVtbl,
        ppszHomePage,
      );

  int Image(
    Pointer<Pointer<Utf16>> ppszImageUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszImageUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszImageUrl,
          )>()(
        ptr.ref.lpVtbl,
        ppszImageUrl,
      );

  int LastBuildDate(
    Pointer<SYSTEMTIME> pstLastBuildDate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYSTEMTIME> pstLastBuildDate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYSTEMTIME> pstLastBuildDate,
          )>()(
        ptr.ref.lpVtbl,
        pstLastBuildDate,
      );

  int PubDate(
    Pointer<SYSTEMTIME> pstPubDate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYSTEMTIME> pstPubDate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYSTEMTIME> pstPubDate,
          )>()(
        ptr.ref.lpVtbl,
        pstPubDate,
      );

  int Ttl(
    Pointer<Uint32> puiTtl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiTtl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiTtl,
          )>()(
        ptr.ref.lpVtbl,
        puiTtl,
      );

  int Language(
    Pointer<Pointer<Utf16>> ppszLanguage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszLanguage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszLanguage,
          )>()(
        ptr.ref.lpVtbl,
        ppszLanguage,
      );

  int Copyright(
    Pointer<Pointer<Utf16>> ppszCopyright,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszCopyright,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszCopyright,
          )>()(
        ptr.ref.lpVtbl,
        ppszCopyright,
      );

  int IsList(
    Pointer<Int32> pbIsList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbIsList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbIsList,
          )>()(
        ptr.ref.lpVtbl,
        pbIsList,
      );

  int GetWatcher(
    int scope,
    int mask,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 scope,
            Int32 mask,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int scope,
            int mask,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        scope,
        mask,
        riid,
        ppv,
      );

  int UnreadItemCount(
    Pointer<Uint32> puiUnreadItemCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiUnreadItemCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiUnreadItemCount,
          )>()(
        ptr.ref.lpVtbl,
        puiUnreadItemCount,
      );

  int ItemCount(
    Pointer<Uint32> puiItemCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiItemCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiItemCount,
          )>()(
        ptr.ref.lpVtbl,
        puiItemCount,
      );
}
