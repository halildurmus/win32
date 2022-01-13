// IDWriteFontCollection1.dart

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

import '../../graphics/directwrite/IDWriteFontCollection.dart';
import '../../graphics/directwrite/IDWriteFontSet.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFontFamily1.dart';

/// @nodoc
const IID_IDWriteFontCollection1 = '{53585141-D9F8-4095-8321-D73CF6BD116C}';

/// {@category Interface}
/// {@category com}
class IDWriteFontCollection1 extends IDWriteFontCollection {
  // vtable begins at 7, is 2 entries long.
  IDWriteFontCollection1(Pointer<COMObject> ptr) : super(ptr);

  int GetFontSet(
    Pointer<Pointer<COMObject>> fontSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int GetFontFamily_1(
    int index,
    Pointer<Pointer<COMObject>> fontFamily,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<COMObject>> fontFamily,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> fontFamily,
          )>()(
        ptr.ref.lpVtbl,
        index,
        fontFamily,
      );
}
