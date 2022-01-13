// ICertExit.dart

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

import '../../../system/com/IDispatch.dart';
import '../../../foundation/structs.g.dart';
import '../../../security/cryptography/certificates/structs.g.dart';

/// @nodoc
const IID_ICertExit = '{E19AE1A0-7364-11D0-8816-00A0C903B83C}';

/// {@category Interface}
/// {@category com}
class ICertExit extends IDispatch {
  // vtable begins at 7, is 3 entries long.
  ICertExit(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> strConfig,
    Pointer<Uint32> pEventMask,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Uint32> pEventMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Pointer<Uint32> pEventMask,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        pEventMask,
      );

  int Notify(
    int ExitEvent,
    int Context,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 ExitEvent,
            Int32 Context,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ExitEvent,
            int Context,
          )>()(
        ptr.ref.lpVtbl,
        ExitEvent,
        Context,
      );

  int GetDescription(
    Pointer<Pointer<Utf16>> pstrDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstrDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pstrDescription,
          )>()(
        ptr.ref.lpVtbl,
        pstrDescription,
      );
}
