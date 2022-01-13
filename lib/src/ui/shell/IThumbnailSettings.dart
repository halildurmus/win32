// IThumbnailSettings.dart

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
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IThumbnailSettings = '{F4376F00-BEF5-4D45-80F3-1E023BBF1209}';

/// {@category Interface}
/// {@category com}
class IThumbnailSettings extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IThumbnailSettings(Pointer<COMObject> ptr) : super(ptr);

  int SetContext(
    int dwContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dwContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwContext,
          )>()(
        ptr.ref.lpVtbl,
        dwContext,
      );
}
