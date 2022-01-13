// IComMtaThreadPoolKnobs.dart

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
const IID_IComMtaThreadPoolKnobs = '{F9A76D2E-76A5-43EB-A0C4-49BEC8E48480}';

/// {@category Interface}
/// {@category com}
class IComMtaThreadPoolKnobs extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IComMtaThreadPoolKnobs(Pointer<COMObject> ptr) : super(ptr);

  int MTASetMaxThreadCount(
    int dwMaxThreads,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMaxThreads,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMaxThreads,
          )>()(
        ptr.ref.lpVtbl,
        dwMaxThreads,
      );

  int MTAGetMaxThreadCount(
    Pointer<Uint32> pdwMaxThreads,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMaxThreads,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMaxThreads,
          )>()(
        ptr.ref.lpVtbl,
        pdwMaxThreads,
      );

  int MTASetThrottleValue(
    int dwThrottle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwThrottle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwThrottle,
          )>()(
        ptr.ref.lpVtbl,
        dwThrottle,
      );

  int MTAGetThrottleValue(
    Pointer<Uint32> pdwThrottle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwThrottle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwThrottle,
          )>()(
        ptr.ref.lpVtbl,
        pdwThrottle,
      );
}
