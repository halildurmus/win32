// IWMPPlaylistCollection.dart

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
import '../../media/mediaplayer/IWMPPlaylist.dart';
import '../../media/mediaplayer/IWMPPlaylistArray.dart';

/// @nodoc
const IID_IWMPPlaylistCollection = '{10A13217-23A7-439B-B1C0-D847C79B7774}';

/// {@category Interface}
/// {@category com}
class IWMPPlaylistCollection extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  IWMPPlaylistCollection(Pointer<COMObject> ptr) : super(ptr);

  int newPlaylist(
    Pointer<Utf16> bstrName,
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        ppItem,
      );

  int getAll(
    Pointer<Pointer<COMObject>> ppPlaylistArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPlaylistArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPlaylistArray,
          )>()(
        ptr.ref.lpVtbl,
        ppPlaylistArray,
      );

  int getByName(
    Pointer<Utf16> bstrName,
    Pointer<Pointer<COMObject>> ppPlaylistArray,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<COMObject>> ppPlaylistArray,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Pointer<COMObject>> ppPlaylistArray,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        ppPlaylistArray,
      );

  int remove(
    Pointer<COMObject> pItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pItem,
          )>()(
        ptr.ref.lpVtbl,
        pItem,
      );

  int setDeleted(
    Pointer<COMObject> pItem,
    int varfIsDeleted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
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
          .elementAt(12)
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

  int importPlaylist(
    Pointer<COMObject> pItem,
    Pointer<Pointer<COMObject>> ppImportedItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pItem,
            Pointer<Pointer<COMObject>> ppImportedItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pItem,
            Pointer<Pointer<COMObject>> ppImportedItem,
          )>()(
        ptr.ref.lpVtbl,
        pItem,
        ppImportedItem,
      );
}
