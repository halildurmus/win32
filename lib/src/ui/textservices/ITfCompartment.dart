// ITfCompartment.dart

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
const IID_ITfCompartment = '{BB08F7A9-607A-4384-8623-056892B64371}';

/// {@category Interface}
/// {@category com}
class ITfCompartment extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITfCompartment(Pointer<COMObject> ptr) : super(ptr);

  int SetValue(
    int tid,
    Pointer<VARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 tid,
            Pointer<VARIANT> pvarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tid,
            Pointer<VARIANT> pvarValue,
          )>()(
        ptr.ref.lpVtbl,
        tid,
        pvarValue,
      );

  int GetValue(
    Pointer<VARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarValue,
          )>()(
        ptr.ref.lpVtbl,
        pvarValue,
      );
}
