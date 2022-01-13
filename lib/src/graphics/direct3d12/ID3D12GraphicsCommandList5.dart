// ID3D12GraphicsCommandList5.dart

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

import '../../graphics/direct3d12/ID3D12GraphicsCommandList4.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../graphics/direct3d12/ID3D12Resource.dart';

/// @nodoc
const IID_ID3D12GraphicsCommandList5 = '{55050859-4024-474C-87F5-6472EAEE44EA}';

/// {@category Interface}
/// {@category com}
class ID3D12GraphicsCommandList5 extends ID3D12GraphicsCommandList4 {
  // vtable begins at 77, is 2 entries long.
  ID3D12GraphicsCommandList5(Pointer<COMObject> ptr) : super(ptr);

  void RSSetShadingRate(
    int baseShadingRate,
    Pointer<Int32> combiners,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(77)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 baseShadingRate,
            Pointer<Int32> combiners,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int baseShadingRate,
            Pointer<Int32> combiners,
          )>()(
        ptr.ref.lpVtbl,
        baseShadingRate,
        combiners,
      );

  void RSSetShadingRateImage(
    Pointer<COMObject> shadingRateImage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(78)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> shadingRateImage,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> shadingRateImage,
          )>()(
        ptr.ref.lpVtbl,
        shadingRateImage,
      );
}
