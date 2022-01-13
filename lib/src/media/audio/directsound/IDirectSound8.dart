// IDirectSound8.dart

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

import '../../../media/audio/directsound/IDirectSound.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectSound8 = '{C50A7E93-F395-4834-9EF6-7FA99DE50966}';

/// {@category Interface}
/// {@category com}
class IDirectSound8 extends IDirectSound {
  // vtable begins at 11, is 1 entries long.
  IDirectSound8(Pointer<COMObject> ptr) : super(ptr);

  int VerifyCertification(
    Pointer<Uint32> pdwCertified,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCertified,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCertified,
          )>()(
        ptr.ref.lpVtbl,
        pdwCertified,
      );
}
