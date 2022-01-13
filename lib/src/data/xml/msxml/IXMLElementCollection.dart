// IXMLElementCollection.dart

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
import '../../../specialTypes.dart';

/// @nodoc
const IID_IXMLElementCollection = '{65725580-9B5D-11D0-9BFE-00C04FC99C8E}';

/// {@category Interface}
/// {@category com}
class IXMLElementCollection extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  IXMLElementCollection(Pointer<COMObject> ptr) : super(ptr);

  set length(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 v,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int v,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get length {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> p,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> p,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<COMObject> get newEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppUnk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppUnk,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int item(
    VARIANT var1,
    VARIANT var2,
    Pointer<Pointer<COMObject>> ppDisp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT var1,
            VARIANT var2,
            Pointer<Pointer<COMObject>> ppDisp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT var1,
            VARIANT var2,
            Pointer<Pointer<COMObject>> ppDisp,
          )>()(
        ptr.ref.lpVtbl,
        var1,
        var2,
        ppDisp,
      );
}
