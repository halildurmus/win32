// ISBE2StreamMap.dart

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
import '../../media/directshow/ISBE2EnumStream.dart';

/// @nodoc
const IID_ISBE2StreamMap = '{667C7745-85B1-4C55-AE55-4E25056159FC}';

/// {@category Interface}
/// {@category com}
class ISBE2StreamMap extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ISBE2StreamMap(Pointer<COMObject> ptr) : super(ptr);

  int MapStream(
    int Stream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Stream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Stream,
          )>()(
        ptr.ref.lpVtbl,
        Stream,
      );

  int UnmapStream(
    int Stream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Stream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Stream,
          )>()(
        ptr.ref.lpVtbl,
        Stream,
      );

  int EnumMappedStreams(
    Pointer<Pointer<COMObject>> ppStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStreams,
          )>()(
        ptr.ref.lpVtbl,
        ppStreams,
      );
}
