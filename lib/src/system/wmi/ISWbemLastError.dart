// ISWbemLastError.dart

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

import '../../system/wmi/ISWbemObject.dart';

/// @nodoc
const IID_ISWbemLastError = '{D962DB84-D4BB-11D1-8B09-00600806D9B6}';

/// {@category Interface}
/// {@category com}
class ISWbemLastError extends ISWbemObject {
  // vtable begins at 32, is 0 entries long.
  ISWbemLastError(Pointer<COMObject> ptr) : super(ptr);
}

/// @nodoc
const CLSID_SWbemLastError = '{C2FEEEAC-CFCD-11D1-8B05-00600806D9B6}';

/// {@category com}
class SWbemLastError extends ISWbemLastError {
  SWbemLastError(Pointer<COMObject> ptr) : super(ptr);

  factory SWbemLastError.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SWbemLastError);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISWbemLastError);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SWbemLastError(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
