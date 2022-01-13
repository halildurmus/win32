// ITfFnPropertyUIStatus.dart

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

import '../../ui/textservices/ITfFunction.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfFnPropertyUIStatus = '{2338AC6E-2B9D-44C0-A75E-EE64F256B3BD}';

/// {@category Interface}
/// {@category com}
class ITfFnPropertyUIStatus extends ITfFunction {
  // vtable begins at 4, is 2 entries long.
  ITfFnPropertyUIStatus(Pointer<COMObject> ptr) : super(ptr);

  int GetStatus(
    Pointer<GUID> refguidProp,
    Pointer<Uint32> pdw,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> refguidProp,
            Pointer<Uint32> pdw,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> refguidProp,
            Pointer<Uint32> pdw,
          )>()(
        ptr.ref.lpVtbl,
        refguidProp,
        pdw,
      );

  int SetStatus(
    Pointer<GUID> refguidProp,
    int dw,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> refguidProp,
            Uint32 dw,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> refguidProp,
            int dw,
          )>()(
        ptr.ref.lpVtbl,
        refguidProp,
        dw,
      );
}
