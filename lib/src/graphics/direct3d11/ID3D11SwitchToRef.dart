// ID3D11SwitchToRef.dart

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
const IID_ID3D11SwitchToRef = '{1EF337E3-58E7-4F83-A692-DB221F5ED47E}';

/// {@category Interface}
/// {@category com}
class ID3D11SwitchToRef extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ID3D11SwitchToRef(Pointer<COMObject> ptr) : super(ptr);

  int SetUseRef(
    int UseRef,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 UseRef,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int UseRef,
          )>()(
        ptr.ref.lpVtbl,
        UseRef,
      );

  int GetUseRef() => ptr.ref.lpVtbl.value
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
}
