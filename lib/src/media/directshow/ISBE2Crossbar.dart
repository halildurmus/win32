// ISBE2Crossbar.dart

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
import '../../media/directshow/ISBE2MediaTypeProfile.dart';
import '../../media/directshow/IPin.dart';
import '../../media/directshow/ISBE2EnumStream.dart';

/// @nodoc
const IID_ISBE2Crossbar = '{547B6D26-3226-487E-8253-8AA168749434}';

/// {@category Interface}
/// {@category com}
class ISBE2Crossbar extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISBE2Crossbar(Pointer<COMObject> ptr) : super(ptr);

  int EnableDefaultMode(
    int DefaultFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 DefaultFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int DefaultFlags,
          )>()(
        ptr.ref.lpVtbl,
        DefaultFlags,
      );

  int GetInitialProfile(
    Pointer<Pointer<COMObject>> ppProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppProfile,
          )>()(
        ptr.ref.lpVtbl,
        ppProfile,
      );

  int SetOutputProfile(
    Pointer<COMObject> pProfile,
    Pointer<Uint32> pcOutputPins,
    Pointer<Pointer<COMObject>> ppOutputPins,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProfile,
            Pointer<Uint32> pcOutputPins,
            Pointer<Pointer<COMObject>> ppOutputPins,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProfile,
            Pointer<Uint32> pcOutputPins,
            Pointer<Pointer<COMObject>> ppOutputPins,
          )>()(
        ptr.ref.lpVtbl,
        pProfile,
        pcOutputPins,
        ppOutputPins,
      );

  int EnumStreams(
    Pointer<Pointer<COMObject>> ppStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppStreams,
          )>()(
        ptr.ref.lpVtbl,
        ppStreams,
      );
}
