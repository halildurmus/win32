// ICertPolicy.dart

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

/// @nodoc
const IID_ICertPolicy = '{38BB5A00-7636-11D0-B413-00A0C91BBF8C}';

/// {@category Interface}
/// {@category com}
class ICertPolicy extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  ICertPolicy(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> strConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
      );

  int VerifyRequest(
    Pointer<Utf16> strConfig,
    int Context,
    int bNewRequest,
    int Flags,
    Pointer<Int32> pDisposition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> strConfig,
            Int32 Context,
            Int32 bNewRequest,
            Int32 Flags,
            Pointer<Int32> pDisposition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> strConfig,
            int Context,
            int bNewRequest,
            int Flags,
            Pointer<Int32> pDisposition,
          )>()(
        ptr.ref.lpVtbl,
        strConfig,
        Context,
        bNewRequest,
        Flags,
        pDisposition,
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

  int ShutDown() => ptr.ref.lpVtbl.value
          .elementAt(10)
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
