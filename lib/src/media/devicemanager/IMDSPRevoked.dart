// IMDSPRevoked.dart

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
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMDSPRevoked = '{A4E8F2D4-3F31-464D-B53D-4FC335998184}';

/// {@category Interface}
/// {@category com}
class IMDSPRevoked extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMDSPRevoked(Pointer<COMObject> ptr) : super(ptr);

  int GetRevocationURL(
    Pointer<Pointer<Utf16>> ppwszRevocationURL,
    Pointer<Uint32> pdwBufferLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszRevocationURL,
            Pointer<Uint32> pdwBufferLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwszRevocationURL,
            Pointer<Uint32> pdwBufferLen,
          )>()(
        ptr.ref.lpVtbl,
        ppwszRevocationURL,
        pdwBufferLen,
      );
}
