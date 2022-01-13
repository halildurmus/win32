// IInputObject.dart

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
import '../../ui/windowsandmessaging/structs.g.dart';

/// @nodoc
const IID_IInputObject = '{68284FAA-6A48-11D0-8C78-00C04FD918B4}';

/// {@category Interface}
/// {@category com}
class IInputObject extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IInputObject(Pointer<COMObject> ptr) : super(ptr);

  int UIActivateIO(
    int fActivate,
    Pointer<MSG> pMsg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fActivate,
            Pointer<MSG> pMsg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fActivate,
            Pointer<MSG> pMsg,
          )>()(
        ptr.ref.lpVtbl,
        fActivate,
        pMsg,
      );

  int HasFocusIO() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int TranslateAcceleratorIO(
    Pointer<MSG> pMsg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<MSG> pMsg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<MSG> pMsg,
          )>()(
        ptr.ref.lpVtbl,
        pMsg,
      );
}
