// IDWriteFontCollection3.dart

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

import '../../graphics/directwrite/IDWriteFontCollection2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteFontCollection3 = '{A4D055A6-F9E3-4E25-93B7-9E309F3AF8E9}';

/// {@category Interface}
/// {@category com}
class IDWriteFontCollection3 extends IDWriteFontCollection2 {
  // vtable begins at 13, is 1 entries long.
  IDWriteFontCollection3(Pointer<COMObject> ptr) : super(ptr);

  int GetExpirationEvent() => ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      IntPtr Function(
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
