// ISdo.dart

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

/// @nodoc
const IID_ISdo = '{56BC53DE-96DB-11D1-BF3F-000000000000}';

/// {@category Interface}
/// {@category com}
class ISdo extends IDispatch {
  // vtable begins at 7, is 7 entries long.
  ISdo(Pointer<COMObject> ptr) : super(ptr);

  int GetPropertyInfo(
    int Id,
    Pointer<Pointer<COMObject>> ppPropertyInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Id,
            Pointer<Pointer<COMObject>> ppPropertyInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Id,
            Pointer<Pointer<COMObject>> ppPropertyInfo,
          )>()(
        ptr.ref.lpVtbl,
        Id,
        ppPropertyInfo,
      );

  int GetProperty(
    int Id,
    Pointer<VARIANT> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Id,
            Pointer<VARIANT> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Id,
            Pointer<VARIANT> pValue,
          )>()(
        ptr.ref.lpVtbl,
        Id,
        pValue,
      );

  int PutProperty(
    int Id,
    Pointer<VARIANT> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Id,
            Pointer<VARIANT> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Id,
            Pointer<VARIANT> pValue,
          )>()(
        ptr.ref.lpVtbl,
        Id,
        pValue,
      );

  int ResetProperty(
    int Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Id,
          )>()(
        ptr.ref.lpVtbl,
        Id,
      );

  int Apply() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int Restore() => ptr.ref.lpVtbl.value
          .elementAt(12)
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

  Pointer<COMObject> get NewEnum {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumVARIANT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnumVARIANT,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
