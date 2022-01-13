// IStreamBufferSource.dart

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
import '../../media/directshow/IStreamBufferSink.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IStreamBufferSource = '{1C5BD776-6CED-4F44-8164-5EAB0E98DB12}';

/// {@category Interface}
/// {@category com}
class IStreamBufferSource extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IStreamBufferSource(Pointer<COMObject> ptr) : super(ptr);

  int SetStreamSink(
    Pointer<COMObject> pIStreamBufferSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIStreamBufferSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIStreamBufferSink,
          )>()(
        ptr.ref.lpVtbl,
        pIStreamBufferSink,
      );
}
