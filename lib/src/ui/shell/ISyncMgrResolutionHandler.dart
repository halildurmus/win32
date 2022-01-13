// ISyncMgrResolutionHandler.dart

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
import '../../ui/shell/IShellItem.dart';
import '../../ui/shell/structs.g.dart';
import '../../ui/shell/ISyncMgrConflictResolutionItems.dart';

/// @nodoc
const IID_ISyncMgrResolutionHandler = '{40A3D052-8BFF-4C4B-A338-D4A395700DE9}';

/// {@category Interface}
/// {@category com}
class ISyncMgrResolutionHandler extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ISyncMgrResolutionHandler(Pointer<COMObject> ptr) : super(ptr);

  int QueryAbilities(
    Pointer<Uint32> pdwAbilities,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwAbilities,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwAbilities,
          )>()(
        ptr.ref.lpVtbl,
        pdwAbilities,
      );

  int KeepOther(
    Pointer<COMObject> psiOther,
    Pointer<Int32> pFeedback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> psiOther,
            Pointer<Int32> pFeedback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> psiOther,
            Pointer<Int32> pFeedback,
          )>()(
        ptr.ref.lpVtbl,
        psiOther,
        pFeedback,
      );

  int KeepRecent(
    Pointer<Int32> pFeedback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pFeedback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pFeedback,
          )>()(
        ptr.ref.lpVtbl,
        pFeedback,
      );

  int RemoveFromSyncSet(
    Pointer<Int32> pFeedback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pFeedback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pFeedback,
          )>()(
        ptr.ref.lpVtbl,
        pFeedback,
      );

  int KeepItems(
    Pointer<COMObject> pArray,
    Pointer<Int32> pFeedback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pArray,
            Pointer<Int32> pFeedback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pArray,
            Pointer<Int32> pFeedback,
          )>()(
        ptr.ref.lpVtbl,
        pArray,
        pFeedback,
      );
}
