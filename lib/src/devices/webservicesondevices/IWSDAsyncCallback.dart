// IWSDAsyncCallback.dart

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
import '../../devices/webservicesondevices/IWSDAsyncResult.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWSDAsyncCallback = '{A63E109D-CE72-49E2-BA98-E845F5EE1666}';

/// {@category Interface}
/// {@category com}
class IWSDAsyncCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IWSDAsyncCallback(Pointer<COMObject> ptr) : super(ptr);

  int AsyncOperationComplete(
    Pointer<COMObject> pAsyncResult,
    Pointer<COMObject> pAsyncState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pAsyncResult,
            Pointer<COMObject> pAsyncState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pAsyncResult,
            Pointer<COMObject> pAsyncState,
          )>()(
        ptr.ref.lpVtbl,
        pAsyncResult,
        pAsyncState,
      );
}
