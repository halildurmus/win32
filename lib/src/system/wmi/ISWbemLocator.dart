// ISWbemLocator.dart

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
import '../../system/wmi/ISWbemServices.dart';
import '../../system/wmi/ISWbemSecurity.dart';

/// @nodoc
const IID_ISWbemLocator = '{76A6415B-CB41-11D1-8B02-00600806D9B6}';

/// {@category Interface}
/// {@category com}
class ISWbemLocator extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  ISWbemLocator(Pointer<COMObject> ptr) : super(ptr);

  int ConnectServer(
    Pointer<Utf16> strServer,
    Pointer<Utf16> strNamespace,
    Pointer<Utf16> strUser,
    Pointer<Utf16> strPassword,
    Pointer<Utf16> strLocale,
    Pointer<Utf16> strAuthority,
    int iSecurityFlags,
    Pointer<COMObject> objWbemNamedValueSet,
    Pointer<Pointer<COMObject>> objWbemServices,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strServer,
            Pointer<Utf16> strNamespace,
            Pointer<Utf16> strUser,
            Pointer<Utf16> strPassword,
            Pointer<Utf16> strLocale,
            Pointer<Utf16> strAuthority,
            Int32 iSecurityFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemServices,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strServer,
            Pointer<Utf16> strNamespace,
            Pointer<Utf16> strUser,
            Pointer<Utf16> strPassword,
            Pointer<Utf16> strLocale,
            Pointer<Utf16> strAuthority,
            int iSecurityFlags,
            Pointer<COMObject> objWbemNamedValueSet,
            Pointer<Pointer<COMObject>> objWbemServices,
          )>()(
        ptr.ref.lpVtbl,
        strServer,
        strNamespace,
        strUser,
        strPassword,
        strLocale,
        strAuthority,
        iSecurityFlags,
        objWbemNamedValueSet,
        objWbemServices,
      );

  Pointer<COMObject> get Security_ {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
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
}

/// @nodoc
const CLSID_SWbemLocator = '{76A64158-CB41-11D1-8B02-00600806D9B6}';

/// {@category com}
class SWbemLocator extends ISWbemLocator {
  SWbemLocator(Pointer<COMObject> ptr) : super(ptr);

  factory SWbemLocator.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_SWbemLocator);
    final iid = calloc<GUID>()..ref.setGUID(IID_ISWbemLocator);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return SWbemLocator(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
