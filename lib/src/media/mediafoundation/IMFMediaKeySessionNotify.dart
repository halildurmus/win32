// IMFMediaKeySessionNotify.dart

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
const IID_IMFMediaKeySessionNotify = '{6A0083F9-8947-4C1D-9CE0-CDEE22B23135}';

/// {@category Interface}
/// {@category com}
class IMFMediaKeySessionNotify extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IMFMediaKeySessionNotify(Pointer<COMObject> ptr) : super(ptr);

  void KeyMessage(
    Pointer<Utf16> destinationURL,
    Pointer<Uint8> message,
    int cb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Utf16> destinationURL,
            Pointer<Uint8> message,
            Uint32 cb,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Utf16> destinationURL,
            Pointer<Uint8> message,
            int cb,
          )>()(
        ptr.ref.lpVtbl,
        destinationURL,
        message,
        cb,
      );

  void KeyAdded() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  void KeyError(
    int code,
    int systemCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint16 code,
            Uint32 systemCode,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int code,
            int systemCode,
          )>()(
        ptr.ref.lpVtbl,
        code,
        systemCode,
      );
}
