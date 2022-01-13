// ISpeechTextSelectionInformation.dart

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
const IID_ISpeechTextSelectionInformation =
    '{3B9C7E7A-6EEE-4DED-9092-11657279ADBE}';

/// {@category Interface}
/// {@category com}
class ISpeechTextSelectionInformation extends IDispatch {
  // vtable begins at 7, is 8 entries long.
  ISpeechTextSelectionInformation(Pointer<COMObject> ptr) : super(ptr);

  set ActiveOffset(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 ActiveOffset,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int ActiveOffset,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get ActiveOffset {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> ActiveOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> ActiveOffset,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set ActiveLength(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(9)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 ActiveLength,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int ActiveLength,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get ActiveLength {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> ActiveLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> ActiveLength,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set SelectionOffset(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 SelectionOffset,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int SelectionOffset,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get SelectionOffset {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> SelectionOffset,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> SelectionOffset,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set SelectionLength(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(13)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 SelectionLength,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int SelectionLength,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get SelectionLength {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> SelectionLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> SelectionLength,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
