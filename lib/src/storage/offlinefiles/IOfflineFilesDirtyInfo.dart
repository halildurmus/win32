// IOfflineFilesDirtyInfo.dart

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
const IID_IOfflineFilesDirtyInfo = '{0F50CE33-BAC9-4EAA-A11D-DA0E527D047D}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesDirtyInfo extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IOfflineFilesDirtyInfo(Pointer<COMObject> ptr) : super(ptr);

  int LocalDirtyByteCount(
    Pointer<Int64> pDirtyByteCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pDirtyByteCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pDirtyByteCount,
          )>()(
        ptr.ref.lpVtbl,
        pDirtyByteCount,
      );

  int RemoteDirtyByteCount(
    Pointer<Int64> pDirtyByteCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pDirtyByteCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pDirtyByteCount,
          )>()(
        ptr.ref.lpVtbl,
        pDirtyByteCount,
      );
}
