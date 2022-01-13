// IOfflineFilesItem.dart

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
import '../../storage/offlinefiles/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../storage/offlinefiles/IOfflineFilesItem.dart';

/// @nodoc
const IID_IOfflineFilesItem = '{4A753DA6-E044-4F12-A718-5D14D079A906}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesItem extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IOfflineFilesItem(Pointer<COMObject> ptr) : super(ptr);

  int GetItemType(
    Pointer<Int32> pItemType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pItemType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pItemType,
          )>()(
        ptr.ref.lpVtbl,
        pItemType,
      );

  int GetPath(
    Pointer<Pointer<Utf16>> ppszPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetParentItem(
    Pointer<Pointer<COMObject>> ppItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppItem,
          )>()(
        ptr.ref.lpVtbl,
        ppItem,
      );

  int Refresh(
    int dwQueryFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwQueryFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwQueryFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwQueryFlags,
      );

  int IsMarkedForDeletion(
    Pointer<Int32> pbMarkedForDeletion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbMarkedForDeletion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbMarkedForDeletion,
          )>()(
        ptr.ref.lpVtbl,
        pbMarkedForDeletion,
      );
}
