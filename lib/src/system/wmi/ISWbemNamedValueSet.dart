// ISWbemNamedValueSet.dart

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
import '../../system/wmi/ISWbemNamedValue.dart';
import '../../system/wmi/ISWbemNamedValueSet.dart';

/// @nodoc
const IID_ISWbemNamedValueSet = '{CF2376EA-CE8C-11D1-8B05-00600806D9B6}';

/// {@category Interface}
/// {@category com}
class ISWbemNamedValueSet extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  ISWbemNamedValueSet(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<Pointer<COMObject>> objWbemNamedValue,
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
            Pointer<Pointer<COMObject>> objWbemNamedValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strName,
            int iFlags,
            Pointer<Pointer<COMObject>> objWbemNamedValue,
          )>()(
        ptr.ref.lpVtbl,
        strName,
        iFlags,
        objWbemNamedValue,
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
    Pointer<VARIANT> varValue,
    int iFlags,
    Pointer<Pointer<COMObject>> objWbemNamedValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strName,
            Pointer<VARIANT> varValue,
            Int32 iFlags,
            Pointer<Pointer<COMObject>> objWbemNamedValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strName,
            Pointer<VARIANT> varValue,
            int iFlags,
            Pointer<Pointer<COMObject>> objWbemNamedValue,
          )>()(
        ptr.ref.lpVtbl,
        strName,
        varValue,
        iFlags,
        objWbemNamedValue,
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

  int Clone(
    Pointer<Pointer<COMObject>> objWbemNamedValueSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWbemNamedValueSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> objWbemNamedValueSet,
          )>()(
        ptr.ref.lpVtbl,
        objWbemNamedValueSet,
      );

  int DeleteAll() => ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}

/// @nodoc
const CLSID_SWbemNamedValueSet = '{9AED384E-CE8B-11D1-8B05-00600806D9B6}';

/// {@category com}
class SWbemNamedValueSet extends ISWbemNamedValueSet {
  SWbemNamedValueSet(Pointer<COMObject> ptr) : super(ptr);

  factory SWbemNamedValueSet.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SWbemNamedValueSet);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISWbemNamedValueSet);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SWbemNamedValueSet(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
