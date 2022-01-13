// ISWbemPrivilegeSet.dart

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
import '../../system/wmi/structs.g.dart';
import '../../system/wmi/ISWbemPrivilege.dart';

/// @nodoc
const IID_ISWbemPrivilegeSet = '{26EE67BF-5804-11D2-8B4A-00600806D9B6}';

/// {@category Interface}
/// {@category com}
class ISWbemPrivilegeSet extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  ISWbemPrivilegeSet(Pointer<COMObject> ptr) : super(ptr);

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
    int iPrivilege,
    Pointer<Pointer<COMObject>> objWbemPrivilege,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iPrivilege,
            Pointer<Pointer<COMObject>> objWbemPrivilege,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iPrivilege,
            Pointer<Pointer<COMObject>> objWbemPrivilege,
          )>()(
        ptr.ref.lpVtbl,
        iPrivilege,
        objWbemPrivilege,
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
    int iPrivilege,
    int bIsEnabled,
    Pointer<Pointer<COMObject>> objWbemPrivilege,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iPrivilege,
            Int16 bIsEnabled,
            Pointer<Pointer<COMObject>> objWbemPrivilege,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iPrivilege,
            int bIsEnabled,
            Pointer<Pointer<COMObject>> objWbemPrivilege,
          )>()(
        ptr.ref.lpVtbl,
        iPrivilege,
        bIsEnabled,
        objWbemPrivilege,
      );

  int Remove(
    int iPrivilege,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 iPrivilege,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iPrivilege,
          )>()(
        ptr.ref.lpVtbl,
        iPrivilege,
      );

  int DeleteAll() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  int AddAsString(
    Pointer<Utf16> strPrivilege,
    int bIsEnabled,
    Pointer<Pointer<COMObject>> objWbemPrivilege,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strPrivilege,
            Int16 bIsEnabled,
            Pointer<Pointer<COMObject>> objWbemPrivilege,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strPrivilege,
            int bIsEnabled,
            Pointer<Pointer<COMObject>> objWbemPrivilege,
          )>()(
        ptr.ref.lpVtbl,
        strPrivilege,
        bIsEnabled,
        objWbemPrivilege,
      );
}

/// @nodoc
const CLSID_SWbemPrivilegeSet = '{26EE67BE-5804-11D2-8B4A-00600806D9B6}';

/// {@category com}
class SWbemPrivilegeSet extends ISWbemPrivilegeSet {
  SWbemPrivilegeSet(Pointer<COMObject> ptr) : super(ptr);

  factory SWbemPrivilegeSet.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SWbemPrivilegeSet);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISWbemPrivilegeSet);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SWbemPrivilegeSet(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
