// IMSVidFeature.dart

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

/// @nodoc
const IID_IMSVidFeature = '{37B03547-A4C8-11D2-B634-00C04F79498E}';

/// {@category Interface}
/// {@category com}
class IMSVidFeature extends IMSVidDevice {
  // vtable begins at 16, is 0 entries long.
  IMSVidFeature(Pointer<COMObject> ptr) : super(ptr);
}

/// @nodoc
const CLSID_MSVidFeature = '{7748530B-C08A-47EA-B24C-BE8695FF405F}';

/// {@category com}
class MSVidFeature extends IMSVidFeature {
  MSVidFeature(Pointer<COMObject> ptr) : super(ptr);

  factory MSVidFeature.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MSVidFeature);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMSVidFeature);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MSVidFeature(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
