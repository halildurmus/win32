// IBDA_DiseqCommand.dart

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

/// @nodoc
const IID_IBDA_DiseqCommand = '{F84E2AB0-3C6B-45E3-A0FC-8669D4B81F11}';

/// {@category Interface}
/// {@category com}
class IBDA_DiseqCommand extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IBDA_DiseqCommand(Pointer<COMObject> ptr) : super(ptr);

  set EnableDiseqCommands(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(3)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint8 bEnable,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bEnable,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set DiseqLNBSource(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(4)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 ulLNBSource,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int ulLNBSource,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set DiseqUseToneBurst(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(5)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint8 bUseToneBurst,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int bUseToneBurst,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  set DiseqRepeats(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Uint32 ulRepeats,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int ulRepeats,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int put_DiseqSendCommand(
    int ulRequestId,
    int ulcbCommandLen,
    Pointer<Uint8> pbCommand,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulRequestId,
            Uint32 ulcbCommandLen,
            Pointer<Uint8> pbCommand,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulRequestId,
            int ulcbCommandLen,
            Pointer<Uint8> pbCommand,
          )>()(
        ptr.ref.lpVtbl,
        ulRequestId,
        ulcbCommandLen,
        pbCommand,
      );

  int get_DiseqResponse(
    int ulRequestId,
    Pointer<Uint32> pulcbResponseLen,
    Pointer<Uint8> pbResponse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulRequestId,
            Pointer<Uint32> pulcbResponseLen,
            Pointer<Uint8> pbResponse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulRequestId,
            Pointer<Uint32> pulcbResponseLen,
            Pointer<Uint8> pbResponse,
          )>()(
        ptr.ref.lpVtbl,
        ulRequestId,
        pulcbResponseLen,
        pbResponse,
      );
}
