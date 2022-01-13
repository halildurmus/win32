// ISWbemQualifierSet.dart

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
import '../../system/wmi/ISWbemQualifier.dart';

/// @nodoc
const IID_ISWbemQualifierSet = '{9B16ED16-D3DF-11D1-8B08-00600806D9B6}';

/// {@category Interface}
/// {@category com}
class ISWbemQualifierSet extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  ISWbemQualifierSet(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<Utf16> name,
    int iFlags,
    Pointer<Pointer<COMObject>> objWbemQualifier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Int32 iFlags,
            Pointer<Pointer<COMObject>> objWbemQualifier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            int iFlags,
            Pointer<Pointer<COMObject>> objWbemQualifier,
          )>()(
        ptr.ref.lpVtbl,
        name,
        iFlags,
        objWbemQualifier,
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
    Pointer<VARIANT> varVal,
    int bPropagatesToSubclass,
    int bPropagatesToInstance,
    int bIsOverridable,
    int iFlags,
    Pointer<Pointer<COMObject>> objWbemQualifier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strName,
            Pointer<VARIANT> varVal,
            Int16 bPropagatesToSubclass,
            Int16 bPropagatesToInstance,
            Int16 bIsOverridable,
            Int32 iFlags,
            Pointer<Pointer<COMObject>> objWbemQualifier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strName,
            Pointer<VARIANT> varVal,
            int bPropagatesToSubclass,
            int bPropagatesToInstance,
            int bIsOverridable,
            int iFlags,
            Pointer<Pointer<COMObject>> objWbemQualifier,
          )>()(
        ptr.ref.lpVtbl,
        strName,
        varVal,
        bPropagatesToSubclass,
        bPropagatesToInstance,
        bIsOverridable,
        iFlags,
        objWbemQualifier,
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
const CLSID_SWbemQualifierSet = '{04B83D5E-21AE-11D2-8B33-00600806D9B6}';

/// {@category com}
class SWbemQualifierSet extends ISWbemQualifierSet {
  SWbemQualifierSet(Pointer<COMObject> ptr) : super(ptr);

  factory SWbemQualifierSet.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SWbemQualifierSet);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISWbemQualifierSet);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SWbemQualifierSet(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
