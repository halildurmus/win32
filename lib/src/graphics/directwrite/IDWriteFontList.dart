// IDWriteFontList.dart

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
import '../../graphics/directwrite/IDWriteFontCollection.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/directwrite/IDWriteFont.dart';

/// @nodoc
const IID_IDWriteFontList = '{1A0D8438-1D97-4EC1-AEF9-A2FB86ED6ACB}';

/// {@category Interface}
/// {@category com}
class IDWriteFontList extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDWriteFontList(Pointer<COMObject> ptr) : super(ptr);

  int GetFontCollection(
    Pointer<Pointer<COMObject>> fontCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> fontCollection,
          )>()(
        ptr.ref.lpVtbl,
        fontCollection,
      );

  int GetFontCount() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetFont(
    int index,
    Pointer<Pointer<COMObject>> font,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<COMObject>> font,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> font,
          )>()(
        ptr.ref.lpVtbl,
        index,
        font,
      );
}
