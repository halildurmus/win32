// IApoAuxiliaryInputRT.dart

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
import '../../../media/audio/apo/structs.g.dart';

/// @nodoc
const IID_IApoAuxiliaryInputRT = '{F851809C-C177-49A0-B1B2-B66F017943AB}';

/// {@category Interface}
/// {@category com}
class IApoAuxiliaryInputRT extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IApoAuxiliaryInputRT(Pointer<COMObject> ptr) : super(ptr);

  void AcceptInput(
    int dwInputId,
    Pointer<APO_CONNECTION_PROPERTY> pInputConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 dwInputId,
            Pointer<APO_CONNECTION_PROPERTY> pInputConnection,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int dwInputId,
            Pointer<APO_CONNECTION_PROPERTY> pInputConnection,
          )>()(
        ptr.ref.lpVtbl,
        dwInputId,
        pInputConnection,
      );
}
