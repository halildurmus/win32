// IMFSourceBufferAppendMode.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFSourceBufferAppendMode = '{19666FB4-BABE-4C55-BC03-0A074DA37E2A}';

/// {@category Interface}
/// {@category com}
class IMFSourceBufferAppendMode extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFSourceBufferAppendMode(Pointer<COMObject> ptr) : super(ptr);

  int GetAppendMode() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int SetAppendMode(
    int mode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 mode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int mode,
          )>()(
        ptr.ref.lpVtbl,
        mode,
      );
}
