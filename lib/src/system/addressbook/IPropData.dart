// IPropData.dart

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

import '../../system/addressbook/IMAPIProp.dart';
import '../../foundation/structs.g.dart';
import '../../system/addressbook/structs.g.dart';

/// @nodoc
const IID_IPropData = 'null';

/// {@category Interface}
/// {@category com}
class IPropData extends IMAPIProp {
  // vtable begins at 14, is 4 entries long.
  IPropData(Pointer<COMObject> ptr) : super(ptr);

  int HrSetObjAccess(
    int ulAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulAccess,
          )>()(
        ptr.ref.lpVtbl,
        ulAccess,
      );

  int HrSetPropAccess(
    Pointer<SPropTagArray> lpPropTagArray,
    Pointer<Uint32> rgulAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPropTagArray> lpPropTagArray,
            Pointer<Uint32> rgulAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPropTagArray> lpPropTagArray,
            Pointer<Uint32> rgulAccess,
          )>()(
        ptr.ref.lpVtbl,
        lpPropTagArray,
        rgulAccess,
      );

  int HrGetPropAccess(
    Pointer<Pointer<SPropTagArray>> lppPropTagArray,
    Pointer<Pointer<Uint32>> lprgulAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<SPropTagArray>> lppPropTagArray,
            Pointer<Pointer<Uint32>> lprgulAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<SPropTagArray>> lppPropTagArray,
            Pointer<Pointer<Uint32>> lprgulAccess,
          )>()(
        ptr.ref.lpVtbl,
        lppPropTagArray,
        lprgulAccess,
      );

  int HrAddObjProps(
    Pointer<SPropTagArray> lppPropTagArray,
    Pointer<Pointer<SPropProblemArray>> lprgulAccess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPropTagArray> lppPropTagArray,
            Pointer<Pointer<SPropProblemArray>> lprgulAccess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPropTagArray> lppPropTagArray,
            Pointer<Pointer<SPropProblemArray>> lprgulAccess,
          )>()(
        ptr.ref.lpVtbl,
        lppPropTagArray,
        lprgulAccess,
      );
}
