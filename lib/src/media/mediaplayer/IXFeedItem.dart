// IXFeedItem.dart

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

/// @nodoc
const IID_IXFeedItem = '{E757B2F5-E73E-434E-A1BF-2BD7C3E60FCB}';

/// {@category Interface}
/// {@category com}
class IXFeedItem extends IUnknown {
  // vtable begins at 3, is 17 entries long.
  IXFeedItem(Pointer<COMObject> ptr) : super(ptr);

  int Xml(
    int fxif,
    Pointer<Pointer<COMObject>> pps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fxif,
            Pointer<Pointer<COMObject>> pps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fxif,
            Pointer<Pointer<COMObject>> pps,
          )>()(
        ptr.ref.lpVtbl,
        fxif,
        pps,
      );

  int Title(
    Pointer<Pointer<Utf16>> ppszTitle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int Link(
    Pointer<Pointer<Utf16>> ppszUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int Guid(
    Pointer<Pointer<Utf16>> ppszGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszGuid,
          )>()(
        ptr.ref.lpVtbl,
        ppszGuid,
      );

  int Description(
    Pointer<Pointer<Utf16>> ppszDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int PubDate(
    Pointer<SYSTEMTIME> pstPubDate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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

  int Comments(
    Pointer<Pointer<Utf16>> ppszUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int Author(
    Pointer<Pointer<Utf16>> ppszAuthor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszAuthor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszAuthor,
          )>()(
        ptr.ref.lpVtbl,
        ppszAuthor,
      );

  int Enclosure(
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

  int IsRead(
    Pointer<Int32> pbIsRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbIsRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbIsRead,
          )>()(
        ptr.ref.lpVtbl,
        pbIsRead,
      );

  int SetIsRead(
    int bIsRead,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bIsRead,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bIsRead,
          )>()(
        ptr.ref.lpVtbl,
        bIsRead,
      );

  int LocalId(
    Pointer<Uint32> puiId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> puiId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> puiId,
          )>()(
        ptr.ref.lpVtbl,
        puiId,
      );

  int Parent(
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int Delete() => ptr.ref.lpVtbl.value
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

  int DownloadUrl(
    Pointer<Pointer<Utf16>> ppszUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
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

  int LastDownloadTime(
    Pointer<SYSTEMTIME> pstLastDownloadTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
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

  int Modified(
    Pointer<SYSTEMTIME> pstModifiedTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SYSTEMTIME> pstModifiedTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SYSTEMTIME> pstModifiedTime,
          )>()(
        ptr.ref.lpVtbl,
        pstModifiedTime,
      );
}
