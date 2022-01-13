// IMFSinkWriterCallback.dart

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
const IID_IMFSinkWriterCallback = '{666F76DE-33D2-41B9-A458-29ED0A972C58}';

/// {@category Interface}
/// {@category com}
class IMFSinkWriterCallback extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFSinkWriterCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnFinalize(
    int hrStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrStatus,
          )>()(
        ptr.ref.lpVtbl,
        hrStatus,
      );

  int OnMarker(
    int dwStreamIndex,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        pvContext,
      );
}
