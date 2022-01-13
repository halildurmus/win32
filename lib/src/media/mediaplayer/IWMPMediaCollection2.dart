// IWMPMediaCollection2.dart

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

import '../../media/mediaplayer/IWMPMediaCollection.dart';
import '../../media/mediaplayer/IWMPQuery.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediaplayer/IWMPPlaylist.dart';
import '../../media/mediaplayer/IWMPStringCollection.dart';

/// @nodoc
const IID_IWMPMediaCollection2 = '{8BA957F5-FD8C-4791-B82D-F840401EE474}';

/// {@category Interface}
/// {@category com}
class IWMPMediaCollection2 extends IWMPMediaCollection {
  // vtable begins at 19, is 4 entries long.
  IWMPMediaCollection2(Pointer<COMObject> ptr) : super(ptr);

  int createQuery(
    Pointer<Pointer<COMObject>> ppQuery,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppQuery,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppQuery,
          )>()(
        ptr.ref.lpVtbl,
        ppQuery,
      );

  int getPlaylistByQuery(
    Pointer<COMObject> pQuery,
    Pointer<Utf16> bstrMediaType,
    Pointer<Utf16> bstrSortAttribute,
    int fSortAscending,
    Pointer<Pointer<COMObject>> ppPlaylist,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pQuery,
            Pointer<Utf16> bstrMediaType,
            Pointer<Utf16> bstrSortAttribute,
            Int16 fSortAscending,
            Pointer<Pointer<COMObject>> ppPlaylist,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pQuery,
            Pointer<Utf16> bstrMediaType,
            Pointer<Utf16> bstrSortAttribute,
            int fSortAscending,
            Pointer<Pointer<COMObject>> ppPlaylist,
          )>()(
        ptr.ref.lpVtbl,
        pQuery,
        bstrMediaType,
        bstrSortAttribute,
        fSortAscending,
        ppPlaylist,
      );

  int getStringCollectionByQuery(
    Pointer<Utf16> bstrAttribute,
    Pointer<COMObject> pQuery,
    Pointer<Utf16> bstrMediaType,
    Pointer<Utf16> bstrSortAttribute,
    int fSortAscending,
    Pointer<Pointer<COMObject>> ppStringCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrAttribute,
            Pointer<COMObject> pQuery,
            Pointer<Utf16> bstrMediaType,
            Pointer<Utf16> bstrSortAttribute,
            Int16 fSortAscending,
            Pointer<Pointer<COMObject>> ppStringCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrAttribute,
            Pointer<COMObject> pQuery,
            Pointer<Utf16> bstrMediaType,
            Pointer<Utf16> bstrSortAttribute,
            int fSortAscending,
            Pointer<Pointer<COMObject>> ppStringCollection,
          )>()(
        ptr.ref.lpVtbl,
        bstrAttribute,
        pQuery,
        bstrMediaType,
        bstrSortAttribute,
        fSortAscending,
        ppStringCollection,
      );

  int getByAttributeAndMediaType(
    Pointer<Utf16> bstrAttribute,
    Pointer<Utf16> bstrValue,
    Pointer<Utf16> bstrMediaType,
    Pointer<Pointer<COMObject>> ppMediaItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrAttribute,
            Pointer<Utf16> bstrValue,
            Pointer<Utf16> bstrMediaType,
            Pointer<Pointer<COMObject>> ppMediaItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrAttribute,
            Pointer<Utf16> bstrValue,
            Pointer<Utf16> bstrMediaType,
            Pointer<Pointer<COMObject>> ppMediaItems,
          )>()(
        ptr.ref.lpVtbl,
        bstrAttribute,
        bstrValue,
        bstrMediaType,
        ppMediaItems,
      );
}
