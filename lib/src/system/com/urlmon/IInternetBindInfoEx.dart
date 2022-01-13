// IInternetBindInfoEx.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/urlmon/IInternetBindInfo.dart';
import '../../../system/com/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IInternetBindInfoEx = '{A3E015B7-A82C-4DCD-A150-569AEEED36AB}';

/// {@category Interface}
/// {@category com}
class IInternetBindInfoEx extends IInternetBindInfo {
  // vtable begins at 5, is 1 entries long.
  IInternetBindInfoEx(Pointer<COMObject> ptr) : super(ptr);

  int GetBindInfoEx(
    Pointer<Uint32> grfBINDF,
    Pointer<BINDINFO> pbindinfo,
    Pointer<Uint32> grfBINDF2,
    Pointer<Uint32> pdwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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
