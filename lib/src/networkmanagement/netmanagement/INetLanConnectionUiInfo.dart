// INetLanConnectionUiInfo.dart

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
const IID_INetLanConnectionUiInfo = '{C08956A6-1CD3-11D1-B1C5-00805FC1270E}';

/// {@category Interface}
/// {@category com}
class INetLanConnectionUiInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  INetLanConnectionUiInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetDeviceGuid(
    Pointer<GUID> pguid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguid,
          )>()(
        ptr.ref.lpVtbl,
        pguid,
      );
}
