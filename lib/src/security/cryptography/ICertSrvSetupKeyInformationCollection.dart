// ICertSrvSetupKeyInformationCollection.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../security/cryptography/ICertSrvSetupKeyInformation.dart';

/// @nodoc
const IID_ICertSrvSetupKeyInformationCollection =
    '{E65C8B00-E58F-41F9-A9EC-A28D7427C844}';

/// {@category Interface}
/// {@category com}
class ICertSrvSetupKeyInformationCollection extends IDispatch {
  // vtable begins at 7, is 4 entries long.
  ICertSrvSetupKeyInformationCollection(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Item(
    int Index,
    Pointer<VARIANT> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Index,
            Pointer<VARIANT> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Index,
            Pointer<VARIANT> pVal,
          )>()(
        ptr.ref.lpVtbl,
        Index,
        pVal,
      );

  int get Count {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int Add(
    Pointer<COMObject> pIKeyInformation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIKeyInformation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIKeyInformation,
          )>()(
        ptr.ref.lpVtbl,
        pIKeyInformation,
      );
}
