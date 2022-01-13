// IDWriteFontList2.dart

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

import '../../graphics/directwrite/IDWriteFontList1.dart';
import '../../graphics/directwrite/IDWriteFontSet1.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteFontList2 = '{C0763A34-77AF-445A-B735-08C37B0A5BF5}';

/// {@category Interface}
/// {@category com}
class IDWriteFontList2 extends IDWriteFontList1 {
  // vtable begins at 9, is 1 entries long.
  IDWriteFontList2(Pointer<COMObject> ptr) : super(ptr);

  int GetFontSet(
    Pointer<Pointer<COMObject>> fontSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontSet,
          )>()(
        ptr.ref.lpVtbl,
        fontSet,
      );
}
