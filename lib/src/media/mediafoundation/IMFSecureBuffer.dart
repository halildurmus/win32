// IMFSecureBuffer.dart

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
const IID_IMFSecureBuffer = '{C1209904-E584-4752-A2D6-7F21693F8B21}';

/// {@category Interface}
/// {@category com}
class IMFSecureBuffer extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFSecureBuffer(Pointer<COMObject> ptr) : super(ptr);

  int GetIdentifier(
    Pointer<GUID> pGuidIdentifier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pGuidIdentifier,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pGuidIdentifier,
          )>()(
        ptr.ref.lpVtbl,
        pGuidIdentifier,
      );
}
