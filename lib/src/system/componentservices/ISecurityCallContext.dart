// ISecurityCallContext.dart

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
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ISecurityCallContext = '{CAFC823E-B441-11D1-B82B-0000F8757E2A}';

/// {@category Interface}
/// {@category com}
class ISecurityCallContext extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  ISecurityCallContext(Pointer<COMObject> ptr) : super(ptr);

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> plCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> plCount,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Item(
    Pointer<Utf16> name,
    Pointer<VARIANT> pItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<VARIANT> pItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> name,
            Pointer<VARIANT> pItem,
          )>()(
        ptr.ref.lpVtbl,
        name,
        pItem,
      );

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int IsCallerInRole(
    Pointer<Utf16> bstrRole,
    Pointer<Int16> pfInRole,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRole,
            Pointer<Int16> pfInRole,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRole,
            Pointer<Int16> pfInRole,
          )>()(
        ptr.ref.lpVtbl,
        bstrRole,
        pfInRole,
      );

  int IsSecurityEnabled(
    Pointer<Int16> pfIsEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pfIsEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pfIsEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pfIsEnabled,
      );

  int IsUserInRole(
    Pointer<VARIANT> pUser,
    Pointer<Utf16> bstrRole,
    Pointer<Int16> pfInRole,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pUser,
            Pointer<Utf16> bstrRole,
            Pointer<Int16> pfInRole,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pUser,
            Pointer<Utf16> bstrRole,
            Pointer<Int16> pfInRole,
          )>()(
        ptr.ref.lpVtbl,
        pUser,
        bstrRole,
        pfInRole,
      );
}

/// @nodoc
const CLSID_SecurityCallContext = '{ECABB0A7-7F19-11D2-978E-0000F8757E2A}';

/// {@category com}
class SecurityCallContext extends ISecurityCallContext {
  SecurityCallContext(Pointer<COMObject> ptr) : super(ptr);

  factory SecurityCallContext.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SecurityCallContext);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISecurityCallContext);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SecurityCallContext(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
