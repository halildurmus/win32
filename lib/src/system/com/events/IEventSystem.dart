// IEventSystem.dart

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
const IID_IEventSystem = '{4E14FB9F-2E22-11D1-9964-00C04FBBB345}';

/// {@category Interface}
/// {@category com}
class IEventSystem extends IDispatch {
  // vtable begins at 7, is 6 entries long.
  IEventSystem(Pointer<COMObject> ptr) : super(ptr);

  int Query(
    Pointer<Utf16> progID,
    Pointer<Utf16> queryCriteria,
    Pointer<Int32> errorIndex,
    Pointer<Pointer<COMObject>> ppInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> progID,
            Pointer<Utf16> queryCriteria,
            Pointer<Int32> errorIndex,
            Pointer<Pointer<COMObject>> ppInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> progID,
            Pointer<Utf16> queryCriteria,
            Pointer<Int32> errorIndex,
            Pointer<Pointer<COMObject>> ppInterface,
          )>()(
        ptr.ref.lpVtbl,
        progID,
        queryCriteria,
        errorIndex,
        ppInterface,
      );

  int Store(
    Pointer<Utf16> ProgID,
    Pointer<COMObject> pInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ProgID,
            Pointer<COMObject> pInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ProgID,
            Pointer<COMObject> pInterface,
          )>()(
        ptr.ref.lpVtbl,
        ProgID,
        pInterface,
      );

  int Remove(
    Pointer<Utf16> progID,
    Pointer<Utf16> queryCriteria,
    Pointer<Int32> errorIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> progID,
            Pointer<Utf16> queryCriteria,
            Pointer<Int32> errorIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> progID,
            Pointer<Utf16> queryCriteria,
            Pointer<Int32> errorIndex,
          )>()(
        ptr.ref.lpVtbl,
        progID,
        queryCriteria,
        errorIndex,
      );

  Pointer<Utf16> get EventObjectChangeEventClassID {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrEventClassID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrEventClassID,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int QueryS(
    Pointer<Utf16> progID,
    Pointer<Utf16> queryCriteria,
    Pointer<Pointer<COMObject>> ppInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> progID,
            Pointer<Utf16> queryCriteria,
            Pointer<Pointer<COMObject>> ppInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> progID,
            Pointer<Utf16> queryCriteria,
            Pointer<Pointer<COMObject>> ppInterface,
          )>()(
        ptr.ref.lpVtbl,
        progID,
        queryCriteria,
        ppInterface,
      );

  int RemoveS(
    Pointer<Utf16> progID,
    Pointer<Utf16> queryCriteria,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> progID,
            Pointer<Utf16> queryCriteria,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> progID,
            Pointer<Utf16> queryCriteria,
          )>()(
        ptr.ref.lpVtbl,
        progID,
        queryCriteria,
      );
}
