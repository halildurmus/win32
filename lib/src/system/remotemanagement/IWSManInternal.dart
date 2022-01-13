// IWSManInternal.dart

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
const IID_IWSManInternal = '{04AE2B1D-9954-4D99-94A9-A961E72C3A13}';

/// {@category Interface}
/// {@category com}
class IWSManInternal extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IWSManInternal(Pointer<COMObject> ptr) : super(ptr);

  int ConfigSDDL(
    Pointer<COMObject> session,
    VARIANT resourceUri,
    int flags,
    Pointer<Pointer<Utf16>> resource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> session,
            VARIANT resourceUri,
            Int32 flags,
            Pointer<Pointer<Utf16>> resource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> session,
            VARIANT resourceUri,
            int flags,
            Pointer<Pointer<Utf16>> resource,
          )>()(
        ptr.ref.lpVtbl,
        session,
        resourceUri,
        flags,
        resource,
      );
}

/// @nodoc
const CLSID_WSManInternal = '{7DE087A5-5DCB-4DF7-BB12-0924AD8FBD9A}';

/// {@category com}
class WSManInternal extends IWSManInternal {
  WSManInternal(Pointer<COMObject> ptr) : super(ptr);

  factory WSManInternal.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_WSManInternal);
    final iid = calloc<GUID>()..ref.setGUID(IID_IWSManInternal);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return WSManInternal(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
