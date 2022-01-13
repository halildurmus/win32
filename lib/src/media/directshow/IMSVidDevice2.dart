// IMSVidDevice2.dart

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

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidDevice2 = '{87BD2783-EBC0-478C-B4A0-E8E7F43AB78E}';

/// {@category Interface}
/// {@category com}
class IMSVidDevice2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMSVidDevice2(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get DevicePath {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> DevPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> DevPath,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}

/// @nodoc
const CLSID_MSVidDevice2 = '{30997F7D-B3B5-4A1C-983A-1FE8098CB77D}';

/// {@category com}
class MSVidDevice2 extends IMSVidDevice2 {
  MSVidDevice2(Pointer<COMObject> ptr) : super(ptr);

  factory MSVidDevice2.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MSVidDevice2);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMSVidDevice2);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MSVidDevice2(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
