// IAccIdentity.dart

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
const IID_IAccIdentity = '{7852B78D-1CFD-41C1-A615-9C0C85960B5F}';

/// {@category Interface}
/// {@category com}
class IAccIdentity extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAccIdentity(Pointer<COMObject> ptr) : super(ptr);

  int GetIdentityString(
    int dwIDChild,
    Pointer<Pointer<Uint8>> ppIDString,
    Pointer<Uint32> pdwIDStringLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIDChild,
            Pointer<Pointer<Uint8>> ppIDString,
            Pointer<Uint32> pdwIDStringLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIDChild,
            Pointer<Pointer<Uint8>> ppIDString,
            Pointer<Uint32> pdwIDStringLen,
          )>()(
        ptr.ref.lpVtbl,
        dwIDChild,
        ppIDString,
        pdwIDStringLen,
      );
}
