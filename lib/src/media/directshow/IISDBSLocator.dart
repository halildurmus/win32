// IISDBSLocator.dart

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

import '../../media/directshow/IDVBSLocator.dart';

/// @nodoc
const IID_IISDBSLocator = '{C9897087-E29C-473F-9E4B-7072123DEA14}';

/// {@category Interface}
/// {@category com}
class IISDBSLocator extends IDVBSLocator {
  // vtable begins at 32, is 0 entries long.
  IISDBSLocator(Pointer<COMObject> ptr) : super(ptr);
}

/// @nodoc
const CLSID_ISDBSLocator = '{6504AFED-A629-455C-A7F1-04964DEA5CC4}';

/// {@category com}
class ISDBSLocator extends IISDBSLocator {
  ISDBSLocator(Pointer<COMObject> ptr) : super(ptr);

  factory ISDBSLocator.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ISDBSLocator);
    final iid = calloc<GUID>()..ref.setGUID(IID_IISDBSLocator);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ISDBSLocator(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
