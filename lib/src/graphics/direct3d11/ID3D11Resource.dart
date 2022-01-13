// ID3D11Resource.dart

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

import '../../graphics/direct3d11/ID3D11DeviceChild.dart';
import '../../graphics/direct3d11/structs.g.dart';

/// @nodoc
const IID_ID3D11Resource = '{DC8E63F3-D12B-4952-B47B-5E45026A862D}';

/// {@category Interface}
/// {@category com}
class ID3D11Resource extends ID3D11DeviceChild {
  // vtable begins at 7, is 3 entries long.
  ID3D11Resource(Pointer<COMObject> ptr) : super(ptr);

  void GetType(
    Pointer<Int32> pResourceDimension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Int32> pResourceDimension,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Int32> pResourceDimension,
          )>()(
        ptr.ref.lpVtbl,
        pResourceDimension,
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
