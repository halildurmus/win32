// IMFStreamingSinkConfig.dart

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
const IID_IMFStreamingSinkConfig = '{9DB7AA41-3CC5-40D4-8509-555804AD34CC}';

/// {@category Interface}
/// {@category com}
class IMFStreamingSinkConfig extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFStreamingSinkConfig(Pointer<COMObject> ptr) : super(ptr);

  int StartStreaming(
    int fSeekOffsetIsByteOffset,
    int qwSeekOffset,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fSeekOffsetIsByteOffset,
            Uint64 qwSeekOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fSeekOffsetIsByteOffset,
            int qwSeekOffset,
          )>()(
        ptr.ref.lpVtbl,
        fSeekOffsetIsByteOffset,
        qwSeekOffset,
      );
}
