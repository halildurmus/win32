// IOfflineFilesPinInfo2.dart

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

import '../../storage/offlinefiles/IOfflineFilesPinInfo.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IOfflineFilesPinInfo2 = '{623C58A2-42ED-4AD7-B69A-0F1B30A72D0D}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesPinInfo2 extends IOfflineFilesPinInfo {
  // vtable begins at 8, is 1 entries long.
  IOfflineFilesPinInfo2(Pointer<COMObject> ptr) : super(ptr);

  int IsPartlyPinned(
    Pointer<Int32> pbPartlyPinned,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbPartlyPinned,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbPartlyPinned,
          )>()(
        ptr.ref.lpVtbl,
        pbPartlyPinned,
      );
}
