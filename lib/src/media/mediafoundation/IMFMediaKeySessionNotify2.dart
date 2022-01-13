// IMFMediaKeySessionNotify2.dart

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

import '../../media/mediafoundation/IMFMediaKeySessionNotify.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFMediaKeySessionNotify2 = '{C3A9E92A-DA88-46B0-A110-6CF953026CB9}';

/// {@category Interface}
/// {@category com}
class IMFMediaKeySessionNotify2 extends IMFMediaKeySessionNotify {
  // vtable begins at 6, is 2 entries long.
  IMFMediaKeySessionNotify2(Pointer<COMObject> ptr) : super(ptr);

  void KeyMessage2(
    int eMessageType,
    Pointer<Utf16> destinationURL,
    Pointer<Uint8> pbMessage,
    int cbMessage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Int32 eMessageType,
            Pointer<Utf16> destinationURL,
            Pointer<Uint8> pbMessage,
            Uint32 cbMessage,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int eMessageType,
            Pointer<Utf16> destinationURL,
            Pointer<Uint8> pbMessage,
            int cbMessage,
          )>()(
        ptr.ref.lpVtbl,
        eMessageType,
        destinationURL,
        pbMessage,
        cbMessage,
      );

  void KeyStatusChange() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
