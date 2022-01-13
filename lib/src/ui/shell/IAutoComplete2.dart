// IAutoComplete2.dart

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

import '../../ui/shell/IAutoComplete.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAutoComplete2 = '{EAC04BC0-3791-11D2-BB95-0060977B464C}';

/// {@category Interface}
/// {@category com}
class IAutoComplete2 extends IAutoComplete {
  // vtable begins at 5, is 2 entries long.
  IAutoComplete2(Pointer<COMObject> ptr) : super(ptr);

  int SetOptions(
    int dwFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlag,
          )>()(
        ptr.ref.lpVtbl,
        dwFlag,
      );

  int GetOptions(
    Pointer<Uint32> pdwFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlag,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlag,
      );
}
