// IMSVidStreamBufferSinkEvent3.dart

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

import '../../media/directshow/IMSVidStreamBufferSinkEvent2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidStreamBufferSinkEvent3 =
    '{735AD8D5-C259-48E9-81E7-D27953665B23}';

/// {@category Interface}
/// {@category com}
class IMSVidStreamBufferSinkEvent3 extends IMSVidStreamBufferSinkEvent2 {
  // vtable begins at 13, is 1 entries long.
  IMSVidStreamBufferSinkEvent3(Pointer<COMObject> ptr) : super(ptr);

  int LicenseChange(
    int dwProt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dwProt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwProt,
          )>()(
        ptr.ref.lpVtbl,
        dwProt,
      );
}
