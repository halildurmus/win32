// IDebugHostType2.dart

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

import '../../../system/diagnostics/debug/IDebugHostType.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugHostType2.dart';
import '../../../system/diagnostics/debug/structs.g.dart';

/// @nodoc
const IID_IDebugHostType2 = '{B28632B9-8506-4676-87CE-8F7E05E59876}';

/// {@category Interface}
/// {@category com}
class IDebugHostType2 extends IDebugHostType {
  // vtable begins at 29, is 5 entries long.
  IDebugHostType2(Pointer<COMObject> ptr) : super(ptr);

  int IsTypedef(
    Pointer<Bool> isTypedef,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Bool> isTypedef,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Bool> isTypedef,
          )>()(
        ptr.ref.lpVtbl,
        isTypedef,
      );

  int GetTypedefBaseType(
    Pointer<Pointer<COMObject>> baseType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> baseType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> baseType,
          )>()(
        ptr.ref.lpVtbl,
        baseType,
      );

  int GetTypedefFinalBaseType(
    Pointer<Pointer<COMObject>> finalBaseType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> finalBaseType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> finalBaseType,
          )>()(
        ptr.ref.lpVtbl,
        finalBaseType,
      );

  int GetFunctionVarArgsKind(
    Pointer<Int32> varArgsKind,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> varArgsKind,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> varArgsKind,
          )>()(
        ptr.ref.lpVtbl,
        varArgsKind,
      );

  int GetFunctionInstancePointerType(
    Pointer<Pointer<COMObject>> instancePointerType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> instancePointerType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> instancePointerType,
          )>()(
        ptr.ref.lpVtbl,
        instancePointerType,
      );
}
