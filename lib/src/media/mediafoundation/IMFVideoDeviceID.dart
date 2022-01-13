// IMFVideoDeviceID.dart

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
const IID_IMFVideoDeviceID = '{A38D9567-5A9C-4F3C-B293-8EB415B279BA}';

/// {@category Interface}
/// {@category com}
class IMFVideoDeviceID extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFVideoDeviceID(Pointer<COMObject> ptr) : super(ptr);

  int GetDeviceID(
    Pointer<GUID> pDeviceID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pDeviceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pDeviceID,
          )>()(
        ptr.ref.lpVtbl,
        pDeviceID,
      );
}
