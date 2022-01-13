// IMPEG2ComponentType.dart

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

import '../../media/directshow/ILanguageComponentType.dart';
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMPEG2ComponentType = '{2C073D84-B51C-48C9-AA9F-68971E1F6E38}';

/// {@category Interface}
/// {@category com}
class IMPEG2ComponentType extends ILanguageComponentType {
  // vtable begins at 26, is 2 entries long.
  IMPEG2ComponentType(Pointer<COMObject> ptr) : super(ptr);

  int get StreamType {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> MP2StreamType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> MP2StreamType,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set StreamType(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(27)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 MP2StreamType,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int MP2StreamType,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_MPEG2ComponentType = '{418008F3-CF67-4668-9628-10DC52BE1D08}';

/// {@category com}
class MPEG2ComponentType extends IMPEG2ComponentType {
  MPEG2ComponentType(Pointer<COMObject> ptr) : super(ptr);

  factory MPEG2ComponentType.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_MPEG2ComponentType);
    final iid = calloc<GUID>()..ref.setGUID(IID_IMPEG2ComponentType);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return MPEG2ComponentType(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
