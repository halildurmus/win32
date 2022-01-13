// IXAudio2EngineCallback.dart

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

import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IXAudio2EngineCallback = 'null';

/// {@category Interface}
/// {@category com}
class IXAudio2EngineCallback {
  // vtable begins at 0, is 3 entries long.
  Pointer<COMObject> ptr;

  IXAudio2EngineCallback(this.ptr);

  void OnProcessingPassStart() => ptr.ref.lpVtbl.value
          .elementAt(0)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void OnProcessingPassEnd() => ptr.ref.lpVtbl.value
          .elementAt(1)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void OnCriticalError(
    int Error,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(2)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 Error,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int Error,
          )>()(
        ptr.ref.lpVtbl,
        Error,
      );
}
