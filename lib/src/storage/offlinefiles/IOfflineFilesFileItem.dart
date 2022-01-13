// IOfflineFilesFileItem.dart

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

import '../../storage/offlinefiles/IOfflineFilesItem.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IOfflineFilesFileItem = '{8DFADEAD-26C2-4EFF-8A72-6B50723D9A00}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesFileItem extends IOfflineFilesItem {
  // vtable begins at 8, is 2 entries long.
  IOfflineFilesFileItem(Pointer<COMObject> ptr) : super(ptr);

  int IsSparse(
    Pointer<Int32> pbIsSparse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbIsSparse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbIsSparse,
          )>()(
        ptr.ref.lpVtbl,
        pbIsSparse,
      );

  int IsEncrypted(
    Pointer<Int32> pbIsEncrypted,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbIsEncrypted,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbIsEncrypted,
          )>()(
        ptr.ref.lpVtbl,
        pbIsEncrypted,
      );
}
