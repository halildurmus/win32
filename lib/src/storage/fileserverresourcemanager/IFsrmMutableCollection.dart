// IFsrmMutableCollection.dart

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

import '../../storage/fileserverresourcemanager/IFsrmCollection.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../storage/fileserverresourcemanager/IFsrmMutableCollection.dart';

/// @nodoc
const IID_IFsrmMutableCollection = '{1BB617B8-3886-49DC-AF82-A6C90FA35DDA}';

/// {@category Interface}
/// {@category com}
class IFsrmMutableCollection extends IFsrmCollection {
  // vtable begins at 14, is 4 entries long.
  IFsrmMutableCollection(Pointer<COMObject> ptr) : super(ptr);

  int Add(
    VARIANT item,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT item,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT item,
          )>()(
        ptr.ref.lpVtbl,
        item,
      );

  int Remove(
    int index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 index,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
          )>()(
        ptr.ref.lpVtbl,
        index,
      );

  int RemoveById(
    GUID id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID id,
          )>()(
        ptr.ref.lpVtbl,
        id,
      );

  int Clone(
    Pointer<Pointer<COMObject>> collection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> collection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> collection,
          )>()(
        ptr.ref.lpVtbl,
        collection,
      );
}
