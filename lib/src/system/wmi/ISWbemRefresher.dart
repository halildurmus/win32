// ISWbemRefresher.dart

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
import '../../system/wmi/ISWbemRefreshableItem.dart';
import '../../system/wmi/ISWbemServicesEx.dart';

/// @nodoc
const IID_ISWbemRefresher = '{14D8250E-D9C2-11D3-B38F-00105A1F473A}';

/// {@category Interface}
/// {@category com}
class ISWbemRefresher extends IDispatch {
  // vtable begins at 7, is 10 entries long.
  ISWbemRefresher(Pointer<COMObject> ptr) : super(ptr);

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
    int iIndex,
    Pointer<Pointer<COMObject>> objWbemRefreshableItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iIndex,
            Pointer<Pointer<COMObject>> objWbemRefreshableItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iIndex,
            Pointer<Pointer<COMObject>> objWbemRefreshableItem,
          )>()(
        ptr.ref.lpVtbl,
        iIndex,
        objWbemRefreshableItem,
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
    Pointer<COMObject> objWbemServices,
    Pointer<Utf16> bsInstancePath,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<Pointer<COMObject>> objWbemRefreshableItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> objWbemServices,
            Pointer<Utf16> bsInstancePath,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemRefreshableItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> objWbemServices,
            Pointer<Utf16> bsInstancePath,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemRefreshableItem,
          )>()(
        ptr.ref.lpVtbl,
        objWbemServices,
        bsInstancePath,
        iFlags,
        objWbemNamedValueSet,
        objWbemRefreshableItem,
      );

  int AddEnum(
    Pointer<COMObject> objWbemServices,
    Pointer<Utf16> bsClassName,
    int iFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<Pointer<COMObject>> objWbemRefreshableItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> objWbemServices,
            Pointer<Utf16> bsClassName,
            Int32 iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemRefreshableItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> objWbemServices,
            Pointer<Utf16> bsClassName,
            int iFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemRefreshableItem,
          )>()(
        ptr.ref.lpVtbl,
        objWbemServices,
        bsClassName,
        iFlags,
        objWbemNamedValueSet,
        objWbemRefreshableItem,
      );

  int Remove(
    int iIndex,
    int iFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iIndex,
            Int32 iFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iIndex,
            int iFlags,
          )>()(
        ptr.ref.lpVtbl,
        iIndex,
        iFlags,
      );

  int Refresh(
    int iFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iFlags,
          )>()(
        ptr.ref.lpVtbl,
        iFlags,
      );

  int get AutoReconnect {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> bCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> bCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set AutoReconnect(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(15)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int16 bCount,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bCount,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int DeleteAll() => ptr.ref.lpVtbl.value
          .elementAt(16)
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
const CLSID_SWbemRefresher = '{D269BF5C-D9C1-11D3-B38F-00105A1F473A}';

/// {@category com}
class SWbemRefresher extends ISWbemRefresher {
  SWbemRefresher(Pointer<COMObject> ptr) : super(ptr);

  factory SWbemRefresher.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SWbemRefresher);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISWbemRefresher);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SWbemRefresher(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
