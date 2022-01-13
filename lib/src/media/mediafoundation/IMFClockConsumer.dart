// IMFClockConsumer.dart

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
import '../../media/mediafoundation/IMFPresentationClock.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFClockConsumer = '{6EF2A662-47C0-4666-B13D-CBB717F2FA2C}';

/// {@category Interface}
/// {@category com}
class IMFClockConsumer extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFClockConsumer(Pointer<COMObject> ptr) : super(ptr);

  int SetPresentationClock(
    Pointer<COMObject> pPresentationClock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPresentationClock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPresentationClock,
          )>()(
        ptr.ref.lpVtbl,
        pPresentationClock,
      );

  int GetPresentationClock(
    Pointer<Pointer<COMObject>> ppPresentationClock,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPresentationClock,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppPresentationClock,
          )>()(
        ptr.ref.lpVtbl,
        ppPresentationClock,
      );
}
