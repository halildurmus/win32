// ISpEventSource2.dart

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

import '../../media/speech/ISpEventSource.dart';
import '../../media/speech/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpEventSource2 = '{2373A435-6A4B-429E-A6AC-D4231A61975B}';

/// {@category Interface}
/// {@category com}
class ISpEventSource2 extends ISpEventSource {
  // vtable begins at 13, is 1 entries long.
  ISpEventSource2(Pointer<COMObject> ptr) : super(ptr);

  int GetEventsEx(
    int ulCount,
    Pointer<SPEVENTEX> pEventArray,
    Pointer<Uint32> pulFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulCount,
            Pointer<SPEVENTEX> pEventArray,
            Pointer<Uint32> pulFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulCount,
            Pointer<SPEVENTEX> pEventArray,
            Pointer<Uint32> pulFetched,
          )>()(
        ptr.ref.lpVtbl,
        ulCount,
        pEventArray,
        pulFetched,
      );
}
