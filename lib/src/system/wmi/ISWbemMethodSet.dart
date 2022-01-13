// ISWbemMethodSet.dart

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
import '../../system/wmi/ISWbemMethod.dart';

/// @nodoc
const IID_ISWbemMethodSet = '{C93BA292-D955-11D1-8B09-00600806D9B6}';

/// {@category Interface}
/// {@category com}
class ISWbemMethodSet extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  ISWbemMethodSet(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pUnk,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Item(
    Pointer<Utf16> strName,
    int iFlags,
    Pointer<Pointer<COMObject>> objWbemMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strName,
            Int32 iFlags,
            Pointer<Pointer<COMObject>> objWbemMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strName,
            int iFlags,
            Pointer<Pointer<COMObject>> objWbemMethod,
          )>()(
        ptr.ref.lpVtbl,
        strName,
        iFlags,
        objWbemMethod,
      );

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> iCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> iCount,
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
const CLSID_SWbemMethodSet = '{04B83D5A-21AE-11D2-8B33-00600806D9B6}';

/// {@category com}
class SWbemMethodSet extends ISWbemMethodSet {
  SWbemMethodSet(Pointer<COMObject> ptr) : super(ptr);

  factory SWbemMethodSet.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SWbemMethodSet);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISWbemMethodSet);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SWbemMethodSet(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
