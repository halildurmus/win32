// IMFTrustedInput.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFTrustedInput = '{542612C4-A1B8-4632-B521-DE11EA64A0B0}';

/// {@category Interface}
/// {@category com}
class IMFTrustedInput extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFTrustedInput(Pointer<COMObject> ptr) : super(ptr);

  int GetInputTrustAuthority(
    int dwStreamID,
    Pointer<GUID> riid,
    Pointer<Pointer<COMObject>> ppunkObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamID,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppunkObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamID,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppunkObject,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamID,
        riid,
        ppunkObject,
      );
}
