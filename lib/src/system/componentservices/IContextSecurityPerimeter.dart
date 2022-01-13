// IContextSecurityPerimeter.dart

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
const IID_IContextSecurityPerimeter = '{A7549A29-A7C4-42E1-8DC1-7E3D748DC24A}';

/// {@category Interface}
/// {@category com}
class IContextSecurityPerimeter extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IContextSecurityPerimeter(Pointer<COMObject> ptr) : super(ptr);

  int GetPerimeterFlag(
    Pointer<Int32> pFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pFlag,
          )>()(
        ptr.ref.lpVtbl,
        pFlag,
      );

  int SetPerimeterFlag(
    int fFlag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fFlag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fFlag,
          )>()(
        ptr.ref.lpVtbl,
        fFlag,
      );
}
