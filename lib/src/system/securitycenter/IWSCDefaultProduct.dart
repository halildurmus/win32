// IWSCDefaultProduct.dart

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

/// @nodoc
const IID_IWSCDefaultProduct = '{0476D69C-F21A-11E5-9CE9-5E5517507C66}';

/// {@category Interface}
/// {@category com}
class IWSCDefaultProduct extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IWSCDefaultProduct(Pointer<COMObject> ptr) : super(ptr);

  int SetDefaultProduct(
    int eType,
    Pointer<Utf16> pGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eType,
            Pointer<Utf16> pGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eType,
            Pointer<Utf16> pGuid,
          )>()(
        ptr.ref.lpVtbl,
        eType,
        pGuid,
      );
}

/// @nodoc
const CLSID_WSCDefaultProduct = '{2981A36E-F22D-11E5-9CE9-5E5517507C66}';

/// {@category com}
class WSCDefaultProduct extends IWSCDefaultProduct {
  WSCDefaultProduct(Pointer<COMObject> ptr) : super(ptr);

  factory WSCDefaultProduct.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WSCDefaultProduct);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWSCDefaultProduct);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WSCDefaultProduct(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
