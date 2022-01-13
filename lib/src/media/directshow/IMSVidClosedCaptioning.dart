// IMSVidClosedCaptioning.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidClosedCaptioning = '{99652EA1-C1F7-414F-BB7B-1C967DE75983}';

/// {@category Interface}
/// {@category com}
class IMSVidClosedCaptioning extends IMSVidFeature {
  // vtable begins at 16, is 2 entries long.
  IMSVidClosedCaptioning(Pointer<COMObject> ptr) : super(ptr);

  int get Enable {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> On,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> On,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Enable(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(17)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 On,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int On,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_MSVidClosedCaptioning = '{7F9CB14D-48E4-43B6-9346-1AEBC39C64D3}';

/// {@category com}
class MSVidClosedCaptioning extends IMSVidClosedCaptioning {
  MSVidClosedCaptioning(Pointer<COMObject> ptr) : super(ptr);

  factory MSVidClosedCaptioning.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MSVidClosedCaptioning);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMSVidClosedCaptioning);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MSVidClosedCaptioning(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
