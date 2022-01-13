// ISWbemPropertySet.dart

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
import '../../system/wmi/ISWbemProperty.dart';
import '../../system/wmi/structs.g.dart';

/// @nodoc
const IID_ISWbemPropertySet = '{DEA0A7B2-D4BA-11D1-8B09-00600806D9B6}';

/// {@category Interface}
/// {@category com}
class ISWbemPropertySet extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  ISWbemPropertySet(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<Pointer<COMObject>> objWbemProperty,
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
            Pointer<Pointer<COMObject>> objWbemProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strName,
            int iFlags,
            Pointer<Pointer<COMObject>> objWbemProperty,
          )>()(
        ptr.ref.lpVtbl,
        strName,
        iFlags,
        objWbemProperty,
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

  int Add(
    Pointer<Utf16> strName,
    int iCIMType,
    int bIsArray,
    int iFlags,
    Pointer<Pointer<COMObject>> objWbemProperty,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strName,
            Int32 iCIMType,
            Int16 bIsArray,
            Int32 iFlags,
            Pointer<Pointer<COMObject>> objWbemProperty,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strName,
            int iCIMType,
            int bIsArray,
            int iFlags,
            Pointer<Pointer<COMObject>> objWbemProperty,
          )>()(
        ptr.ref.lpVtbl,
        strName,
        iCIMType,
        bIsArray,
        iFlags,
        objWbemProperty,
      );

  int Remove(
    Pointer<Utf16> strName,
    int iFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strName,
            Int32 iFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strName,
            int iFlags,
          )>()(
        ptr.ref.lpVtbl,
        strName,
        iFlags,
      );
}

/// @nodoc
const CLSID_SWbemPropertySet = '{04B83D5C-21AE-11D2-8B33-00600806D9B6}';

/// {@category com}
class SWbemPropertySet extends ISWbemPropertySet {
  SWbemPropertySet(Pointer<COMObject> ptr) : super(ptr);

  factory SWbemPropertySet.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SWbemPropertySet);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISWbemPropertySet);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SWbemPropertySet(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
