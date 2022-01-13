// IBindStatusCallbackEx.dart

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

import '../../system/com/IBindStatusCallback.dart';
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBindStatusCallbackEx = '{AAA74EF9-8EE7-4659-88D9-F8C504DA73CC}';

/// {@category Interface}
/// {@category com}
class IBindStatusCallbackEx extends IBindStatusCallback {
  // vtable begins at 11, is 1 entries long.
  IBindStatusCallbackEx(Pointer<COMObject> ptr) : super(ptr);

  int GetBindInfoEx(
    Pointer<Uint32> grfBINDF,
    Pointer<BINDINFO> pbindinfo,
    Pointer<Uint32> grfBINDF2,
    Pointer<Uint32> pdwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> grfBINDF,
            Pointer<BINDINFO> pbindinfo,
            Pointer<Uint32> grfBINDF2,
            Pointer<Uint32> pdwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> grfBINDF,
            Pointer<BINDINFO> pbindinfo,
            Pointer<Uint32> grfBINDF2,
            Pointer<Uint32> pdwReserved,
          )>()(
        ptr.ref.lpVtbl,
        grfBINDF,
        pbindinfo,
        grfBINDF2,
        pdwReserved,
      );
}
