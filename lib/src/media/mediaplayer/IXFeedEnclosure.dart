// IXFeedEnclosure.dart

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
const IID_IXFeedEnclosure = '{BFBFB953-644F-4792-B69C-DFACA4CBF89A}';

/// {@category Interface}
/// {@category com}
class IXFeedEnclosure extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IXFeedEnclosure(Pointer<COMObject> ptr) : super(ptr);

  int Url(
    Pointer<Pointer<Utf16>> ppszUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int Type(
    Pointer<Pointer<Utf16>> ppszMimeType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszMimeType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszMimeType,
          )>()(
        ptr.ref.lpVtbl,
        ppszMimeType,
      );

  int Length(
    Pointer<Uint32> puiLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiLength,
          )>()(
        ptr.ref.lpVtbl,
        puiLength,
      );

  int AsyncDownload() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int DownloadStatus(
    Pointer<Int32> pfds,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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
          .elementAt(9)
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

  int LocalPath(
    Pointer<Pointer<Utf16>> ppszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int DownloadUrl(
    Pointer<Pointer<Utf16>> ppszUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int DownloadMimeType(
    Pointer<Pointer<Utf16>> ppszMimeType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszMimeType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszMimeType,
          )>()(
        ptr.ref.lpVtbl,
        ppszMimeType,
      );

  int RemoveFile() => ptr.ref.lpVtbl.value
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

  int SetFile(
    Pointer<Utf16> pszDownloadUrl,
    Pointer<Utf16> pszDownloadFilePath,
    Pointer<Utf16> pszDownloadMimeType,
    Pointer<Utf16> pszEnclosureFilename,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszDownloadUrl,
            Pointer<Utf16> pszDownloadFilePath,
            Pointer<Utf16> pszDownloadMimeType,
            Pointer<Utf16> pszEnclosureFilename,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszDownloadUrl,
            Pointer<Utf16> pszDownloadFilePath,
            Pointer<Utf16> pszDownloadMimeType,
            Pointer<Utf16> pszEnclosureFilename,
          )>()(
        ptr.ref.lpVtbl,
        pszDownloadUrl,
        pszDownloadFilePath,
        pszDownloadMimeType,
        pszEnclosureFilename,
      );
}
