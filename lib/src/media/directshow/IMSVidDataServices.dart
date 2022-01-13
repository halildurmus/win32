// IMSVidDataServices.dart

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

import '../../media/directshow/IMSVidFeature.dart';

/// @nodoc
const IID_IMSVidDataServices = '{334125C1-77E5-11D3-B653-00C04F79498E}';

/// {@category Interface}
/// {@category com}
class IMSVidDataServices extends IMSVidFeature {
  // vtable begins at 16, is 0 entries long.
  IMSVidDataServices(Pointer<COMObject> ptr) : super(ptr);
}

/// @nodoc
const CLSID_MSVidDataServices = '{334125C0-77E5-11D3-B653-00C04F79498E}';

/// {@category com}
class MSVidDataServices extends IMSVidDataServices {
  MSVidDataServices(Pointer<COMObject> ptr) : super(ptr);

  factory MSVidDataServices.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MSVidDataServices);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMSVidDataServices);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MSVidDataServices(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
