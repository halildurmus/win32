// IACList2.dart

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

import '../../ui/shell/IACList.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IACList2 = '{470141A0-5186-11D2-BBB6-0060977B464C}';

/// {@category Interface}
/// {@category com}
class IACList2 extends IACList {
  // vtable begins at 4, is 2 entries long.
  IACList2(Pointer<COMObject> ptr) : super(ptr);

  int SetOptions(
    int dwFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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
          .elementAt(5)
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
