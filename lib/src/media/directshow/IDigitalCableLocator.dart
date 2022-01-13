// IDigitalCableLocator.dart

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

import '../../media/directshow/IATSCLocator2.dart';

/// @nodoc
const IID_IDigitalCableLocator = '{48F66A11-171A-419A-9525-BEEECD51584C}';

/// {@category Interface}
/// {@category com}
class IDigitalCableLocator extends IATSCLocator2 {
  // vtable begins at 28, is 0 entries long.
  IDigitalCableLocator(Pointer<COMObject> ptr) : super(ptr);
}

/// @nodoc
const CLSID_DigitalCableLocator = '{03C06416-D127-407A-AB4C-FDD279ABBE5D}';

/// {@category com}
class DigitalCableLocator extends IDigitalCableLocator {
  DigitalCableLocator(Pointer<COMObject> ptr) : super(ptr);

  factory DigitalCableLocator.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_DigitalCableLocator);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDigitalCableLocator);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DigitalCableLocator(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
