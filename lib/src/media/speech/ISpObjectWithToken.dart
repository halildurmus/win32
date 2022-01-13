// ISpObjectWithToken.dart

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
import '../../media/speech/ISpObjectToken.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpObjectWithToken = '{5B559F40-E952-11D2-BB91-00C04F8EE6C0}';

/// {@category Interface}
/// {@category com}
class ISpObjectWithToken extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISpObjectWithToken(Pointer<COMObject> ptr) : super(ptr);

  int SetObjectToken(
    Pointer<COMObject> pToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pToken,
          )>()(
        ptr.ref.lpVtbl,
        pToken,
      );

  int GetObjectToken(
    Pointer<Pointer<COMObject>> ppToken,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppToken,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppToken,
          )>()(
        ptr.ref.lpVtbl,
        ppToken,
      );
}
