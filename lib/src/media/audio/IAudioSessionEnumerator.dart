// IAudioSessionEnumerator.dart

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
import '../../media/audio/IAudioSessionControl.dart';

/// @nodoc
const IID_IAudioSessionEnumerator = '{E2F5BB11-0570-40CA-ACDD-3AA01277DEE8}';

/// {@category Interface}
/// {@category com}
class IAudioSessionEnumerator extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAudioSessionEnumerator(Pointer<COMObject> ptr) : super(ptr);

  int GetCount(
    Pointer<Int32> SessionCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> SessionCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> SessionCount,
          )>()(
        ptr.ref.lpVtbl,
        SessionCount,
      );

  int GetSession(
    int SessionCount,
    Pointer<Pointer<COMObject>> Session,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 SessionCount,
            Pointer<Pointer<COMObject>> Session,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int SessionCount,
            Pointer<Pointer<COMObject>> Session,
          )>()(
        ptr.ref.lpVtbl,
        SessionCount,
        Session,
      );
}
