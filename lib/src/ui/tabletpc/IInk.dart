// IInk.dart

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
const IID_IInk = '{03F8E511-43A1-11D3-8BB6-0080C7D6BAD5}';

/// {@category Interface}
/// {@category com}
class IInk extends IDispatch {
  // vtable begins at 7, is 0 entries long.
  IInk(Pointer<COMObject> ptr) : super(ptr);
}

/// @nodoc
const CLSID_Ink = '{13DE4A42-8D21-4C8E-BF9C-8F69CB068FCA}';

/// {@category com}
class Ink extends IInk {
  Ink(Pointer<COMObject> ptr) : super(ptr);

  factory Ink.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_Ink);
    final iid = calloc<GUID>()..ref.setGUID(IID_IInk);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return Ink(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
