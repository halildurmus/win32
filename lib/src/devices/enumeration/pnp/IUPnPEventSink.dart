// IUPnPEventSink.dart

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
import '../../../specialTypes.dart';

/// @nodoc
const IID_IUPnPEventSink = '{204810B4-73B2-11D4-BF42-00B0D0118B56}';

/// {@category Interface}
/// {@category com}
class IUPnPEventSink extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUPnPEventSink(Pointer<COMObject> ptr) : super(ptr);

  int OnStateChanged(
    int cChanges,
    Pointer<Int32> rgdispidChanges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cChanges,
            Pointer<Int32> rgdispidChanges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cChanges,
            Pointer<Int32> rgdispidChanges,
          )>()(
        ptr.ref.lpVtbl,
        cChanges,
        rgdispidChanges,
      );

  int OnStateChangedSafe(
    VARIANT varsadispidChanges,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT varsadispidChanges,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT varsadispidChanges,
          )>()(
        ptr.ref.lpVtbl,
        varsadispidChanges,
      );
}
