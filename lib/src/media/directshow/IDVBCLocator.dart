// IDVBCLocator.dart

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

import '../../media/directshow/IDigitalLocator.dart';

/// @nodoc
const IID_IDVBCLocator = '{6E42F36E-1DD2-43C4-9F78-69D25AE39034}';

/// {@category Interface}
/// {@category com}
class IDVBCLocator extends IDigitalLocator {
  // vtable begins at 22, is 0 entries long.
  IDVBCLocator(Pointer<COMObject> ptr) : super(ptr);
}

/// @nodoc
const CLSID_DVBCLocator = '{C531D9FD-9685-4028-8B68-6E1232079F1E}';

/// {@category com}
class DVBCLocator extends IDVBCLocator {
  DVBCLocator(Pointer<COMObject> ptr) : super(ptr);

  factory DVBCLocator.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_DVBCLocator);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDVBCLocator);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DVBCLocator(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
