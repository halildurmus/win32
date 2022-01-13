// ISWbemObjectSet.dart

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
import '../../system/wmi/ISWbemObject.dart';
import '../../system/wmi/ISWbemSecurity.dart';

/// @nodoc
const IID_ISWbemObjectSet = '{76A6415F-CB41-11D1-8B02-00600806D9B6}';

/// {@category Interface}
/// {@category com}
class ISWbemObjectSet extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  ISWbemObjectSet(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<Utf16> strObjectPath,
    int iFlags,
    Pointer<Pointer<COMObject>> objWbemObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strObjectPath,
            Int32 iFlags,
            Pointer<Pointer<COMObject>> objWbemObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strObjectPath,
            int iFlags,
            Pointer<Pointer<COMObject>> objWbemObject,
          )>()(
        ptr.ref.lpVtbl,
        strObjectPath,
        iFlags,
        objWbemObject,
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

  Pointer<COMObject> get Security_ {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWbemSecurity,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWbemSecurity,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int ItemIndex(
    int lIndex,
    Pointer<Pointer<COMObject>> objWbemObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lIndex,
            Pointer<Pointer<COMObject>> objWbemObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lIndex,
            Pointer<Pointer<COMObject>> objWbemObject,
          )>()(
        ptr.ref.lpVtbl,
        lIndex,
        objWbemObject,
      );
}

/// @nodoc
const CLSID_SWbemObjectSet = '{04B83D61-21AE-11D2-8B33-00600806D9B6}';

/// {@category com}
class SWbemObjectSet extends ISWbemObjectSet {
  SWbemObjectSet(Pointer<COMObject> ptr) : super(ptr);

  factory SWbemObjectSet.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SWbemObjectSet);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISWbemObjectSet);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SWbemObjectSet(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
