// IMSVidVideoInputDevice.dart

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

import '../../media/directshow/IMSVidInputDevice.dart';

/// @nodoc
const IID_IMSVidVideoInputDevice = '{1C15D47F-911D-11D2-B632-00C04F79498E}';

/// {@category Interface}
/// {@category com}
class IMSVidVideoInputDevice extends IMSVidInputDevice {
  // vtable begins at 18, is 0 entries long.
  IMSVidVideoInputDevice(Pointer<COMObject> ptr) : super(ptr);
}

/// @nodoc
const CLSID_MSVidVideoInputDevice = '{95F4820B-BB3A-4E2D-BC64-5B817BC2C30E}';

/// {@category com}
class MSVidVideoInputDevice extends IMSVidVideoInputDevice {
  MSVidVideoInputDevice(Pointer<COMObject> ptr) : super(ptr);

  factory MSVidVideoInputDevice.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MSVidVideoInputDevice);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMSVidVideoInputDevice);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MSVidVideoInputDevice(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
