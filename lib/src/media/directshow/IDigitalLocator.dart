// IDigitalLocator.dart

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

import '../../media/directshow/ILocator.dart';

/// @nodoc
const IID_IDigitalLocator = '{19B595D8-839A-47F0-96DF-4F194F3C768C}';

/// {@category Interface}
/// {@category com}
class IDigitalLocator extends ILocator {
  // vtable begins at 22, is 0 entries long.
  IDigitalLocator(Pointer<COMObject> ptr) : super(ptr);
}

/// @nodoc
const CLSID_DigitalLocator = '{6E50CC0D-C19B-4BF6-810B-5BD60761F5CC}';

/// {@category com}
class DigitalLocator extends IDigitalLocator {
  DigitalLocator(Pointer<COMObject> ptr) : super(ptr);

  factory DigitalLocator.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_DigitalLocator);
    final iid = calloc<GUID>()..ref.setGUID(IID_IDigitalLocator);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return DigitalLocator(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
