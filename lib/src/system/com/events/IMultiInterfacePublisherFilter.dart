// IMultiInterfacePublisherFilter.dart

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
import '../../../system/com/events/IMultiInterfaceEventControl.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/events/IFiringControl.dart';

/// @nodoc
const IID_IMultiInterfacePublisherFilter =
    '{465E5CC1-7B26-11D1-88FB-0080C7D771BF}';

/// {@category Interface}
/// {@category com}
class IMultiInterfacePublisherFilter extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMultiInterfacePublisherFilter(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pEIC,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEIC,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEIC,
          )>()(
        ptr.ref.lpVtbl,
        pEIC,
      );

  int PrepareToFire(
    Pointer<GUID> iid,
    Pointer<Utf16> methodName,
    Pointer<COMObject> firingControl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> iid,
            Pointer<Utf16> methodName,
            Pointer<COMObject> firingControl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> iid,
            Pointer<Utf16> methodName,
            Pointer<COMObject> firingControl,
          )>()(
        ptr.ref.lpVtbl,
        iid,
        methodName,
        firingControl,
      );
}
