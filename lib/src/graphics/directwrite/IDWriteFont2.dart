// IDWriteFont2.dart

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

import '../../graphics/directwrite/IDWriteFont1.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteFont2 = '{29748ED6-8C9C-4A6A-BE0B-D912E8538944}';

/// {@category Interface}
/// {@category com}
class IDWriteFont2 extends IDWriteFont1 {
  // vtable begins at 18, is 1 entries long.
  IDWriteFont2(Pointer<COMObject> ptr) : super(ptr);

  int IsColorFont() => ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
