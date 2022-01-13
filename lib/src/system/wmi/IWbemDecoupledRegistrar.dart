// IWbemDecoupledRegistrar.dart

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

import '../../system/com/IUnknown.dart';
import '../../system/wmi/IWbemContext.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IWbemDecoupledRegistrar = '{1005CBCF-E64F-4646-BCD3-3A089D8A84B4}';

/// {@category Interface}
/// {@category com}
class IWbemDecoupledRegistrar extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWbemDecoupledRegistrar(Pointer<COMObject> ptr) : super(ptr);

  int Register(
    int a_Flags,
    Pointer<COMObject> a_Context,
    Pointer<Utf16> a_User,
    Pointer<Utf16> a_Locale,
    Pointer<Utf16> a_Scope,
    Pointer<Utf16> a_Registration,
    Pointer<COMObject> pIUnknown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 a_Flags,
            Pointer<COMObject> a_Context,
            Pointer<Utf16> a_User,
            Pointer<Utf16> a_Locale,
            Pointer<Utf16> a_Scope,
            Pointer<Utf16> a_Registration,
            Pointer<COMObject> pIUnknown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int a_Flags,
            Pointer<COMObject> a_Context,
            Pointer<Utf16> a_User,
            Pointer<Utf16> a_Locale,
            Pointer<Utf16> a_Scope,
            Pointer<Utf16> a_Registration,
            Pointer<COMObject> pIUnknown,
          )>()(
        ptr.ref.lpVtbl,
        a_Flags,
        a_Context,
        a_User,
        a_Locale,
        a_Scope,
        a_Registration,
        pIUnknown,
      );

  int UnRegister() => ptr.ref.lpVtbl.value
          .elementAt(4)
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
const CLSID_WbemDecoupledRegistrar = '{4CFC7932-0F9D-4BEF-9C32-8EA2A6B56FCB}';

/// {@category com}
class WbemDecoupledRegistrar extends IWbemDecoupledRegistrar {
  WbemDecoupledRegistrar(Pointer<COMObject> ptr) : super(ptr);

  factory WbemDecoupledRegistrar.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WbemDecoupledRegistrar);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWbemDecoupledRegistrar);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WbemDecoupledRegistrar(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
