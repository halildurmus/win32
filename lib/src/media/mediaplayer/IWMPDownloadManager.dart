// IWMPDownloadManager.dart

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
import '../../media/mediaplayer/IWMPDownloadCollection.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMPDownloadManager = '{E15E9AD1-8F20-4CC4-9EC7-1A328CA86A0D}';

/// {@category Interface}
/// {@category com}
class IWMPDownloadManager extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IWMPDownloadManager(Pointer<COMObject> ptr) : super(ptr);

  int getDownloadCollection(
    int lCollectionId,
    Pointer<Pointer<COMObject>> ppCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lCollectionId,
            Pointer<Pointer<COMObject>> ppCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lCollectionId,
            Pointer<Pointer<COMObject>> ppCollection,
          )>()(
        ptr.ref.lpVtbl,
        lCollectionId,
        ppCollection,
      );

  int createDownloadCollection(
    Pointer<Pointer<COMObject>> ppCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCollection,
          )>()(
        ptr.ref.lpVtbl,
        ppCollection,
      );
}
