// IWSCProductList.dart

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
import '../../system/securitycenter/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/securitycenter/IWscProduct.dart';

/// @nodoc
const IID_IWSCProductList = '{722A338C-6E8E-4E72-AC27-1417FB0C81C2}';

/// {@category Interface}
/// {@category com}
class IWSCProductList extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  IWSCProductList(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    int provider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 provider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int provider,
          )>()(
        ptr.ref.lpVtbl,
        provider,
      );

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Item(
    int index,
    Pointer<Pointer<COMObject>> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<COMObject>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> pVal,
          )>()(
        ptr.ref.lpVtbl,
        index,
        pVal,
      );
}

/// @nodoc
const CLSID_WSCProductList = '{17072F7B-9ABE-4A74-A261-1EB76B55107A}';

/// {@category com}
class WSCProductList extends IWSCProductList {
  WSCProductList(Pointer<COMObject> ptr) : super(ptr);

  factory WSCProductList.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WSCProductList);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWSCProductList);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WSCProductList(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
