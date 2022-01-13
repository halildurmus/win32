// IAudioProcessingObjectLoggingService.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../media/audio/apo/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioProcessingObjectLoggingService =
    '{698F0107-1745-4708-95A5-D84478A62A65}';

/// {@category Interface}
/// {@category com}
class IAudioProcessingObjectLoggingService extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAudioProcessingObjectLoggingService(Pointer<COMObject> ptr) : super(ptr);

  void ApoLog(
    int level,
    Pointer<Utf16> format,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 level,
            Pointer<Utf16> format,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int level,
            Pointer<Utf16> format,
          )>()(
        ptr.ref.lpVtbl,
        level,
        format,
      );
}
