// ID3D12Debug3.dart

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

import '../../graphics/direct3d12/ID3D12Debug.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/direct3d12/structs.g.dart';

/// @nodoc
const IID_ID3D12Debug3 = '{5CF4E58F-F671-4FF1-A542-3686E3D153D1}';

/// {@category Interface}
/// {@category com}
class ID3D12Debug3 extends ID3D12Debug {
  // vtable begins at 4, is 3 entries long.
  ID3D12Debug3(Pointer<COMObject> ptr) : super(ptr);

  void SetEnableGPUBasedValidation(
    int Enable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 Enable,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Enable,
          )>()(
        ptr.ref.lpVtbl,
        Enable,
      );

  void SetEnableSynchronizedCommandQueueValidation(
    int Enable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 Enable,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Enable,
          )>()(
        ptr.ref.lpVtbl,
        Enable,
      );

  void SetGPUBasedValidationFlags(
    int Flags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 Flags,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Flags,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
      );
}
