// ITaskVariables.dart

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
const IID_ITaskVariables = '{3E4C9351-D966-4B8B-BB87-CEBA68BB0107}';

/// {@category Interface}
/// {@category com}
class ITaskVariables extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ITaskVariables(Pointer<COMObject> ptr) : super(ptr);

  int GetInput(
    Pointer<Pointer<Utf16>> pInput,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pInput,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pInput,
          )>()(
        ptr.ref.lpVtbl,
        pInput,
      );

  int SetOutput(
    Pointer<Utf16> input,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> input,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> input,
          )>()(
        ptr.ref.lpVtbl,
        input,
      );

  int GetContext(
    Pointer<Pointer<Utf16>> pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pContext,
          )>()(
        ptr.ref.lpVtbl,
        pContext,
      );
}
