// IDiskQuotaEvents.dart

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
import '../../storage/filesystem/IDiskQuotaUser.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDiskQuotaEvents = '{7988B579-EC89-11CF-9C00-00AA00A14F56}';

/// {@category Interface}
/// {@category com}
class IDiskQuotaEvents extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDiskQuotaEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnUserNameChanged(
    Pointer<COMObject> pUser,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUser,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUser,
          )>()(
        ptr.ref.lpVtbl,
        pUser,
      );
}
