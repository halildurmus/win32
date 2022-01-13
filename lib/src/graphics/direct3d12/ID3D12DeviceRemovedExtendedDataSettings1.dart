// ID3D12DeviceRemovedExtendedDataSettings1.dart

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

import '../../graphics/direct3d12/ID3D12DeviceRemovedExtendedDataSettings.dart';
import '../../graphics/direct3d12/structs.g.dart';

/// @nodoc
const IID_ID3D12DeviceRemovedExtendedDataSettings1 =
    '{DBD5AE51-3317-4F0A-ADF9-1D7CEDCAAE0B}';

/// {@category Interface}
/// {@category com}
class ID3D12DeviceRemovedExtendedDataSettings1
    extends ID3D12DeviceRemovedExtendedDataSettings {
  // vtable begins at 6, is 1 entries long.
  ID3D12DeviceRemovedExtendedDataSettings1(Pointer<COMObject> ptr) : super(ptr);

  void SetBreadcrumbContextEnablement(
    int Enablement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 Enablement,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Enablement,
          )>()(
        ptr.ref.lpVtbl,
        Enablement,
      );
}
