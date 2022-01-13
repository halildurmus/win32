// IMFContentDecryptionModuleSessionCallbacks.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFContentDecryptionModuleSessionCallbacks =
    '{3F96EE40-AD81-4096-8470-59A4B770F89A}';

/// {@category Interface}
/// {@category com}
class IMFContentDecryptionModuleSessionCallbacks extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFContentDecryptionModuleSessionCallbacks(Pointer<COMObject> ptr)
      : super(ptr);

  int KeyMessage(
    int messageType,
    Pointer<Uint8> message,
    int messageSize,
    Pointer<Utf16> destinationURL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 messageType,
            Pointer<Uint8> message,
            Uint32 messageSize,
            Pointer<Utf16> destinationURL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int messageType,
            Pointer<Uint8> message,
            int messageSize,
            Pointer<Utf16> destinationURL,
          )>()(
        ptr.ref.lpVtbl,
        messageType,
        message,
        messageSize,
        destinationURL,
      );

  int KeyStatusChanged() => ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
