// ISketchInk.dart

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

import '../../system/com/IDispatch.dart';

/// @nodoc
const IID_ISketchInk = '{B4563688-98EB-4646-B279-44DA14D45748}';

/// {@category Interface}
/// {@category com}
class ISketchInk extends IDispatch {
  // vtable begins at 7, is 0 entries long.
  ISketchInk(Pointer<COMObject> ptr) : super(ptr);
}

/// @nodoc
const CLSID_SketchInk = '{F0291081-E87C-4E07-97DA-A0A03761E586}';

/// {@category com}
class SketchInk extends ISketchInk {
  SketchInk(Pointer<COMObject> ptr) : super(ptr);

  factory SketchInk.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SketchInk);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISketchInk);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SketchInk(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
