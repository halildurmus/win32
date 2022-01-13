// IDWriteFontFileLoader.dart

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
import '../../graphics/directwrite/IDWriteFontFileStream.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteFontFileLoader = '{727CAD4E-D6AF-4C9E-8A08-D695B11CAA49}';

/// {@category Interface}
/// {@category com}
class IDWriteFontFileLoader extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDWriteFontFileLoader(Pointer<COMObject> ptr) : super(ptr);

  int CreateStreamFromKey(
    Pointer fontFileReferenceKey,
    int fontFileReferenceKeySize,
    Pointer<Pointer<COMObject>> fontFileStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer fontFileReferenceKey,
            Uint32 fontFileReferenceKeySize,
            Pointer<Pointer<COMObject>> fontFileStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer fontFileReferenceKey,
            int fontFileReferenceKeySize,
            Pointer<Pointer<COMObject>> fontFileStream,
          )>()(
        ptr.ref.lpVtbl,
        fontFileReferenceKey,
        fontFileReferenceKeySize,
        fontFileStream,
      );
}
