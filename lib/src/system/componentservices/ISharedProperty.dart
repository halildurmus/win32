// ISharedProperty.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISharedProperty = '{2A005C01-A5DE-11CF-9E66-00AA00A3F464}';

/// {@category Interface}
/// {@category com}
class ISharedProperty extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  ISharedProperty(Pointer<COMObject> ptr) : super(ptr);

  VARIANT get Value {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Value(VARIANT value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          VARIANT val,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          VARIANT val,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}

/// @nodoc
const CLSID_SharedProperty = '{2A005C05-A5DE-11CF-9E66-00AA00A3F464}';

/// {@category com}
class SharedProperty extends ISharedProperty {
  SharedProperty(Pointer<COMObject> ptr) : super(ptr);

  factory SharedProperty.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SharedProperty);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISharedProperty);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SharedProperty(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
