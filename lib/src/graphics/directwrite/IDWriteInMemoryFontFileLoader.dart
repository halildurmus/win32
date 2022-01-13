// IDWriteInMemoryFontFileLoader.dart

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

import '../../graphics/directwrite/IDWriteFontFileLoader.dart';
import '../../graphics/directwrite/IDWriteFactory.dart';
import '../../specialTypes.dart';
import '../../graphics/directwrite/IDWriteFontFile.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteInMemoryFontFileLoader =
    '{DC102F47-A12D-4B1C-822D-9E117E33043F}';

/// {@category Interface}
/// {@category com}
class IDWriteInMemoryFontFileLoader extends IDWriteFontFileLoader {
  // vtable begins at 4, is 2 entries long.
  IDWriteInMemoryFontFileLoader(Pointer<COMObject> ptr) : super(ptr);

  int CreateInMemoryFontFileReference(
    Pointer<COMObject> factory,
    Pointer fontData,
    int fontDataSize,
    Pointer<COMObject> ownerObject,
    Pointer<Pointer<COMObject>> fontFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> factory,
            Pointer fontData,
            Uint32 fontDataSize,
            Pointer<COMObject> ownerObject,
            Pointer<Pointer<COMObject>> fontFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> factory,
            Pointer fontData,
            int fontDataSize,
            Pointer<COMObject> ownerObject,
            Pointer<Pointer<COMObject>> fontFile,
          )>()(
        ptr.ref.lpVtbl,
        factory,
        fontData,
        fontDataSize,
        ownerObject,
        fontFile,
      );

  int GetFileCount() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
}
