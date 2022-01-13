// IDirectMusicInstrument.dart

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
const IID_IDirectMusicInstrument = '{D2AC287D-B39B-11D1-8704-00600893B1BD}';

/// {@category Interface}
/// {@category com}
class IDirectMusicInstrument extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDirectMusicInstrument(Pointer<COMObject> ptr) : super(ptr);

  int GetPatch(
    Pointer<Uint32> pdwPatch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwPatch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwPatch,
          )>()(
        ptr.ref.lpVtbl,
        pdwPatch,
      );

  int SetPatch(
    int dwPatch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwPatch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwPatch,
          )>()(
        ptr.ref.lpVtbl,
        dwPatch,
      );
}
