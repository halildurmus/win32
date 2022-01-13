// IKsNodeControl.dart

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
const IID_IKsNodeControl = '{11737C14-24A7-4BB5-81A0-0D003813B0C4}';

/// {@category Interface}
/// {@category com}
class IKsNodeControl extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IKsNodeControl(Pointer<COMObject> ptr) : super(ptr);

  set NodeId(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(3)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 dwNodeId,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int dwNodeId,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set KsControl(Pointer value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(4)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer pKsControl,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer pKsControl,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
