// ITLegacyCallMediaControl.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITLegacyCallMediaControl = '{D624582F-CC23-4436-B8A5-47C625C8045D}';

/// {@category Interface}
/// {@category com}
class ITLegacyCallMediaControl extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  ITLegacyCallMediaControl(Pointer<COMObject> ptr) : super(ptr);

  int DetectDigits(
    int DigitMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 DigitMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int DigitMode,
          )>()(
        ptr.ref.lpVtbl,
        DigitMode,
      );

  int GenerateDigits(
    Pointer<Utf16> pDigits,
    int DigitMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pDigits,
            Int32 DigitMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pDigits,
            int DigitMode,
          )>()(
        ptr.ref.lpVtbl,
        pDigits,
        DigitMode,
      );

  int GetID(
    Pointer<Utf16> pDeviceClass,
    Pointer<Uint32> pdwSize,
    Pointer<Pointer<Uint8>> ppDeviceID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pDeviceClass,
            Pointer<Uint32> pdwSize,
            Pointer<Pointer<Uint8>> ppDeviceID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pDeviceClass,
            Pointer<Uint32> pdwSize,
            Pointer<Pointer<Uint8>> ppDeviceID,
          )>()(
        ptr.ref.lpVtbl,
        pDeviceClass,
        pdwSize,
        ppDeviceID,
      );

  int SetMediaType(
    int lMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lMediaType,
          )>()(
        ptr.ref.lpVtbl,
        lMediaType,
      );

  int MonitorMedia(
    int lMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lMediaType,
          )>()(
        ptr.ref.lpVtbl,
        lMediaType,
      );
}
