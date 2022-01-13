// IMFVideoPresenter.dart

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

import '../../media/mediafoundation/IMFClockStateSink.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFVideoMediaType.dart';

/// @nodoc
const IID_IMFVideoPresenter = '{29AFF080-182A-4A5D-AF3B-448F3A6346CB}';

/// {@category Interface}
/// {@category com}
class IMFVideoPresenter extends IMFClockStateSink {
  // vtable begins at 8, is 2 entries long.
  IMFVideoPresenter(Pointer<COMObject> ptr) : super(ptr);

  int ProcessMessage(
    int eMessage,
    int ulParam,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 eMessage,
            IntPtr ulParam,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int eMessage,
            int ulParam,
          )>()(
        ptr.ref.lpVtbl,
        eMessage,
        ulParam,
      );

  int GetCurrentMediaType(
    Pointer<Pointer<COMObject>> ppMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppMediaType,
          )>()(
        ptr.ref.lpVtbl,
        ppMediaType,
      );
}
