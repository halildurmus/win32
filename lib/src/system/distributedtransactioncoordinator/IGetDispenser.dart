// IGetDispenser.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IGetDispenser = '{C23CC370-87EF-11CE-8081-0080C758527E}';

/// {@category Interface}
/// {@category com}
class IGetDispenser extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IGetDispenser(Pointer<COMObject> ptr) : super(ptr);

  int GetDispenser(
    Pointer<GUID> iid,
    Pointer<Pointer> ppvObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> iid,
            Pointer<Pointer> ppvObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> iid,
            Pointer<Pointer> ppvObject,
          )>()(
        ptr.ref.lpVtbl,
        iid,
        ppvObject,
      );
}
