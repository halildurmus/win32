// IFsrmClassificationRule.dart

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

import '../../storage/fileserverresourcemanager/IFsrmRule.dart';
import '../../storage/fileserverresourcemanager/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFsrmClassificationRule = '{AFC052C2-5315-45AB-841B-C6DB0E120148}';

/// {@category Interface}
/// {@category com}
class IFsrmClassificationRule extends IFsrmRule {
  // vtable begins at 24, is 6 entries long.
  IFsrmClassificationRule(Pointer<COMObject> ptr) : super(ptr);

  int get ExecutionOption {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> executionOption,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> executionOption,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ExecutionOption(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(25)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 executionOption,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int executionOption,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get PropertyAffected {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> property,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> property,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set PropertyAffected(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(27)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> property,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> property,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  Pointer<Utf16> get Value {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> value,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set Value(Pointer<Utf16> value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(29)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Pointer<Utf16> value,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<Utf16> value,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }
}
