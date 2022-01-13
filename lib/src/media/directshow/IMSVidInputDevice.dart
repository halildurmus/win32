// IMSVidInputDevice.dart

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

import '../../media/directshow/IMSVidDevice.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidInputDevice = '{37B0353D-A4C8-11D2-B634-00C04F79498E}';

/// {@category Interface}
/// {@category com}
class IMSVidInputDevice extends IMSVidDevice {
  // vtable begins at 16, is 2 entries long.
  IMSVidInputDevice(Pointer<COMObject> ptr) : super(ptr);

  int IsViewable(
    Pointer<VARIANT> v,
    Pointer<Int16> pfViewable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> v,
            Pointer<Int16> pfViewable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> v,
            Pointer<Int16> pfViewable,
          )>()(
        ptr.ref.lpVtbl,
        v,
        pfViewable,
      );

  int View(
    Pointer<VARIANT> v,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> v,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> v,
          )>()(
        ptr.ref.lpVtbl,
        v,
      );
}

/// @nodoc
const CLSID_MSVidInputDevice = '{AC1972F2-138A-4CA3-90DA-AE51112EDA28}';

/// {@category com}
class MSVidInputDevice extends IMSVidInputDevice {
  MSVidInputDevice(Pointer<COMObject> ptr) : super(ptr);

  factory MSVidInputDevice.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MSVidInputDevice);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMSVidInputDevice);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MSVidInputDevice(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
