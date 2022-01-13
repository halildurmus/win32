// ID3D12DeviceRemovedExtendedDataSettings.dart

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

/// @nodoc
const IID_ID3D12DeviceRemovedExtendedDataSettings =
    '{82BC481C-6B9B-4030-AEDB-7EE3D1DF1E63}';

/// {@category Interface}
/// {@category com}
class ID3D12DeviceRemovedExtendedDataSettings extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ID3D12DeviceRemovedExtendedDataSettings(Pointer<COMObject> ptr) : super(ptr);

  void SetAutoBreadcrumbsEnablement(
    int Enablement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  void SetPageFaultEnablement(
    int Enablement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  void SetWatsonDumpEnablement(
    int Enablement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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
