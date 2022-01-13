// IDirectMusicDownload.dart

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
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectMusicDownload = '{D2AC287B-B39B-11D1-8704-00600893B1BD}';

/// {@category Interface}
/// {@category com}
class IDirectMusicDownload extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDirectMusicDownload(Pointer<COMObject> ptr) : super(ptr);

  int GetBuffer(
    Pointer<Pointer> ppvBuffer,
    Pointer<Uint32> pdwSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer> ppvBuffer,
            Pointer<Uint32> pdwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer> ppvBuffer,
            Pointer<Uint32> pdwSize,
          )>()(
        ptr.ref.lpVtbl,
        ppvBuffer,
        pdwSize,
      );
}
