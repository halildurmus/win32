// ITTAPI2.dart

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

import '../../devices/tapi/ITTAPI.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../devices/tapi/IEnumPhone.dart';
import '../../devices/tapi/ITCollection2.dart';

/// @nodoc
const IID_ITTAPI2 = '{54FBDC8C-D90F-4DAD-9695-B373097F094B}';

/// {@category Interface}
/// {@category com}
class ITTAPI2 extends ITTAPI {
  // vtable begins at 23, is 3 entries long.
  ITTAPI2(Pointer<COMObject> ptr) : super(ptr);

  VARIANT get Phones {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pPhones,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pPhones,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int EnumeratePhones(
    Pointer<Pointer<COMObject>> ppEnumPhone,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumPhone,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumPhone,
          )>()(
        ptr.ref.lpVtbl,
        ppEnumPhone,
      );

  int CreateEmptyCollectionObject(
    Pointer<Pointer<COMObject>> ppCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCollection,
          )>()(
        ptr.ref.lpVtbl,
        ppCollection,
      );
}
