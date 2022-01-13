// IOfflineFilesPinInfo.dart

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

/// @nodoc
const IID_IOfflineFilesPinInfo = '{5B2B0655-B3FD-497D-ADEB-BD156BC8355B}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesPinInfo extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IOfflineFilesPinInfo(Pointer<COMObject> ptr) : super(ptr);

  int IsPinned(
    Pointer<Int32> pbPinned,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbPinned,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbPinned,
          )>()(
        ptr.ref.lpVtbl,
        pbPinned,
      );

  int IsPinnedForUser(
    Pointer<Int32> pbPinnedForUser,
    Pointer<Int32> pbInherit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbPinnedForUser,
            Pointer<Int32> pbInherit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbPinnedForUser,
            Pointer<Int32> pbInherit,
          )>()(
        ptr.ref.lpVtbl,
        pbPinnedForUser,
        pbInherit,
      );

  int IsPinnedForUserByPolicy(
    Pointer<Int32> pbPinnedForUser,
    Pointer<Int32> pbInherit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbPinnedForUser,
            Pointer<Int32> pbInherit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbPinnedForUser,
            Pointer<Int32> pbInherit,
          )>()(
        ptr.ref.lpVtbl,
        pbPinnedForUser,
        pbInherit,
      );

  int IsPinnedForComputer(
    Pointer<Int32> pbPinnedForComputer,
    Pointer<Int32> pbInherit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbPinnedForComputer,
            Pointer<Int32> pbInherit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbPinnedForComputer,
            Pointer<Int32> pbInherit,
          )>()(
        ptr.ref.lpVtbl,
        pbPinnedForComputer,
        pbInherit,
      );

  int IsPinnedForFolderRedirection(
    Pointer<Int32> pbPinnedForFolderRedirection,
    Pointer<Int32> pbInherit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbPinnedForFolderRedirection,
            Pointer<Int32> pbInherit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbPinnedForFolderRedirection,
            Pointer<Int32> pbInherit,
          )>()(
        ptr.ref.lpVtbl,
        pbPinnedForFolderRedirection,
        pbInherit,
      );
}
