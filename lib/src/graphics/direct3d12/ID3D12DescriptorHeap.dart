// ID3D12DescriptorHeap.dart

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

import '../../graphics/direct3d12/ID3D12Pageable.dart';
import '../../graphics/direct3d12/structs.g.dart';

/// @nodoc
const IID_ID3D12DescriptorHeap = '{8EFB471D-616C-4F49-90F7-127BB763FA51}';

/// {@category Interface}
/// {@category com}
class ID3D12DescriptorHeap extends ID3D12Pageable {
  // vtable begins at 8, is 3 entries long.
  ID3D12DescriptorHeap(Pointer<COMObject> ptr) : super(ptr);

  D3D12_DESCRIPTOR_HEAP_DESC GetDesc() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      D3D12_DESCRIPTOR_HEAP_DESC Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D3D12_DESCRIPTOR_HEAP_DESC Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  D3D12_CPU_DESCRIPTOR_HANDLE GetCPUDescriptorHandleForHeapStart() =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      D3D12_CPU_DESCRIPTOR_HANDLE Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D3D12_CPU_DESCRIPTOR_HANDLE Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  D3D12_GPU_DESCRIPTOR_HANDLE GetGPUDescriptorHandleForHeapStart() =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      D3D12_GPU_DESCRIPTOR_HANDLE Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              D3D12_GPU_DESCRIPTOR_HANDLE Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
