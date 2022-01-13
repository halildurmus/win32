// ISearchCompletedCallback.dart

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
import '../../system/updateagent/ISearchJob.dart';
import '../../system/updateagent/ISearchCompletedCallbackArgs.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISearchCompletedCallback = '{88AEE058-D4B0-4725-A2F1-814A67AE964C}';

/// {@category Interface}
/// {@category com}
class ISearchCompletedCallback extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISearchCompletedCallback(Pointer<COMObject> ptr) : super(ptr);

  int Invoke(
    Pointer<COMObject> searchJob,
    Pointer<COMObject> callbackArgs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> searchJob,
            Pointer<COMObject> callbackArgs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> searchJob,
            Pointer<COMObject> callbackArgs,
          )>()(
        ptr.ref.lpVtbl,
        searchJob,
        callbackArgs,
      );
}
