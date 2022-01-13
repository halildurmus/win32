// ID3D10Resource.dart

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

import '../../graphics/direct3d10/ID3D10DeviceChild.dart';
import '../../graphics/direct3d10/structs.g.dart';

/// @nodoc
const IID_ID3D10Resource = '{9B7E4C01-342C-4106-A19F-4F2704F689F0}';

/// {@category Interface}
/// {@category com}
class ID3D10Resource extends ID3D10DeviceChild {
  // vtable begins at 7, is 3 entries long.
  ID3D10Resource(Pointer<COMObject> ptr) : super(ptr);

  void GetType(
    Pointer<Int32> rType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Int32> rType,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Int32> rType,
          )>()(
        ptr.ref.lpVtbl,
        rType,
      );

  void SetEvictionPriority(
    int EvictionPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 EvictionPriority,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int EvictionPriority,
          )>()(
        ptr.ref.lpVtbl,
        EvictionPriority,
      );

  int GetEvictionPriority() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
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
