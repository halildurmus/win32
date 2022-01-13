// IManagedActivationEvents.dart

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
import '../../system/componentservices/IManagedObjectInfo.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IManagedActivationEvents = '{A5F325AF-572F-46DA-B8AB-827C3D95D99E}';

/// {@category Interface}
/// {@category com}
class IManagedActivationEvents extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IManagedActivationEvents(Pointer<COMObject> ptr) : super(ptr);

  int CreateManagedStub(
    Pointer<COMObject> pInfo,
    int fDist,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pInfo,
            Int32 fDist,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pInfo,
            int fDist,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
        fDist,
      );

  int DestroyManagedStub(
    Pointer<COMObject> pInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pInfo,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
      );
}
