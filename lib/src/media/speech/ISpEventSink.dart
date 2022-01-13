// ISpEventSink.dart

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
import '../../media/speech/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpEventSink = '{BE7A9CC9-5F9E-11D2-960F-00C04F8EE628}';

/// {@category Interface}
/// {@category com}
class ISpEventSink extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISpEventSink(Pointer<COMObject> ptr) : super(ptr);

  int AddEvents(
    Pointer<SPEVENT> pEventArray,
    int ulCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<SPEVENT> pEventArray,
            Uint32 ulCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<SPEVENT> pEventArray,
            int ulCount,
          )>()(
        ptr.ref.lpVtbl,
        pEventArray,
        ulCount,
      );

  int GetEventInterest(
    Pointer<Uint64> pullEventInterest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pullEventInterest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pullEventInterest,
          )>()(
        ptr.ref.lpVtbl,
        pullEventInterest,
      );
}
