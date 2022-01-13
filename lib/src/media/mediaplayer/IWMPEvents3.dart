// IWMPEvents3.dart

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

import '../../media/mediaplayer/IWMPEvents2.dart';
import '../../media/mediaplayer/IWMPCdromRip.dart';
import '../../media/mediaplayer/structs.g.dart';
import '../../system/com/IDispatch.dart';
import '../../media/mediaplayer/IWMPCdromBurn.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediaplayer/IWMPLibrary.dart';

/// @nodoc
const IID_IWMPEvents3 = '{1F504270-A66B-4223-8E96-26A06C63D69F}';

/// {@category Interface}
/// {@category com}
class IWMPEvents3 extends IWMPEvents2 {
  // vtable begins at 54, is 11 entries long.
  IWMPEvents3(Pointer<COMObject> ptr) : super(ptr);

  void CdromRipStateChange(
    Pointer<COMObject> pCdromRip,
    int wmprs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pCdromRip,
            Int32 wmprs,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pCdromRip,
            int wmprs,
          )>()(
        ptr.ref.lpVtbl,
        pCdromRip,
        wmprs,
      );

  void CdromRipMediaError(
    Pointer<COMObject> pCdromRip,
    Pointer<COMObject> pMedia,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pCdromRip,
            Pointer<COMObject> pMedia,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pCdromRip,
            Pointer<COMObject> pMedia,
          )>()(
        ptr.ref.lpVtbl,
        pCdromRip,
        pMedia,
      );

  void CdromBurnStateChange(
    Pointer<COMObject> pCdromBurn,
    int wmpbs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pCdromBurn,
            Int32 wmpbs,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pCdromBurn,
            int wmpbs,
          )>()(
        ptr.ref.lpVtbl,
        pCdromBurn,
        wmpbs,
      );

  void CdromBurnMediaError(
    Pointer<COMObject> pCdromBurn,
    Pointer<COMObject> pMedia,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pCdromBurn,
            Pointer<COMObject> pMedia,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pCdromBurn,
            Pointer<COMObject> pMedia,
          )>()(
        ptr.ref.lpVtbl,
        pCdromBurn,
        pMedia,
      );

  void CdromBurnError(
    Pointer<COMObject> pCdromBurn,
    int hrError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pCdromBurn,
            Int32 hrError,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pCdromBurn,
            int hrError,
          )>()(
        ptr.ref.lpVtbl,
        pCdromBurn,
        hrError,
      );

  void LibraryConnect(
    Pointer<COMObject> pLibrary,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pLibrary,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pLibrary,
          )>()(
        ptr.ref.lpVtbl,
        pLibrary,
      );

  void LibraryDisconnect(
    Pointer<COMObject> pLibrary,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pLibrary,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pLibrary,
          )>()(
        ptr.ref.lpVtbl,
        pLibrary,
      );

  void FolderScanStateChange(
    int wmpfss,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 wmpfss,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int wmpfss,
          )>()(
        ptr.ref.lpVtbl,
        wmpfss,
      );

  void StringCollectionChange(
    Pointer<COMObject> pdispStringCollection,
    int change,
    int lCollectionIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pdispStringCollection,
            Int32 change,
            Int32 lCollectionIndex,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pdispStringCollection,
            int change,
            int lCollectionIndex,
          )>()(
        ptr.ref.lpVtbl,
        pdispStringCollection,
        change,
        lCollectionIndex,
      );

  void MediaCollectionMediaAdded(
    Pointer<COMObject> pdispMedia,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pdispMedia,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pdispMedia,
          )>()(
        ptr.ref.lpVtbl,
        pdispMedia,
      );

  void MediaCollectionMediaRemoved(
    Pointer<COMObject> pdispMedia,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> pdispMedia,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> pdispMedia,
          )>()(
        ptr.ref.lpVtbl,
        pdispMedia,
      );
}
