// IMbnDeviceServiceStateEvents.dart

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
import '../../networkmanagement/mobilebroadband/structs.g.dart';

/// @nodoc
const IID_IMbnDeviceServiceStateEvents =
    '{5D3FF196-89EE-49D8-8B60-33FFDDFFC58D}';

/// {@category Interface}
/// {@category com}
class IMbnDeviceServiceStateEvents extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMbnDeviceServiceStateEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnSessionsStateChange(
    Pointer<Utf16> interfaceID,
    int stateChange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> interfaceID,
            Int32 stateChange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> interfaceID,
            int stateChange,
          )>()(
        ptr.ref.lpVtbl,
        interfaceID,
        stateChange,
      );
}
