// IPublisherFilter.dart

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
import '../../../foundation/structs.g.dart';
import '../../../system/com/IDispatch.dart';
import '../../../system/com/events/IFiringControl.dart';

/// @nodoc
const IID_IPublisherFilter = '{465E5CC0-7B26-11D1-88FB-0080C7D771BF}';

/// {@category Interface}
/// {@category com}
class IPublisherFilter extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IPublisherFilter(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> methodName,
    Pointer<COMObject> dispUserDefined,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> methodName,
            Pointer<COMObject> dispUserDefined,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> methodName,
            Pointer<COMObject> dispUserDefined,
          )>()(
        ptr.ref.lpVtbl,
        methodName,
        dispUserDefined,
      );

  int PrepareToFire(
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
            Pointer<Utf16> methodName,
            Pointer<COMObject> firingControl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> methodName,
            Pointer<COMObject> firingControl,
          )>()(
        ptr.ref.lpVtbl,
        methodName,
        firingControl,
      );
}
