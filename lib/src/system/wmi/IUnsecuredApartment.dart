// IUnsecuredApartment.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IUnsecuredApartment = '{1CFABA8C-1523-11D1-AD79-00C04FD8FDFF}';

/// {@category Interface}
/// {@category com}
class IUnsecuredApartment extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUnsecuredApartment(Pointer<COMObject> ptr) : super(ptr);

  int CreateObjectStub(
    Pointer<COMObject> pObject,
    Pointer<Pointer<COMObject>> ppStub,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pObject,
            Pointer<Pointer<COMObject>> ppStub,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pObject,
            Pointer<Pointer<COMObject>> ppStub,
          )>()(
        ptr.ref.lpVtbl,
        pObject,
        ppStub,
      );
}

/// @nodoc
const CLSID_UnsecuredApartment = '{49BD2028-1523-11D1-AD79-00C04FD8FDFF}';

/// {@category com}
class UnsecuredApartment extends IUnsecuredApartment {
  UnsecuredApartment(Pointer<COMObject> ptr) : super(ptr);

  factory UnsecuredApartment.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_UnsecuredApartment);
    final iid = calloc<GUID>()..ref.setGUID(IID_IUnsecuredApartment);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return UnsecuredApartment(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
