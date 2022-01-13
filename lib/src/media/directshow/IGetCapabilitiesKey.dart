// IGetCapabilitiesKey.dart

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
import '../../system/registry/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IGetCapabilitiesKey = '{A8809222-07BB-48EA-951C-33158100625B}';

/// {@category Interface}
/// {@category com}
class IGetCapabilitiesKey extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IGetCapabilitiesKey(Pointer<COMObject> ptr) : super(ptr);

  int GetCapabilitiesKey(
    Pointer<IntPtr> pHKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<IntPtr> pHKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<IntPtr> pHKey,
          )>()(
        ptr.ref.lpVtbl,
        pHKey,
      );
}
