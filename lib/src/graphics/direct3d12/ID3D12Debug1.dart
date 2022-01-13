// ID3D12Debug1.dart

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
const IID_ID3D12Debug1 = '{AFFAA4CA-63FE-4D8E-B8AD-159000AF4304}';

/// {@category Interface}
/// {@category com}
class ID3D12Debug1 extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ID3D12Debug1(Pointer<COMObject> ptr) : super(ptr);

  void EnableDebugLayer() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

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
}
