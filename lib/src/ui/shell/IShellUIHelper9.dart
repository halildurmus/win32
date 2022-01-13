// IShellUIHelper9.dart

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

import '../../ui/shell/IShellUIHelper8.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IShellUIHelper9 = '{6CDF73B0-7F2F-451F-BC0F-63E0F3284E54}';

/// {@category Interface}
/// {@category com}
class IShellUIHelper9 extends IShellUIHelper8 {
  // vtable begins at 104, is 1 entries long.
  IShellUIHelper9(Pointer<COMObject> ptr) : super(ptr);

  int GetOSSku(
    Pointer<Uint32> pdwResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(104)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwResult,
          )>()(
        ptr.ref.lpVtbl,
        pdwResult,
      );
}
