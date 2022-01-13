// IMSVidStreamBufferSinkEvent2.dart

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

import '../../media/directshow/IMSVidStreamBufferSinkEvent.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidStreamBufferSinkEvent2 =
    '{3D7A5166-72D7-484B-A06F-286187B80CA1}';

/// {@category Interface}
/// {@category com}
class IMSVidStreamBufferSinkEvent2 extends IMSVidStreamBufferSinkEvent {
  // vtable begins at 11, is 2 entries long.
  IMSVidStreamBufferSinkEvent2(Pointer<COMObject> ptr) : super(ptr);

  int EncryptionOn() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int EncryptionOff() => ptr.ref.lpVtbl.value
          .elementAt(12)
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
