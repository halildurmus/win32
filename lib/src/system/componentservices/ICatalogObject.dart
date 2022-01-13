// ICatalogObject.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_ICatalogObject = '{6EB22871-8A19-11D0-81B6-00A0C9231C29}';

/// {@category Interface}
/// {@category com}
class ICatalogObject extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  ICatalogObject(Pointer<COMObject> ptr) : super(ptr);

  int get_Value(
    Pointer<Utf16> bstrPropName,
    Pointer<VARIANT> pvarRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPropName,
            Pointer<VARIANT> pvarRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPropName,
            Pointer<VARIANT> pvarRetVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrPropName,
        pvarRetVal,
      );

  int put_Value(
    Pointer<Utf16> bstrPropName,
    VARIANT val,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPropName,
            VARIANT val,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPropName,
            VARIANT val,
          )>()(
        ptr.ref.lpVtbl,
        bstrPropName,
        val,
      );

  VARIANT get Key {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarRetVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  VARIANT get Name {
    final retValuePtr = calloc<VARIANT>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarRetVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.ref;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int IsPropertyReadOnly(
    Pointer<Utf16> bstrPropName,
    Pointer<Int16> pbRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPropName,
            Pointer<Int16> pbRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPropName,
            Pointer<Int16> pbRetVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrPropName,
        pbRetVal,
      );

  int get Valid {
    final retValuePtr = calloc<Int16>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pbRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pbRetVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int IsPropertyWriteOnly(
    Pointer<Utf16> bstrPropName,
    Pointer<Int16> pbRetVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPropName,
            Pointer<Int16> pbRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPropName,
            Pointer<Int16> pbRetVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrPropName,
        pbRetVal,
      );
}
