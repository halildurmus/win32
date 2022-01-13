// IRpcChannelBuffer2.dart

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

import '../../system/com/IRpcChannelBuffer.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRpcChannelBuffer2 = '{594F31D0-7F19-11D0-B194-00A0C90DC8BF}';

/// {@category Interface}
/// {@category com}
class IRpcChannelBuffer2 extends IRpcChannelBuffer {
  // vtable begins at 8, is 1 entries long.
  IRpcChannelBuffer2(Pointer<COMObject> ptr) : super(ptr);

  int GetProtocolVersion(
    Pointer<Uint32> pdwVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwVersion,
          )>()(
        ptr.ref.lpVtbl,
        pdwVersion,
      );
}
