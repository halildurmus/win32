// IMFMediaStream2.dart

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

import '../../media/mediafoundation/IMFMediaStream.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFMediaStream2 = '{C5BC37D6-75C7-46A1-A132-81B5F723C20F}';

/// {@category Interface}
/// {@category com}
class IMFMediaStream2 extends IMFMediaStream {
  // vtable begins at 10, is 2 entries long.
  IMFMediaStream2(Pointer<COMObject> ptr) : super(ptr);

  int SetStreamState(
    int value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int GetStreamState(
    Pointer<Int32> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );
}
