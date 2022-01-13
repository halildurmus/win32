// IXFeedsManager.dart

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
import '../../system/com/IStream.dart';

/// @nodoc
const IID_IXFeedsManager = '{5357E238-FB12-4ACA-A930-CAB7832B84BF}';

/// {@category Interface}
/// {@category com}
class IXFeedsManager extends IUnknown {
  // vtable begins at 3, is 16 entries long.
  IXFeedsManager(Pointer<COMObject> ptr) : super(ptr);

  int RootFolder(
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int IsSubscribed(
    Pointer<Utf16> pszUrl,
    Pointer<Int32> pbSubscribed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszUrl,
            Pointer<Int32> pbSubscribed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszUrl,
            Pointer<Int32> pbSubscribed,
          )>()(
        ptr.ref.lpVtbl,
        pszUrl,
        pbSubscribed,
      );

  int ExistsFeed(
    Pointer<Utf16> pszPath,
    Pointer<Int32> pbFeedExists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Pointer<Int32> pbFeedExists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Pointer<Int32> pbFeedExists,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        pbFeedExists,
      );

  int GetFeed(
    Pointer<Utf16> pszPath,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        riid,
        ppv,
      );

  int GetFeedByUrl(
    Pointer<Utf16> pszUrl,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszUrl,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszUrl,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        pszUrl,
        riid,
        ppv,
      );

  int ExistsFolder(
    Pointer<Utf16> pszPath,
    Pointer<Int32> pbFolderExists,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Pointer<Int32> pbFolderExists,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Pointer<Int32> pbFolderExists,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        pbFolderExists,
      );

  int GetFolder(
    Pointer<Utf16> pszPath,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPath,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        pszPath,
        riid,
        ppv,
      );

  int DeleteFeed(
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

  int DeleteFolder(
    Pointer<Utf16> pszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int BackgroundSync(
    int fbsa,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fbsa,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fbsa,
          )>()(
        ptr.ref.lpVtbl,
        fbsa,
      );

  int BackgroundSyncStatus(
    Pointer<Int32> pfbss,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfbss,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfbss,
          )>()(
        ptr.ref.lpVtbl,
        pfbss,
      );

  int DefaultInterval(
    Pointer<Uint32> puiInterval,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int SetDefaultInterval(
    int uiInterval,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int AsyncSyncAll() => ptr.ref.lpVtbl.value
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

  int Normalize(
    Pointer<COMObject> pStreamIn,
    Pointer<Pointer<COMObject>> ppStreamOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStreamIn,
            Pointer<Pointer<COMObject>> ppStreamOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStreamIn,
            Pointer<Pointer<COMObject>> ppStreamOut,
          )>()(
        ptr.ref.lpVtbl,
        pStreamIn,
        ppStreamOut,
      );

  int ItemCountLimit(
    Pointer<Uint32> puiItemCountLimit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiItemCountLimit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiItemCountLimit,
          )>()(
        ptr.ref.lpVtbl,
        puiItemCountLimit,
      );
}
