// IDirectInput7W.dart

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

import '../../devices/humaninterfacedevice/IDirectInput2.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectInput7W = '{9A4CB685-236D-11D3-8E9D-00C04F6844AE}';

/// {@category Interface}
/// {@category com}
class IDirectInput7W extends IDirectInput2W {
  // vtable begins at 9, is 1 entries long.
  IDirectInput7W(Pointer<COMObject> ptr) : super(ptr);

  int CreateDeviceEx(
    Pointer<GUID> param0,
    Pointer<GUID> param1,
    Pointer<Pointer> param2,
    Pointer<COMObject> param3,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> param0,
            Pointer<GUID> param1,
            Pointer<Pointer> param2,
            Pointer<COMObject> param3,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> param0,
            Pointer<GUID> param1,
            Pointer<Pointer> param2,
            Pointer<COMObject> param3,
          )>()(
        ptr.ref.lpVtbl,
        param0,
        param1,
        param2,
        param3,
      );
}
