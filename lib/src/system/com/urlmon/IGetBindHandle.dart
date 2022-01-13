// IGetBindHandle.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/com/urlmon/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IGetBindHandle = '{AF0FF408-129D-4B20-91F0-02BD23D88352}';

/// {@category Interface}
/// {@category com}
class IGetBindHandle extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IGetBindHandle(Pointer<COMObject> ptr) : super(ptr);

  int GetBindHandle(
    int enumRequestedHandle,
    Pointer<IntPtr> pRetHandle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enumRequestedHandle,
            Pointer<IntPtr> pRetHandle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enumRequestedHandle,
            Pointer<IntPtr> pRetHandle,
          )>()(
        ptr.ref.lpVtbl,
        enumRequestedHandle,
        pRetHandle,
      );
}
