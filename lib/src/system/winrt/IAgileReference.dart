// IAgileReference.dart

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
const IID_IAgileReference = '{C03F6A43-65A4-9818-987E-E0B810D2A6F2}';

/// {@category Interface}
/// {@category com}
class IAgileReference extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAgileReference(Pointer<COMObject> ptr) : super(ptr);

  int Resolve(
    Pointer<GUID> riid,
    Pointer<Pointer> ppvObjectReference,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObjectReference,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObjectReference,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        ppvObjectReference,
      );
}
