// ID3D12DeviceRemovedExtendedData.dart

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
import '../../graphics/direct3d12/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D12DeviceRemovedExtendedData =
    '{98931D33-5AE8-4791-AA3C-1A73A2934E71}';

/// {@category Interface}
/// {@category com}
class ID3D12DeviceRemovedExtendedData extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ID3D12DeviceRemovedExtendedData(Pointer<COMObject> ptr) : super(ptr);

  int GetAutoBreadcrumbsOutput(
    Pointer<D3D12_DRED_AUTO_BREADCRUMBS_OUTPUT> pOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_DRED_AUTO_BREADCRUMBS_OUTPUT> pOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_DRED_AUTO_BREADCRUMBS_OUTPUT> pOutput,
          )>()(
        ptr.ref.lpVtbl,
        pOutput,
      );

  int GetPageFaultAllocationOutput(
    Pointer<D3D12_DRED_PAGE_FAULT_OUTPUT> pOutput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<D3D12_DRED_PAGE_FAULT_OUTPUT> pOutput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<D3D12_DRED_PAGE_FAULT_OUTPUT> pOutput,
          )>()(
        ptr.ref.lpVtbl,
        pOutput,
      );
}
