// IWaitMultiple.dart

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
import '../../system/com/ISynchronize.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWaitMultiple = '{0000002B-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IWaitMultiple extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWaitMultiple(Pointer<COMObject> ptr) : super(ptr);

  int WaitMultiple(
    int timeout,
    Pointer<Pointer<COMObject>> pSync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 timeout,
            Pointer<Pointer<COMObject>> pSync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int timeout,
            Pointer<Pointer<COMObject>> pSync,
          )>()(
        ptr.ref.lpVtbl,
        timeout,
        pSync,
      );

  int AddSynchronize(
    Pointer<COMObject> pSync,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSync,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSync,
          )>()(
        ptr.ref.lpVtbl,
        pSync,
      );
}
