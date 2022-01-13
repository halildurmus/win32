// ID3D12DeviceRemovedExtendedData2.dart

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

import '../../graphics/direct3d12/ID3D12DeviceRemovedExtendedData1.dart';
import '../../graphics/direct3d12/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12DeviceRemovedExtendedData2 =
    '{67FC5816-E4CA-4915-BF18-42541272DA54}';

/// {@category Interface}
/// {@category com}
class ID3D12DeviceRemovedExtendedData2
    extends ID3D12DeviceRemovedExtendedData1 {
  // vtable begins at 7, is 2 entries long.
  ID3D12DeviceRemovedExtendedData2(Pointer<COMObject> ptr) : super(ptr);

  int GetPageFaultAllocationOutput2(
    Pointer<D3D12_DRED_PAGE_FAULT_OUTPUT2> pOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_DRED_PAGE_FAULT_OUTPUT2> pOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_DRED_PAGE_FAULT_OUTPUT2> pOutput,
          )>()(
        ptr.ref.lpVtbl,
        pOutput,
      );

  int GetDeviceState() => ptr.ref.lpVtbl.value
          .elementAt(8)
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
