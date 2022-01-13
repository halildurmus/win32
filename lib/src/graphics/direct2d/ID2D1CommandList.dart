// ID2D1CommandList.dart

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

import '../../graphics/direct2d/ID2D1Image.dart';
import '../../graphics/direct2d/ID2D1CommandSink.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1CommandList = '{B4F34A19-2383-4D76-94F6-EC343657C3DC}';

/// {@category Interface}
/// {@category com}
class ID2D1CommandList extends ID2D1Image {
  // vtable begins at 4, is 2 entries long.
  ID2D1CommandList(Pointer<COMObject> ptr) : super(ptr);

  int Stream(
    Pointer<COMObject> sink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> sink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> sink,
          )>()(
        ptr.ref.lpVtbl,
        sink,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
