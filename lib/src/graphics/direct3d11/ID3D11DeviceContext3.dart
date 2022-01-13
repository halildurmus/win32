// ID3D11DeviceContext3.dart

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

import '../../graphics/direct3d11/ID3D11DeviceContext2.dart';
import '../../graphics/direct3d11/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID3D11DeviceContext3 = '{B4E3C01D-E79E-4637-91B2-510E9F4C9B8F}';

/// {@category Interface}
/// {@category com}
class ID3D11DeviceContext3 extends ID3D11DeviceContext2 {
  // vtable begins at 144, is 3 entries long.
  ID3D11DeviceContext3(Pointer<COMObject> ptr) : super(ptr);

  void Flush1(
    int ContextType,
    int hEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(144)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 ContextType,
            IntPtr hEvent,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int ContextType,
            int hEvent,
          )>()(
        ptr.ref.lpVtbl,
        ContextType,
        hEvent,
      );

  void SetHardwareProtectionState(
    int HwProtectionEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(145)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 HwProtectionEnable,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int HwProtectionEnable,
          )>()(
        ptr.ref.lpVtbl,
        HwProtectionEnable,
      );

  void GetHardwareProtectionState(
    Pointer<Int32> pHwProtectionEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(146)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Int32> pHwProtectionEnable,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Int32> pHwProtectionEnable,
          )>()(
        ptr.ref.lpVtbl,
        pHwProtectionEnable,
      );
}
