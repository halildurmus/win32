// IMFMediaError.dart

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
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_IMFMediaError = '{FC0E10D2-AB2A-4501-A951-06BB1075184C}';

/// {@category Interface}
/// {@category com}
class IMFMediaError extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMFMediaError(Pointer<COMObject> ptr) : super(ptr);

  int GetErrorCode() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint16 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetExtendedErrorCode() => ptr.ref.lpVtbl.value
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

  int SetErrorCode(
    int error,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 error,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int error,
          )>()(
        ptr.ref.lpVtbl,
        error,
      );

  int SetExtendedErrorCode(
    int error,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 error,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int error,
          )>()(
        ptr.ref.lpVtbl,
        error,
      );
}
