// IDxcOptimizerPass.dart

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

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDxcOptimizerPass = '{AE2CD79F-CC22-453F-9B6B-B124E7A5204C}';

/// {@category Interface}
/// {@category com}
class IDxcOptimizerPass extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDxcOptimizerPass(Pointer<COMObject> ptr) : super(ptr);

  int GetOptionName(
    Pointer<Pointer<Utf16>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        ppResult,
      );

  int GetDescription(
    Pointer<Pointer<Utf16>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        ppResult,
      );

  int GetOptionArgCount(
    Pointer<Uint32> pCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pCount,
          )>()(
        ptr.ref.lpVtbl,
        pCount,
      );

  int GetOptionArgName(
    int argIndex,
    Pointer<Pointer<Utf16>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 argIndex,
            Pointer<Pointer<Utf16>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int argIndex,
            Pointer<Pointer<Utf16>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        argIndex,
        ppResult,
      );

  int GetOptionArgDescription(
    int argIndex,
    Pointer<Pointer<Utf16>> ppResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 argIndex,
            Pointer<Pointer<Utf16>> ppResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int argIndex,
            Pointer<Pointer<Utf16>> ppResult,
          )>()(
        ptr.ref.lpVtbl,
        argIndex,
        ppResult,
      );
}
