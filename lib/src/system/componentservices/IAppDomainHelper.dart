// IAppDomainHelper.dart

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

/// @nodoc
const IID_IAppDomainHelper = '{C7B67079-8255-42C6-9EC0-6994A3548780}';

/// {@category Interface}
/// {@category com}
class IAppDomainHelper extends IDispatch {
  // vtable begins at 7, is 2 entries long.
  IAppDomainHelper(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pUnkAD,
    int MIDL__IAppDomainHelper0000,
    Pointer pPool,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnkAD,
            IntPtr MIDL__IAppDomainHelper0000,
            Pointer pPool,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkAD,
            int MIDL__IAppDomainHelper0000,
            Pointer pPool,
          )>()(
        ptr.ref.lpVtbl,
        pUnkAD,
        MIDL__IAppDomainHelper0000,
        pPool,
      );

  int DoCallback(
    Pointer<COMObject> pUnkAD,
    int MIDL__IAppDomainHelper0001,
    Pointer pPool,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pUnkAD,
            IntPtr MIDL__IAppDomainHelper0001,
            Pointer pPool,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pUnkAD,
            int MIDL__IAppDomainHelper0001,
            Pointer pPool,
          )>()(
        ptr.ref.lpVtbl,
        pUnkAD,
        MIDL__IAppDomainHelper0001,
        pPool,
      );
}

/// @nodoc
const CLSID_AppDomainHelper = '{EF24F689-14F8-4D92-B4AF-D7B1F0E70FD4}';

/// {@category com}
class AppDomainHelper extends IAppDomainHelper {
  AppDomainHelper(Pointer<COMObject> ptr) : super(ptr);

  factory AppDomainHelper.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_AppDomainHelper);
    final iid = calloc<GUID>()..ref.setGUID(IID_IAppDomainHelper);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return AppDomainHelper(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
