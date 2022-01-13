// IMFDLNASinkInit.dart

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
import '../../media/mediafoundation/IMFByteStream.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFDLNASinkInit = '{0C012799-1B61-4C10-BDA9-04445BE5F561}';

/// {@category Interface}
/// {@category com}
class IMFDLNASinkInit extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFDLNASinkInit(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pByteStream,
    int fPal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pByteStream,
            Int32 fPal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pByteStream,
            int fPal,
          )>()(
        ptr.ref.lpVtbl,
        pByteStream,
        fPal,
      );
}
