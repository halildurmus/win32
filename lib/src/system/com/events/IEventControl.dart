// IEventControl.dart

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
import '../../../system/com/events/IPublisherFilter.dart';
import '../../../system/com/events/IEventObjectCollection.dart';

/// @nodoc
const IID_IEventControl = '{0343E2F4-86F6-11D1-B760-00C04FB926AF}';

/// {@category Interface}
/// {@category com}
class IEventControl extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  IEventControl(Pointer<COMObject> ptr) : super(ptr);

  int SetPublisherFilter(
    Pointer<Utf16> methodName,
    Pointer<COMObject> pPublisherFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> methodName,
            Pointer<COMObject> pPublisherFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> methodName,
            Pointer<COMObject> pPublisherFilter,
          )>()(
        ptr.ref.lpVtbl,
        methodName,
        pPublisherFilter,
      );

  int get AllowInprocActivation {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfAllowInprocActivation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfAllowInprocActivation,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set AllowInprocActivation(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(9)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 fAllowInprocActivation,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int fAllowInprocActivation,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int GetSubscriptions(
    Pointer<Utf16> methodName,
    Pointer<Utf16> optionalCriteria,
    Pointer<Int32> optionalErrorIndex,
    Pointer<Pointer<COMObject>> ppCollection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> methodName,
            Pointer<Utf16> optionalCriteria,
            Pointer<Int32> optionalErrorIndex,
            Pointer<Pointer<COMObject>> ppCollection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> methodName,
            Pointer<Utf16> optionalCriteria,
            Pointer<Int32> optionalErrorIndex,
            Pointer<Pointer<COMObject>> ppCollection,
          )>()(
        ptr.ref.lpVtbl,
        methodName,
        optionalCriteria,
        optionalErrorIndex,
        ppCollection,
      );

  int SetDefaultQuery(
    Pointer<Utf16> methodName,
    Pointer<Utf16> criteria,
    Pointer<Int32> errorIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> methodName,
            Pointer<Utf16> criteria,
            Pointer<Int32> errorIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> methodName,
            Pointer<Utf16> criteria,
            Pointer<Int32> errorIndex,
          )>()(
        ptr.ref.lpVtbl,
        methodName,
        criteria,
        errorIndex,
      );
}
