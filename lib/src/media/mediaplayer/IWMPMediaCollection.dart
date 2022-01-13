// IWMPMediaCollection.dart

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
import '../../media/mediaplayer/IWMPMedia.dart';
import '../../media/mediaplayer/IWMPPlaylist.dart';
import '../../media/mediaplayer/IWMPStringCollection.dart';

/// @nodoc
const IID_IWMPMediaCollection = '{8363BC22-B4B4-4B19-989D-1CD765749DD1}';

/// {@category Interface}
/// {@category com}
class IWMPMediaCollection extends IDispatch {
  // vtable begins at 7, is 12 entries long.
  IWMPMediaCollection(Pointer<COMObject> ptr) : super(ptr);

  int add(
    Pointer<Utf16> bstrURL,
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrURL,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrURL,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        bstrURL,
        ppItem,
      );

  int getAll(
    Pointer<Pointer<COMObject>> ppMediaItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMediaItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMediaItems,
          )>()(
        ptr.ref.lpVtbl,
        ppMediaItems,
      );

  int getByName(
    Pointer<Utf16> bstrName,
    Pointer<Pointer<COMObject>> ppMediaItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<COMObject>> ppMediaItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<COMObject>> ppMediaItems,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        ppMediaItems,
      );

  int getByGenre(
    Pointer<Utf16> bstrGenre,
    Pointer<Pointer<COMObject>> ppMediaItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrGenre,
            Pointer<Pointer<COMObject>> ppMediaItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrGenre,
            Pointer<Pointer<COMObject>> ppMediaItems,
          )>()(
        ptr.ref.lpVtbl,
        bstrGenre,
        ppMediaItems,
      );

  int getByAuthor(
    Pointer<Utf16> bstrAuthor,
    Pointer<Pointer<COMObject>> ppMediaItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrAuthor,
            Pointer<Pointer<COMObject>> ppMediaItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrAuthor,
            Pointer<Pointer<COMObject>> ppMediaItems,
          )>()(
        ptr.ref.lpVtbl,
        bstrAuthor,
        ppMediaItems,
      );

  int getByAlbum(
    Pointer<Utf16> bstrAlbum,
    Pointer<Pointer<COMObject>> ppMediaItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrAlbum,
            Pointer<Pointer<COMObject>> ppMediaItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrAlbum,
            Pointer<Pointer<COMObject>> ppMediaItems,
          )>()(
        ptr.ref.lpVtbl,
        bstrAlbum,
        ppMediaItems,
      );

  int getByAttribute(
    Pointer<Utf16> bstrAttribute,
    Pointer<Utf16> bstrValue,
    Pointer<Pointer<COMObject>> ppMediaItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrAttribute,
            Pointer<Utf16> bstrValue,
            Pointer<Pointer<COMObject>> ppMediaItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrAttribute,
            Pointer<Utf16> bstrValue,
            Pointer<Pointer<COMObject>> ppMediaItems,
          )>()(
        ptr.ref.lpVtbl,
        bstrAttribute,
        bstrValue,
        ppMediaItems,
      );

  int remove(
    Pointer<COMObject> pItem,
    int varfDeleteFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pItem,
            Int16 varfDeleteFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pItem,
            int varfDeleteFile,
          )>()(
        ptr.ref.lpVtbl,
        pItem,
        varfDeleteFile,
      );

  int getAttributeStringCollection(
    Pointer<Utf16> bstrAttribute,
    Pointer<Utf16> bstrMediaType,
    Pointer<Pointer<COMObject>> ppStringCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrAttribute,
            Pointer<Utf16> bstrMediaType,
            Pointer<Pointer<COMObject>> ppStringCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrAttribute,
            Pointer<Utf16> bstrMediaType,
            Pointer<Pointer<COMObject>> ppStringCollection,
          )>()(
        ptr.ref.lpVtbl,
        bstrAttribute,
        bstrMediaType,
        ppStringCollection,
      );

  int getMediaAtom(
    Pointer<Utf16> bstrItemName,
    Pointer<Int32> plAtom,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrItemName,
            Pointer<Int32> plAtom,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrItemName,
            Pointer<Int32> plAtom,
          )>()(
        ptr.ref.lpVtbl,
        bstrItemName,
        plAtom,
      );

  int setDeleted(
    Pointer<COMObject> pItem,
    int varfIsDeleted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pItem,
            Int16 varfIsDeleted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pItem,
            int varfIsDeleted,
          )>()(
        ptr.ref.lpVtbl,
        pItem,
        varfIsDeleted,
      );

  int isDeleted(
    Pointer<COMObject> pItem,
    Pointer<Int16> pvarfIsDeleted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pItem,
            Pointer<Int16> pvarfIsDeleted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pItem,
            Pointer<Int16> pvarfIsDeleted,
          )>()(
        ptr.ref.lpVtbl,
        pItem,
        pvarfIsDeleted,
      );
}
